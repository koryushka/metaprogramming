class MyClass
  def store
    @obj = proc{ @my_var = "My internal var" }
  end

  def execute
    @obj.call
  end
end

obj = MyClass.new
obj.store
obj.execute
p obj.instance_eval { @my_var }
obj.instance_eval { @my_var = 'External var' }
p obj.instance_eval { @my_var }
obj.execute
p obj.instance_eval { @my_var }
