class LibraryController < ApplicationController

  def index
    @library_path = "/Users/donaier/projects/raspberry_stuff/demo_folder_structure/*"
  end

  def list_content
  end

  def play_file
    system("sh #{Rails.root}/app/scripts/library/play_file.sh #{params[:file].gsub(' ', '\ ')}")

    render nothing: true
  end
end
