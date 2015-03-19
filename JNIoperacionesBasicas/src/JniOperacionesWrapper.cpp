#include <JniOperacionesWrapper.h>
#include <Operaciones.h>

Operaciones *ops;

//constructor
JNIEXPORT void JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_load(JNIEnv *env, jobject obj){
  		ops = new Operaciones();
  }
//media
JNIEXPORT jfloat JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_media(JNIEnv *env, jobject obj, jintArray listaEnteros, jint tam){
  	jfloat result;
    int * Nativ_listaEnteros = env->GetIntArrayElements(listaEnteros,0);
  	result = ops->media(Nativ_listaEnteros, (int) tam);
    return result;
  }
//producto punto
JNIEXPORT jint JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_productoPunto(JNIEnv *env, jobject obj, jintArray m1, jintArray m2, jint tam){
    int * Nativ_m1 = env->GetIntArrayElements(m1,0);
    int * Nativ_m2 = env->GetIntArrayElements(m2,0);
  	int native_Resul = ops->productoPunto(Nativ_m1, Nativ_m2, (int) tam);
    return native_Resul;
  }
//maxMin
JNIEXPORT jintArray JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_maxMin(JNIEnv *env, jobject obj, jintArray listaEnteros, jint tam, jintArray maxMin){
    int * Nativ_maxMin[2];
    int * Nativ_listaEnteros = env->GetIntArrayElements(listaEnteros,0);
    int * maxMinPtr=ops->maxMin(Nativ_listaEnteros, tam, (int *) Nativ_maxMin);
    jintArray result = env->NewIntArray(2);
    jint element[2];
    element[0]= maxMinPtr[0];
    element[1]= maxMinPtr[1];
    env->SetIntArrayRegion(result,0,2, (jint *) element);
    return result;
}
//toMayusculas
JNIEXPORT jstring JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_toMayusculas(JNIEnv *env, jobject obj, jstring cadena, jstring salida){
    const char * Nativ_cadena = env->GetStringUTFChars(cadena,0);
    const char * Nativ_salida = env->GetStringUTFChars(salida,0);
    char * Nativ_result = ops->toMayusculas((char *) Nativ_cadena, (char *) Nativ_salida);   
    jstring result = env->NewStringUTF(Nativ_result);
    env->ReleaseStringUTFChars(cadena, Nativ_cadena);
    env->ReleaseStringUTFChars(salida, Nativ_salida);
    return result;
  }
//getSubLista
JNIEXPORT jintArray JNICALL Java_com_mx_eglobal_JniOperacionesWrapper_getSubLista(JNIEnv *env, jobject obj, jintArray listaEnteros, jintArray Sublista, jint tam, jint i, jint f){
    int * Nativ_listaEnteros = env->GetIntArrayElements(listaEnteros,0);
    int * Nativ_SubLista = env->GetIntArrayElements(Sublista,0);
    int * Nativ_result = ops->getSubLista(Nativ_listaEnteros, Nativ_SubLista, (int) tam, (int) i, (int) f);
    jintArray result = env->NewIntArray((int) tam);
    jint element[(int) tam];
    for(int i=0; i<(int)tam; i++){
      element[i]= Nativ_result[i];
    }
    env->SetIntArrayRegion(result,0,2, (jint *) element);
    return result;
  }