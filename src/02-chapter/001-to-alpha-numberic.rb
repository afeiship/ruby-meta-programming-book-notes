require "test/unit"

# old funcion
def to_alphanumeric(str)
  str.gsub(/[^\s\w]/, "")
end

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_aplhanumeric
    assert_equal "3 the Matic Number", to_alphanumeric("3# the, Matic Number")
  end
end

## ruby src/02-chapter/001-to-alpha-numberic.rb
