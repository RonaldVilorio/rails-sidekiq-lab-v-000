class SongsWorker
  require 'csv'
  include SideKiq::Worker

  def perform(songs_file)
    binding.pry
    CSV.foreach(songs_file, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
  end
end
