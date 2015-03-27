package com.mx.eglobal;

/**
 * 
 *
 */
public class Calculadora{
    private int valA;
    private int valB;
    private Evaluator evalData;


    public Calculadora(){/*{{{*/
        this.valA = 0;
        this.valB = 0;
    }/*}}}*/
    public Calculadora(int valA, int  valB){/*{{{*/
        this.valA = valA;
        this.valB = valB;
    }/*}}}*/

    public void setEvalData( Evaluator evalData ){/*{{{*/
        this.evalData = evalData;
    }/*}}}*/
    public Evaluator getEvalData(){/*{{{*/
        return this.evalData;
    }/*}}}*/
    public int suma(){/*{{{*/
        return valA + valB;
    }/*}}}*/
    public int resta(){/*{{{*/
        return valA - valB;
    }/*}}}*/
    public int multiplicacion(){/*{{{*/
        return valA * valB;
    }/*}}}*/

    public void setValA(int valA ){/*{{{*/
        this.valA = valA;    
    }/*}}}*/
    public void setValB(int valB ){/*{{{*/
        this.valB = valB;    
    }/*}}}*/


    public String toString(){
        return "ValA: " + this.valA + " -- ValB: " + this.valB;
    }

}
