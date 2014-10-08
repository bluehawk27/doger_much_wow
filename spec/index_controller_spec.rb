require 'spec_helper'

describe "ElephantsController" do

  describe 'get all elephants' do
    it 'should return ok' do
      get "/elephants"
      expect(last_response).to be_ok
    end
  end

  describe 'create a new elephant' do
    band_name = 'chromatics'
    new_params = {
        name: band_name
      }
    new_session = {
      'rack.session' => {
        # Could preload stuff into the session here...
      }
    }
    it 'should add a new band' do
      pending
      expect{
        post('/bands', new_params, new_session)
      }.to change(Band, :count).by(1)
      last_response.should be_redirect
    end
  end

  describe "DESTROYing an elephant" do
    it "delete an elephant RESTfully" do
      larry = Elephant.create name: "Larry"
      expect {
        delete "/elephants/#{larry.id}"
      }.to change(Elephant, :count).by -1
    end
  end
end
