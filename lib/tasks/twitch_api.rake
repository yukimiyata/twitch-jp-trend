namespace :twitch_api do
  task twitch_api_every_10_minutes: :environment do
    task = TwitchApi::TwitchApiData.new
    task.twitch_api_data
  end
end
