require 'count'

describe "Matcher change" do
  it { expect{Count.increment}.to change { Count.quantity } }
  it { expect{Count.increment}.to change { Count.quantity }.by(1) }
  it { expect{Count.increment}.to change { Count.quantity }.from(2).to(3) }
end
