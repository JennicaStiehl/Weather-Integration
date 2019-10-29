class Api::V1::LocationController < ApplicationController
  def show
    ip_address = params["ip"]
    request = Faraday.new("http://dataservice.accuweather.com/locations/v1/cities/ipaddress?q=#{ip_address}") do |f|
      f.adapter Faraday.default_adapter
      f.params[:apikey] = ENV["accuweather_api_key"]
    end
    response = request.get
    results = JSON.parse(response.body, symbolize_name: true)

    render json: {"Country": {
      "ID": results["Country"]["ID"],
      "LocalizedName": results["Country"]["LocalizedName"]
    },
      "latitude": results["GeoPosition"]["Latitude"],
      "longitude": results["GeoPosition"]["Longitude"],
      "IsDaylightSaving": results["TimeZone"]["IsDaylightSaving"],
      "processingCode":
      ("(" + results["Country"]["LocalizedName"] + " - " +
      results["AdministrativeArea"]["LocalizedName"] + " - " +
      results["LocalizedName"] + ")" )
    }
  end
end
