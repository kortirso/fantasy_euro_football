# frozen_string_literal: true

describe Users::Team, type: :model do
  it 'factory should be valid' do
    users_team = build :users_team

    expect(users_team).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :championship }
    it { is_expected.to have_many(:users_teams_players).class_name('Users::Teams::Player').dependent(:destroy) }
    it { is_expected.to have_many(:lineups).dependent(:destroy) }
    it { is_expected.to have_many(:transfers).dependent(:destroy) }
    it { is_expected.to have_many(:players).through(:users_teams_players) }
  end
end
