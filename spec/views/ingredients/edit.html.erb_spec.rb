require 'rails_helper'

RSpec.describe "ingredients/edit", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :quantity => "9.99",
      :unit => "MyString"
    ))
  end

  it "renders the edit ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredient_path(@ingredient), "post" do

      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"

      assert_select "input#ingredient_unit[name=?]", "ingredient[unit]"
    end
  end
end
