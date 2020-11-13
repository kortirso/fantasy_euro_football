# frozen_string_literal: true

describe Lineup, type: :model do
  it 'factory should be valid' do
    lineup = build :lineup

    expect(lineup).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to(:users_team).class_name('Users::Team') }
    it { is_expected.to belong_to :gameweek }
    it { is_expected.to have_many(:lineups_players).class_name('Lineups::Player').dependent(:destroy) }
    it { is_expected.to have_many(:players).through(:lineups_players) }
  end
end
