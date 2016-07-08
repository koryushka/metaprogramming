class C
  def initialize
    @x = 1
  end
end

class D
  def my_meth
    @y = 2
    C.new.instance_exec(@y) {|y| puts "@x: #{@x}, @y: #{y}"}
  end
end

D.new.my_meth
