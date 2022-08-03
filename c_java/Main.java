package c_java;

import java.io.File;

class Main {

    private native static int sum(int a, int b);
    static {
        System.load(new File("libsumjava.so").getAbsolutePath());
    }

    public static void main(String[] args) {
        System.out.println(Main.sum(50,50));
    }
}