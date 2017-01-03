class Garden < ActiveRecord::Base
  belongs_to :location
  has_many :journal_entries
end
