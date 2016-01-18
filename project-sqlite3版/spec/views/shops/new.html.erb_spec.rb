require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
      :name => "MyString",
      :telephone => "MyString",
      :location => "MyText"
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_telephone[name=?]", "shop[telephone]"

      assert_select "textarea#shop_location[name=?]", "shop[location]"
    end
  end
end
