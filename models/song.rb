class Song < ActiveRecord::Base
  
  #has_many :tasks, dependent: :destroy
  belongs_to :playlist
    
  #validates_presence_of :user_id

  def formatted_text
    text.downcase.strip
  end    

  end