using System;
using System.Runtime.InteropServices;

class Program
{
    [DllImport ("libsum.so")]
    private static extern int sum(int a, int b);

    static void Main(string[] args)
    {
        Console.WriteLine(Program.sum(50,50));
    }
}