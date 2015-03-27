package com.mx.eglobal;

import com.mx.eglobal.Calculadora;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.*;

public class SpringOverAnnotation{
    public static void main( String[] args ){
        
         ApplicationContext ctx = new AnnotationConfigApplicationContext(CalculadoraConfig.class);
         Calculadora calc = ctx.getBean(Calculadora.class);
        
         System.out.println("Suma: "+ calc.suma() );


    }
}
