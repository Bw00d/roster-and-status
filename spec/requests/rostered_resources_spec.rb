require 'rails_helper'

RSpec.describe "RosteredResources", type: :request do
  describe "GET /rostered_resources" do
    it "works! (now write some real specs)" do
      get rostered_resources_path
      expect(response).to have_http_status(200)
    end
  end
end
