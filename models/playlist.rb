class Playlist < ActiveRecord::Base
  
  #has_many :songs, dependent: :destroy
  
  #validates_presence_of :team_id
  #validates_presence_of :user_id
  
  #has_many :playlist_songs_queues
  has_many :songs
  
  
  def get_client
    
    Slack.configure do |config|
      config.token = self.bot_token
    end
    
    client = Slack::Web::Client.new
    
  end
  
end