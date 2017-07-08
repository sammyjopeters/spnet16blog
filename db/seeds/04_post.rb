seed_files = Dir.glob("#{Rails.root}/db/seeds/posts/*.yml")
seed_files.each do |file|
  post_yaml = YAML::load_file(file)
  post = Post.new(post_yaml.except('created_at', 'main_image_file_name'))
  #post.main_image = File.new(File.join(Rails.root, 'db/seeds/posts/images/', post_yaml['main_image_file_name']))
  post.main_image = File.open(File.join(Rails.root, 'db/seeds/posts/images/', post_yaml['main_image_file_name']))
  post.save!
  post.update_attribute :created_at, (DateTime.parse(post_yaml['created_at']))
end
