require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validation tests' do
    it 'validates presence title' do
      should validate_presence_of :title
    end
  end

  context 'associations test' do
    it 'has many expenses' do
      should have_many :expenses
    end
  end
end
