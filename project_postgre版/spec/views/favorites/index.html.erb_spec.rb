require 'rails_helper'

RSpec.describe "favorites/index", type: :view do
  before(:each) do
    assign(:favorites, [
      Favorite.create!(
        :rating => 1
      ),
      Favorite.create!(
        :rating => 1
      )
    ])
  end

  it "renders a list of favorites" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
