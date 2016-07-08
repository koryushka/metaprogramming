my_var = 'my var'

MyClass = Class.new do
  define_method :my_method do
    puts "#{my_var} inside my method"
  end
end

MyClass.new.my_method
