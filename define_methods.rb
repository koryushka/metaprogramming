def define_methods
  shared = 0
  Kernel.send :define_method, :get_shared do
    puts shared
  end

  Kernel.send :define_method, :inc do |i|
    shared += i
  end
end

define_methods
get_shared
inc 5
get_shared
inc 8
get_shared
