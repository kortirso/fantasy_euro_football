# frozen_string_literal: true

describe Lineup, type: :model do
  it 'factory should be valid' do
    lineup = build :lineup

    expect(lineup).to be_valid
  end
end
