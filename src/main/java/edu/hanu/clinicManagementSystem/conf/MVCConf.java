package edu.hanu.clinicManagementSystem.conf;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableAutoConfiguration
public class MVCConf implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/user/");
		registry.addResourceHandler("/admin/**").addResourceLocations("classpath:/admin/");
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + "C:/upload/");
//	    registry.addResourceHandler("/WEB-INF/views/**").addResourceLocations("classpath:/META-INF/resources/WEB-INF/views/");
	}
	
//	@Bean
//	public ViewResolver viewResolver() {
//		InternalResourceViewResolver bean = new InternalResourceViewResolver();
//		bean.setViewClass(JstlView.class);
//		bean.setPrefix("/WEB-INF/views/");
//		bean.setSuffix(".jsp");
//		return bean;
//	}
	
	 @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
	
}
