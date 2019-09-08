require "test/unit"

# old funcion
class String
  def to_alphanumeric
    gsub(/[^\s\w]/, "")
  end
end

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_aplhanumeric
    assert_equal "3 the Matic Number", "3# the, Matic Number".to_alphanumeric
  end
end

## ruby src/02-chapter/002-to-alpha-numberic-string-open.rb
