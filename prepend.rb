module M1
  module M2
    def test

    end
  end
  def self.included(base)
    base.extend M2
  end
end




class Foo
  include M1
end

puts Foo.ancestors
