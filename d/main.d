import std.stdio;

extern (C) int sum(int a, int b);

void main()
{
    writeln(sum(50,50));
}