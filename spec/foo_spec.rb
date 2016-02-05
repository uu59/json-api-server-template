require 'spec_helper'

describe App::API do
  include Rack::Test::Methods

  def app
    App::API
  end

  describe "GET /v1/foo" do
    before { get "/v1/foo/#{id}" }

    context "with route_param" do
      let(:id) { "123" }
      it do
        expect(last_response.status).to eq 200
        expect(JSON.parse(last_response.body)).to eq [id.to_s, 1, 2, 3]
      end
    end

    context "without route_param" do
      let(:id) { nil }
      it do
        expect(last_response.status).to eq 404
      end
    end
  end
end
