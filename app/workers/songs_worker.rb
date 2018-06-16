class SongsWorker
  require 'csv'
  include SideKiq::Worker

  def perform(songs_file)

  end
end
