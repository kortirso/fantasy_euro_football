# frozen_string_literal: true

describe Gameweek, type: :model do
  it 'factory should be valid' do
    gameweek = build :gameweek

    expect(gameweek).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :championship }
    it { is_expected.to have_many(:games).dependent(:destroy) }
    it { is_expected.to have_many(:lineups).dependent(:destroy) }
    it { is_expected.to have_many(:gameweeks_players).class_name('Gameweeks::Player').dependent(:destroy) }
    it { is_expected.to have_many(:transfers).dependent(:destroy) }
  end
end
