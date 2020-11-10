# frozen_string_literal: true

describe Championship, type: :model do
  it 'factory should be valid' do
    championship = build :championship

    expect(championship).to be_valid
  end
end
