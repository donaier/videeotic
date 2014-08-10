class LibraryController < ApplicationController

  def index
    @library_path = "/netdrive/OpenShare/media_center/*"
  end

  def list_content
  end

  def play_file
    Videeotic::Application::VIDEO_SHELL.puts("omxplayer -b -o hdmi \"#{params[:file]}\"")

    render nothing: true
  end
end
