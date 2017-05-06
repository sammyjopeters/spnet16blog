seed_files = Dir.glob("#{Rails.root}/db/seeds/posts/*.yml")
seed_files.each do |file|
  post_yaml = YAML::load_file(file)
  post = Post.new(post_yaml.except('created_at'))
  post.save!
  post.update_attribute :created_at, (DateTime.parse(post_yaml['created_at']))
end
