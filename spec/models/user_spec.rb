require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns user' do
    User.create(name: "name")
    expect(User.count).to eq(1)
  end
end
