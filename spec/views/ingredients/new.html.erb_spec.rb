require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :quantity => "9.99",
      :unit => "MyString"
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"

      assert_select "input#ingredient_unit[name=?]", "ingredient[unit]"
    end
  end
end
