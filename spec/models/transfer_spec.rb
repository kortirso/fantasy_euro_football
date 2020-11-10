# frozen_string_literal: true

describe Transfer, type: :model do
  it 'factory should be valid' do
    transfer = build :transfer

    expect(transfer).to be_valid
  end
end
