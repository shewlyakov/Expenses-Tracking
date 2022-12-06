require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'validates presence email' do
      should validate_presence_of :email
    end
  end

  context 'associations test' do
    it 'has many expenses' do
      should have_many :expenses
    end

    it 'has many messages' do
      should have_many :messages
    end
  end
end
