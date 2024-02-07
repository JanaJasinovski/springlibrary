package ru.javabegin.training.library;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
//@ComponentScan(basePackages = {"ru.javabegin.training.library"})
public class SpringlibraryApplication extends SpringBootServletInitializer {
    public static void main(String[] args) {
        SpringApplication.run(SpringlibraryApplication.class, args);
    }

}
