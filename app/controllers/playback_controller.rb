class PlaybackController < ApplicationController

  def play
    Videeotic::Application::VIDEO_SHELL.write('p')

    render nothing: true
  end

  def quit
    Videeotic::Application::VIDEO_SHELL.write('q')

    render nothing: true
  end
end
