require 'rails_helper'

RSpec.describe Room, type: :model do
  context 'validation tests' do
    it 'validates presence name' do
      should validate_presence_of :name
    end
  end

  context 'associations test' do
    it 'has many messages' do
      should have_many :messages
    end

    it 'has many participants' do
      should have_many :participants
    end
  end
end
