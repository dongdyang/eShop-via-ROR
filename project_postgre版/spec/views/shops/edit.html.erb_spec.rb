require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "MyString",
      :telephone => "MyString",
      :location => "MyText"
    ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input#shop_name[name=?]", "shop[name]"

      assert_select "input#shop_telephone[name=?]", "shop[telephone]"

      assert_select "textarea#shop_location[name=?]", "shop[location]"
    end
  end
end
