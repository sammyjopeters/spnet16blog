class JournalEntry < ActiveRecord::Base
validates_presence_of :byline, :impression
  belongs_to :garden
end
