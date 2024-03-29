package ru.javabegin.training.library.spring.auth;


import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

// дополнительный обработчик при неудачном входе в систему
@Component
public class AuthHandler implements AuthenticationFailureHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();


    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            // добавить атрибут, чтобы отобразить ошибку на главной странице
            session.setAttribute("loginFailed", "login failed");
        }

        if (response.isCommitted()) {
            return;
        }

        redirectStrategy.sendRedirect(request, response, "/index.xhtml");

    }


}
