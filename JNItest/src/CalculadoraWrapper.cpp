#include <JniCalculadoraWrapper.h>
#include <Calculadora.h>

Calculadora *calc;

JNIEXPORT void JNICALL Java_com_mx_eglobal_JniCalculadoraWrapper_load
  (JNIEnv *env, jobject obj, jint valA, jint valB){
  	calc = new Calculadora(valA, valB);
  }

  JNIEXPORT jint JNICALL Java_com_mx_eglobal_JniCalculadoraWrapper_suma
  (JNIEnv *env, jobject obj){
  	jint result =-1;
  	result = calc->suma();
  	return result;
  }

  JNIEXPORT jint JNICALL Java_com_mx_eglobal_JniCalculadoraWrapper_resta
  (JNIEnv *env, jobject){
  	jint result=-1;
  	result = calc->resta();
  	return result;
  }

  JNIEXPORT jint JNICALL Java_com_mx_eglobal_JniCalculadoraWrapper_multiplica
  (JNIEnv *env, jobject){
  	jint result = -1;
  	result = calc->multiplica();
  	return result;
  }
