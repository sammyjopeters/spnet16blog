class AddMainImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :main_image, :string, default: 'http://lorempixel.com/1024/683'
  end
end
