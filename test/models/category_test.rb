require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save category without title" do
    category = Category.new
    assert_not category.save
  end

  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    some_undefined_variable
    assert true
  end
  
end
