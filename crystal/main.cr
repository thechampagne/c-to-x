@[Link(ldflags: "#{__DIR__}/../libsum.so")]
lib C
    fun sum(a: Int32, b: Int32): Int32
end

puts C.sum(50, 50)