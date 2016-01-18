require 'rails_helper'

RSpec.describe "favorites/new", type: :view do
  before(:each) do
    assign(:favorite, Favorite.new(
      :rating => 1
    ))
  end

  it "renders new favorite form" do
    render

    assert_select "form[action=?][method=?]", favorites_path, "post" do

      assert_select "input#favorite_rating[name=?]", "favorite[rating]"
    end
  end
end
