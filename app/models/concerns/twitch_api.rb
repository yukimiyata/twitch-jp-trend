require 'rest-client'
require 'json'

module TwitchApi
  class TwitchApiData
    def twitch_api_data
      secret = 'ueueq2ri561rl6mfor7jcvqi0jl8r2'

      url = 'https://api.twitch.tv/helix/streams?language=ja'
      headers = {
          'Client-ID': Rails.application.credentials.twitch[:client_id],
          'Authorization': Rails.application.credentials.twitch[:authorization]
      }
      response = RestClient.get(url, headers)
      twitch_data = JSON.parse(response.body.to_s)

    end
  end
end