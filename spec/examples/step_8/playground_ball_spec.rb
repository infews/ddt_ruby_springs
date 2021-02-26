#  Step 8:
# - no longer re-testing super class

RSpec.describe Examples::Step8::PlaygroundBall do
  let(:ball) { Examples::Step8::PlaygroundBall.new }

  it "is an InflatableBall" do
    expect(ball).to be_a(Examples::Step8::InflatableBall)
  end

  context "sensory impact" do
    it "like nostalgia" do
      expect(ball.smell).to eq("third grade")
    end

    it "like it should" do
      sound = ball.kick
      expect(sound).to eq("PING!")
    end
  end
end
