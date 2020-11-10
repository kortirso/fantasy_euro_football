# frozen_string_literal: true

describe Games::Team, type: :model do
  it 'factory should be valid' do
    games_team = build :games_team

    expect(games_team).to be_valid
  end
end
