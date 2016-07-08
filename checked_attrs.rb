module CheckedAttributes
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def attr_checked(attribute, &validation)
      define_method "#{attribute}=" do |value|
        if block_given?
          raise 'Invalid attribute' unless validation.call(value)
        end
        instance_variable_set("@#{attribute}", value)
      end

      define_method attribute do
        instance_variable_get "@#{attribute}"
      end
    end

    def test
      puts 'testing'
    end
  end
end

class Person
  include CheckedAttributes

  attr_checked :age do |v|
     v>=18
   end
  attr_checked :name

end

p = Person.new
p.age = 30
p p.age
p.name = 'Kirill'
p p.name
