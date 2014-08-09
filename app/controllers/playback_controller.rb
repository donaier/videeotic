class PlaybackController < ApplicationController

  def start
    system("sh #{Rails.root}/app/scripts/playback/start.sh")

    render nothing: true
  end

  def play
    system("sh #{Rails.root}/app/scripts/playback/play.sh")

    render nothing: true
  end

  def quit
    system("sh #{Rails.root}/app/scripts/playback/quit.sh")

    render nothing: true
  end
end
