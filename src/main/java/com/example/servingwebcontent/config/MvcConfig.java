package com.example.servingwebcontent.config;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")// для того что бы раздовать с сайта, храниться путь
    private String uploadPath;

    public void addViewControllers(ViewControllerRegistry registry) {

        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img/**")//для картинок путь /img/**, после ** - следует название картинки
                .addResourceLocations("file://" + uploadPath + "/");
        registry.addResourceHandler("/static/**")//при обращение по пути /static/** ресурсы будут искаться ни где в файловой системе а будет искать именно эту папку
                .addResourceLocations("classpath:/static/");
    }
}
