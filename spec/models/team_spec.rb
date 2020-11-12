# frozen_string_literal: true

describe Team, type: :model do
  it 'factory should be valid' do
    team = build :team

    expect(team).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to :championship }
    it { is_expected.to have_many(:players).dependent(:nullify) }
    it { is_expected.to have_many(:games_teams).class_name('Games::Team').dependent(:destroy) }
  end
end
