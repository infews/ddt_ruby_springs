#  Step 8:
# - no longer re-testing super class

RSpec.describe Examples::Step8::SoccerBall do
  let(:ball) { Examples::Step8::SoccerBall.new }

  it "is an InflatableBall" do
    expect(ball).to be_a(Examples::Step8::InflatableBall)
  end

  context "sensory impact" do
    it "sounds firm" do
      sound = ball.kick
      expect(sound).to eq("THUNK!")
    end
  end
end
