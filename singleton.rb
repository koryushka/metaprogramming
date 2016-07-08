class MyClass
  class << self
    def test(it)
      puts "Testing object <#{it}>..."
      puts "This is #{it.class}"
    end
  end

  test 123
  test :s
  test 's'
end

MyClass.test 5
