package com.mx.eglobal;
import org.springframework.context.annotation.*;

@Configuration
public class CalculadoraConfig{

    @Bean
    public Calculadora calculadora(){
        return new Calculadora();
    }
}
