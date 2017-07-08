class Post < ActiveRecord::Base
  has_attached_file :main_image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/post_default.png'
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\z/

end
