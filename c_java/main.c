#include "main.h"

JNIEXPORT jint JNICALL Java_c_1java_Main_sum(JNIEnv *env, jclass this, jint a, jint b)
{
    return a + b;
}