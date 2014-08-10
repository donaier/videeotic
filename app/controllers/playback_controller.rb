class PlaybackController < ApplicationController

  def play
    Videeotic::Application::VIDEO_SHELL.write('p')
    render nothing: true
  end

  def quit
    Videeotic::Application::VIDEO_SHELL.write('q')
    render nothing: true
  end

  def vol_up
    Videeotic::Application::VIDEO_SHELL.write('+')
    render nothing: true
  end

  def vol_down
    Videeotic::Application::VIDEO_SHELL.write('-')
    render nothing: true
  end

  def prev_small
    Videeotic::Application::VIDEO_SHELL.write("\c[[D")
    render nothing: true
  end

  def prev_big
    Videeotic::Application::VIDEO_SHELL.write("\c[[B")
    render nothing: true
  end

  def next_small
    Videeotic::Application::VIDEO_SHELL.write("\c[[C")
    render nothing: true
  end

  def next_big
    Videeotic::Application::VIDEO_SHELL.write("\c[[A")
    render nothing: true
  end
end
