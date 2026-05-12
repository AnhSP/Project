package com.anhsp.hosinghong.config;

import jakarta.servlet.Filter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class AppFilter {
    @Bean
    public Filter sitemeshFilter() {
        return new MySiteMeshFilter();
    }

}
