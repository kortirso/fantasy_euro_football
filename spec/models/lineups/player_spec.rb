# frozen_string_literal: true

describe Lineups::Player, type: :model do
  it 'factory should be valid' do
    lineups_player = build :lineups_player

    expect(lineups_player).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :lineup }
    it { is_expected.to belong_to :player }
  end
end
