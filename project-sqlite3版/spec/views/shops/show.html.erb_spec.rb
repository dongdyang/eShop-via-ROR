require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      :name => "Name",
      :telephone => "Telephone",
      :location => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/MyText/)
  end
end
