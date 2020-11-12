# frozen_string_literal: true

describe Game, type: :model do
  it 'factory should be valid' do
    game = build :game

    expect(game).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :gameweek }
    it { is_expected.to have_many(:games_teams).class_name('Games::Team').dependent(:destroy) }
  end
end
