require 'rails_helper'

RSpec.describe "Userinfos", type: :request do
  describe "GET /userinfos" do
    it "works! (now write some real specs)" do
      get userinfos_path
      expect(response).to have_http_status(200)
    end
  end
end
