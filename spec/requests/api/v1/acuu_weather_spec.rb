require 'rails_helper'
RSpec.describe 'IP Address API' do
  it 'can get the location based on an IP address' do
    get '/api/v1/location?q=73.229.237.237'
    results = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(results[:Country][:ID]).to eq("US")
    expect(results[:Country][:LocalizedName]).to eq("United States")
    expect(results[:IsDaylightSaving]).to eq(true)
    expect(results[:processingCode]).to eq("(United States - Colorado - Denver)")
    expect(results[:latitude]).to eq(39.6796)
    expect(results[:longitude]).to eq(-104.9626)
  end
end
