import 'dart:ffi';

void main() {
    var c = DynamicLibrary.open("./libsum.so");
    var sum = c.lookup<NativeFunction<Int32 Function(Int32,Int32)>>('sum')
    .asFunction<int Function(int, int)>();
    print(sum(50, 50));
}