# frozen_string_literal: true

describe Championship, type: :model do
  it 'factory should be valid' do
    championship = build :championship

    expect(championship).to be_valid
  end

  describe 'associations' do
    it { is_expected.to have_many(:users_teams).class_name('Users::Team').dependent(:destroy) }
    it { is_expected.to have_many(:teams).dependent(:destroy) }
    it { is_expected.to have_many(:gameweeks).dependent(:destroy) }
    it { is_expected.to have_many(:players).through(:teams) }
    it { is_expected.to have_many(:games).through(:gameweeks) }
  end
end
