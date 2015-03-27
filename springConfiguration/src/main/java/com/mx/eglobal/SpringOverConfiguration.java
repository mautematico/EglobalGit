package com.mx.eglobal;

import com.mx.eglobal.Calculadora;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.ApplicationContext;

/**
 * 
 *
 */
public class SpringOverConfiguration {

    public static void main( String[] args ){
    
        ApplicationContext context = new ClassPathXmlApplicationContext("SpringOverConfiguration.xml");
        
        //Calculadora calcBean = (Calculadora) context.getBean("calculadoraCI_1Bean"); 
        //Calculadora calcBean = (Calculadora) context.getBean("calculadoraCI_2Bean"); 
        
        
        //Calculadora calcBean = (Calculadora) context.getBean("calculadoraSE_1Bean"); 
        //Calculadora calcBean = (Calculadora) context.getBean("calculadoraSE_2Bean"); 
        
        Calculadora calcBean = (Calculadora) context.getBean("calculadoraSE_3Bean"); 
        
        System.out.println("Eval: " + calcBean.getEvalData().checkParams(10,10) );
        System.out.println( "Suma: " + calcBean.suma() );;
    
    
    }
}
