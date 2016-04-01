require 'rails_helper'

RSpec.describe "components/edit", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :quantity => "9.99",
      :unit => "MyString"
    ))
  end

  it "renders the edit component form" do
    render

    assert_select "form[action=?][method=?]", component_path(@component), "post" do

      assert_select "input#component_quantity[name=?]", "component[quantity]"

      assert_select "input#component_unit[name=?]", "component[unit]"
    end
  end
end
