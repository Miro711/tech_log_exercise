require 'aircraft'

RSpec.describe Aircraft do
  it 'has access to the described_class' do
    expect { described_class }.not_to raise_error
  end
end