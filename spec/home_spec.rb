require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /page" do
    it "returns http success on valid query" do
      get "/home/page/", params: { num1: '1', num2: '1' }

      expect(response).to have_http_status(:success)
      expect(response).to render_template("page")
    end

    it "returns valid GCD and LCM" do
      expected_gcd = 12
      expected_lcm = 144

      get "/home/page/", params: { num1: '48', num2: '36' }

      expect(assigns(:res)).to eq(expected_gcd)
      expect(assigns(:summ)).to eq(expected_lcm)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get root_path

      expect(response).to have_http_status(:success)
      expect(response).to render_template("index")
    end
  end

end