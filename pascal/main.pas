program main;

{$link ./libsum.so}

uses ctypes;

function sum(a : cint; b : cint): cint; cdecl; external;

var
   result : integer;

begin
   result := sum(50,50);
   writeln(result);
end.
