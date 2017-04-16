class AdminController < ApplicationController

  def posts
    @posts = Post.all
  end

  def garden_journal
    @entries = JournalEntry.all
    @gardens = Garden.all
    @locations = Location.all
  end


  def get_gardens(location)
    Garden.where(location_id: location.id)
  end
  helper_method :get_gardens

end
