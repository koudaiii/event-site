require 'rails_helper'

RSpec.describe "UserDecorators", type: :request do
  describe "GET /user_decorators" do
    it "works! (now write some real specs)" do
      get user_decorators_path
      expect(response).to have_http_status(200)
    end
  end
end
