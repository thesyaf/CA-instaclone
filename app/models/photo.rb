class Photo < ApplicationRecord
  belongs_to :user

  include ImageUploader[:image]

    acts_as_follower
    acts_as_followable
    acts_as_liker
    acts_as_likeable
    acts_as_mentionable
    
end
