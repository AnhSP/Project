package com.anhsp.hosinghong.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.session.security.web.authentication.SpringSessionRememberMeServices;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {



    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                 .authorizeHttpRequests(authorize -> authorize
                 .anyRequest().permitAll());
//                .authorizeHttpRequests(authorize -> authorize
//                        .dispatcherTypeMatchers(DispatcherType.FORWARD,
//                                DispatcherType.INCLUDE)
//                        .permitAll()
//                        .requestMatchers("/", "/login","/register", "/client/**",
//                                "/product/**","/products/**","/css/**", "/js/**", "/images/**")
//                        .permitAll()
//                        .requestMatchers("/admin/**").hasRole("ADMIN")
//                        .anyRequest().authenticated())
//
////                .formLogin(formLogin -> formLogin
////                        .loginPage("/login")
////                        .failureUrl("/login?error")
////                        .permitAll())
////                .logout(logout -> logout.logoutSuccessUrl("/"))
//                .exceptionHandling(ex -> ex.accessDeniedPage("/access-deny"));


        return http.build();
    }

}
