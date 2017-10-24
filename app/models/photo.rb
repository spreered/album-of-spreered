class Photo < ApplicationRecord
  mount_uploader :file_location, PhotoAlbumUploader  
  validates_presence_of :title, :date, :description, :file_location 
end
