# frozen_string_literal: true

require 'rest-client'

module Weather
  class GetCurrentWeather
    WEATHER_API_TOKEN = ENV['WEATHER_API_TOKEN']
    API_ROOT = 'http://api.openweathermap.org'

    attr_accessor :tourbase, :region, :params, :response

    def initialize(tourbase)
      @tourbase = tourbase
      @region = tourbase.region
      @params = { appid: WEATHER_API_TOKEN }
    end

    def call
      self.response = current_weather

      {
        temp: response['main']['temp'],
        wind_speed: response['wind']['speed'],
        icon: response['weather'][0]['icon']
      }
    end

    private

    def current_weather
      set_lat_and_lon

      JSON.parse(RestClient.get url_for_current_weather, params: params.merge(
          {
            lat: @lat,
            lon: @lon,
            units: 'metric'
          }
        )
      )
    end

    def set_lat_and_lon
      if tourbase.lat.nil? || tourbase.lon.nil?
        region_data = get_region_data
        @lat = region_data['lat']
        @lon = region_data['lon']
        tourbase.update(lat: @lat, lon: @lon)
      else
        @lat = tourbase.lat
        @lon = tourbase.lon
      end
    end

    def get_region_data
      JSON.parse(RestClient.get url_for_tourbase_location, params: params.merge(
          {
            q: "#{region.nearest_city},#{region.country_code}",
            limit: 1
          }
        )
      )[0]
    end

    def url_for_current_weather
      API_ROOT + '/data/2.5/weather'
    end

    def url_for_tourbase_location
      API_ROOT + '/geo/1.0/direct'
    end
  end
end
