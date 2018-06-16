class SongsWorker
  require 'csv'
  include SideKiq::Worker

  def perform(songs_file)
    binding.pry
    
  end
end
