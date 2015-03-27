package com.mx.eglobal;

/**
 * Evaluator
 *
 */
public class Evaluator{
    
    public String checkParams( int valA, int valB ){/*{{{*/
        if( valA == 0 && valB == 0 ){
            return "Error no cero values allowed";
        }else{
            return "OK you pass";
        }
    }/*}}}*/

}
