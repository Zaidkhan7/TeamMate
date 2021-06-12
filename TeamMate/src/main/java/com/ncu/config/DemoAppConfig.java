package com.ncu.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.ncu.jdbc.JdbcClass;
import com.ncu.jdbc.JdbcInterface;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages="com.ncu")
@PropertySource("classpath:mysql.properties")
public class DemoAppConfig {
	
	@Bean
	public ViewResolver viewresolver()
	{
		InternalResourceViewResolver viewresolver = new InternalResourceViewResolver();
		
		viewresolver.setPrefix("/WEB-INF/jsp/");
		viewresolver.setSuffix(".jsp");
		
		return viewresolver;
	}
	
	@Autowired
	Environment en;
	
	@Bean
	public DataSource datasource()
	{
		DriverManagerDataSource dmds = new DriverManagerDataSource();
		
		dmds.setDriverClassName(en.getProperty("driverClassName"));
		dmds.setUrl(en.getProperty("url"));
		dmds.setUsername("root");
		dmds.setPassword(en.getProperty("password"));
		
		return dmds;
		
	}
	
	@Bean
	 public JdbcTemplate applicationDataConnection(){
	        return new JdbcTemplate(datasource());
	    }
	
	
	

}

