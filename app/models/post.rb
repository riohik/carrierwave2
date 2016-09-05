class Post < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    default_scope -> { order(created_at: :desc) }
    has_many:comments, dependent: :destroy
    acts_as_votable
    
   
end
