<?php

$c = FFI::cdef("int sum(int a, int b);",getcwd()."/libsum.so");

echo $c->sum(50, 50) . "\n";

?>