class Book
  def title
    puts 'Title'
  end

  def price
    puts 'Price'
  end

  def author
    puts'Author'
  end

  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Method #{old_method}() is depricated, use #{new_method}() instead"
      send(new_method, *args, &block)
    end
  end

  deprecate :get_title, :title
  deprecate :get_author, :author
  deprecate :get_price, :price
end

book = Book.new
book.get_title
book.get_price
book.get_author
