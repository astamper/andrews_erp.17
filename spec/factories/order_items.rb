FactoryGirl.define do
  factory :order_item do
    quantity 1
    status "MyString"
    packaging "MyString"
    order nil
    stock_type nil
    unit "MyString"
    stock nil
  end
end
