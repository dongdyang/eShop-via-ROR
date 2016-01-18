require 'rails_helper'

RSpec.describe "userinfos/edit", type: :view do
  before(:each) do
    @userinfo = assign(:userinfo, Userinfo.create!(
      :name => "MyString",
      :age => 1,
      :idcard => "MyString"
    ))
  end

  it "renders the edit userinfo form" do
    render

    assert_select "form[action=?][method=?]", userinfo_path(@userinfo), "post" do

      assert_select "input#userinfo_name[name=?]", "userinfo[name]"

      assert_select "input#userinfo_age[name=?]", "userinfo[age]"

      assert_select "input#userinfo_idcard[name=?]", "userinfo[idcard]"
    end
  end
end
