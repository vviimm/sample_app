require 'spec_helper'

describe "User Pages", type: :feature do
  describe "Sign up page" do
    it "works!" do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end
end
