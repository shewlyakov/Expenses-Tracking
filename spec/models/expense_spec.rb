require 'rails_helper'

RSpec.describe Expense, type: :model do
  context 'validation tests' do
    it 'validates user_id' do
      should validate_presence_of :user_id
    end

    it 'validates category_id' do
      should validate_presence_of :category_id
    end

    it 'validates name' do
      should validate_presence_of :name
    end

    it 'validates sum' do
      should validate_presence_of :sum
    end
  end

  context 'associations test' do
    it 'belongs to user' do
      should belong_to :user
    end

    it 'belongs to category' do
      should belong_to :category
    end
  end

end
