# frozen_string_literal: true

describe Transfer, type: :model do
  it 'factory should be valid' do
    transfer = build :transfer

    expect(transfer).to be_valid
  end

  describe 'associations' do
    it { is_expected.to belong_to(:users_team).class_name('Users::Team') }
    it { is_expected.to belong_to :gameweek }
    it { is_expected.to have_many(:transfers_players).class_name('Transfers::Player').dependent(:destroy) }
    it { is_expected.to have_many(:players).through(:transfers_players) }
  end
end
