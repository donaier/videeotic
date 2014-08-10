class PlaybackController < ApplicationController

  def start
    system("sh #{Rails.root}/app/scripts/playback/start.sh")

    render nothing: true
  end

  def play
    Videeotic::Application::VIDEO_SHELL.write('p')

    render nothing: true
  end

  def quit
    system("sh #{Rails.root}/app/scripts/playback/quit.sh")

    render nothing: true
  end
end
