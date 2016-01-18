require 'rails_helper'

RSpec.describe "userinfos/index", type: :view do
  before(:each) do
    assign(:userinfos, [
      Userinfo.create!(
        :name => "Name",
        :age => 1,
        :idcard => "Idcard"
      ),
      Userinfo.create!(
        :name => "Name",
        :age => 1,
        :idcard => "Idcard"
      )
    ])
  end

  it "renders a list of userinfos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Idcard".to_s, :count => 2
  end
end
