package com.codingdojo.proyecto.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.codingdojo.proyecto.services.ServicioDetalleUsuario;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

    @Autowired
    private ServicioDetalleUsuario servicio_detalle;

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.csrf().disable()
            .authorizeRequests()
            	.antMatchers("/css/", "js/", "/", "/blog", "/registration", "/post", "/apadrina", "/adopta", "/tienda", "/info", "/email", "/enviar/email").permitAll()            	
            	.antMatchers("/css/", "js/", "/", "/blog", "/registration", "/post").permitAll()
                .antMatchers("/css/", "js/", "/admins", "/pet/{pet}","/admins/add/product/allproduct").access("hasRole('ROLE_ADMIN')")
//                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/login")
                .permitAll()
                .and()
            .logout()
                .permitAll();    	
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(servicio_detalle).passwordEncoder(bCryptPasswordEncoder());
    }
}
