class Post < ActiveRecord::Base
  has_attached_file :main_image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: ActionController::Base.helpers.asset_path('/assets/posts/post_default.jpg')
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\z/

end
