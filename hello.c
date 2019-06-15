#include <stdio.h>
#include "build/Main.h"

JNIEXPORT void JNICALL Java_Main_sayHello(JNIEnv *env, jobject thisObj) {
  printf("Hello World!\n");
  return;
}
