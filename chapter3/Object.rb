class D
end
class C < D
end

puts C.superclass.superclass.superclass.superclass
