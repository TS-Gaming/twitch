class TwitchController < ApplicationController
  def index
    @response = HTTParty.get("https://api.twitch.tv/kraken/channel",
         :headers => {
           "Client Secret" => "#{ENV['TWITCH_TOKEN']}",
           "Client-ID" => "ec5agpzfzyczq1wskui7hv9zzrhageg"})
  end
end
