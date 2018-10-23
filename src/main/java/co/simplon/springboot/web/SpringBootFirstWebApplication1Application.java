package co.simplon.springboot.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("co.simplon.springboot.web")
public class SpringBootFirstWebApplication1Application 
{
	public static void main(String[] args) 
	{
		SpringApplication.run(SpringBootFirstWebApplication1Application.class, args);
	}
}