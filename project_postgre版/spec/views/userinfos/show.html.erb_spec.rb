require 'rails_helper'

RSpec.describe "userinfos/show", type: :view do
  before(:each) do
    @userinfo = assign(:userinfo, Userinfo.create!(
      :name => "Name",
      :age => 1,
      :idcard => "Idcard"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Idcard/)
  end
end
