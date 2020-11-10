# frozen_string_literal: true

describe Users::Teams::Player, type: :model do
  it 'factory should be valid' do
    users_teams_player = build :users_teams_player

    expect(users_teams_player).to be_valid
  end
end
