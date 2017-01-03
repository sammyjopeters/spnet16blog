require 'rails_helper'

RSpec.describe Garden, :type => :model do

  context 'relationships' do
    it { should have_many(:journal_entries) }
    it { should belong_to(:location) }
  end

end