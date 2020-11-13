# frozen_string_literal: true

describe Player, type: :model do
  it 'factory should be valid' do
    player = build :player

    expect(player).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to(:team).optional }
    it { is_expected.to have_many(:users_teams_players).class_name('Users::Teams::Player').dependent(:destroy) }
    it { is_expected.to have_many(:lineups_players).class_name('Lineups::Player').dependent(:destroy) }
    it { is_expected.to have_many(:gameweeks_players).class_name('Gameweeks::Player').dependent(:destroy) }
    it { is_expected.to have_many(:transfers_players).class_name('Transfers::Player').dependent(:destroy) }
    it { is_expected.to have_many(:users_teams).class_name('Users::Team').through(:users_teams_players) }
    it { is_expected.to have_many(:lineups).through(:lineups_players) }
    it { is_expected.to have_many(:transfers).through(:transfers_players) }
  end
end
