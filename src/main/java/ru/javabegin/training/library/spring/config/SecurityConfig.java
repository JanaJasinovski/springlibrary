package ru.javabegin.training.library.spring.config;

import jakarta.servlet.FilterChain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import ru.javabegin.training.library.spring.auth.AuthHandler;

import javax.sql.DataSource;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebSecurity
public class SecurityConfig { // класс для настройки безопасности приложения

    @Autowired
    private AuthHandler authHandler; // дополнительный обработчик при неудачном входе в систему

    @Autowired
    private DataSource dataSource;// этот бин создает автоматичеки spring boot, поэтому мы просто его используем

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery(
                        "select username,password,enabled from library.user where username = ?")
                .authoritiesByUsernameQuery(
                        "select username, role from library.user_roles where username = ?").passwordEncoder(passwordEncoder());
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        // настройка ограничений доступа к страницам
        http.authorizeHttpRequests(auth -> auth
                        .requestMatchers("/**").permitAll()
                        .requestMatchers("/pages/spr.xhtml").hasRole("ADMIN")// здесь автоматически будет добавлен префикс ROLE_,  поэтому указываем название роли без него
                        .requestMatchers("/pages/books.xhtml").hasAnyRole("ADMIN", "USER")// здесь автоматически будет добавлен префикс ROLE_,  поэтому указываем название роли без него
                        .anyRequest().authenticated()
                )

                .exceptionHandling(withDefaults()) //.accessDeniedPage("/index.xhtml")// при ошибке доступа - будет перенправляться на страницу с книгами

                .csrf(AbstractHttpConfigurer::disable)

                // окно аутентификации
                .formLogin(formLogin ->
                        formLogin
                                .loginPage("/index.xhtml")
                                .permitAll()
                                .failureHandler(authHandler)
                                .defaultSuccessUrl("/pages/books.xhtml")
                                .loginProcessingUrl("/login")
                                .passwordParameter("password")
                                .usernameParameter("username")
                )

                // настройка выхода пользователя из системы
                .logout(lOut -> {
                    lOut.invalidateHttpSession(true)

                            .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                            .logoutSuccessUrl("/index.xhtml")
                            .deleteCookies("JSESSIONID", "SPRING_SECURITY_REMEMBER_ME_COOKIE")
                            .invalidateHttpSession(true);
                });
        http.httpBasic(withDefaults());

        return http.build();


    }
}