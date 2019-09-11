class MyClass
  def pub_method
    self.pub_method2
    prv_method
  end

  def pub_method2
    p "im pub_method2"
  end

  private

  def prv_method
    p "im private"
  end
end

MyClass.new.pub_method

# ruby src/02-chapter/015-private.rb
