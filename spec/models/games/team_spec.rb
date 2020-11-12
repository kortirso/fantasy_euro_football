# frozen_string_literal: true

describe Games::Team, type: :model do
  it 'factory should be valid' do
    games_team = build :games_team

    expect(games_team).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :game }
    it { is_expected.to belong_to :team }
  end
end
