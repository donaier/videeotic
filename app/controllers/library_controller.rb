class LibraryController < ApplicationController

  def index
    @library_path = "/netdrive/OpenShare/media_center/*"
  end

  def list_content
  end

  def play_file
    system("sh #{Rails.root}/app/scripts/library/play_file.sh '#{params[:file]}'")

    render nothing: true
  end
end
