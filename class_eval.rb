# var = 'External var'
#
#
# Integer.class_eval do
#
#
#   @my_var = var
#
# end
#
#
# p Integer.class_eval {@my_var}

# class C
#   @@v = 1
# end
#
# class D < C
#   def my_meth; @@v; end
# end
#
# puts D.new.my_meth
@@v = 1
class MyClass
  @@v = 2

  def self.m
    @@v = 3
  end
end
MyClass.m
puts @@v
