require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'validation tests' do
    it 'validates presence user_id' do
      should validate_presence_of :user_id
    end

    it 'validates presence room_id' do
      should validate_presence_of :room_id
    end

    it 'validates presence content' do
      should validate_presence_of :content
    end
  end

  context 'associations test' do
    it 'belongs_to user' do
      should belong_to :user
    end

    it 'belongs_to room' do
      should belong_to :room
    end
  end
end
