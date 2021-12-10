require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save property without title" do
    property = Property.new
    assert_not property.save, "Saved the property without a title"
  end

  test "should not save property without quantity" do
    property = Property.new
    assert_not property.save, "Saved the property without a quantity"
  end
  
  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      some_undefined_variable
    end
  end

end
