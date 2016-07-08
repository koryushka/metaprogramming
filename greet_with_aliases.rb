module GreetingWithWow
  def greet
    "Hey, #{super}"
  end
end

class MyClass
  prepend GreetingWithWow

  def greet
    "hello"
  end

end

p MyClass.new.greet
