require 'rails_helper'

RSpec.describe JournalEntry, :type => :model do

  context 'validations' do
    it { should validate_presence_of(:byline) }
    it { should validate_presence_of(:impression) }

  end

  context 'relationships' do
    it { should belong_to(:garden) }
  end

end