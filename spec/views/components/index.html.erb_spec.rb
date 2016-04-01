require 'rails_helper'

RSpec.describe "components/index", type: :view do
  before(:each) do
    assign(:components, [
      Component.create!(
        :quantity => "9.99",
        :unit => "Unit"
      ),
      Component.create!(
        :quantity => "9.99",
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of components" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
