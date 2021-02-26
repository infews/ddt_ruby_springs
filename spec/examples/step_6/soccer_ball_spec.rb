#  Step 6:
# - more parameterized examples

RSpec.describe Examples::Step6::SoccerBall do
  let(:ball) { Examples::Step6::SoccerBall.new }

  it_behaves_like "a ball that can be inflated" do
    let(:game_ball) { ball }
  end

  it_behaves_like "a ball that deflates as kicked" do
    let(:game_ball) { ball }
    let(:inflation_limit) { 5000 }
  end

  context "sensory impact" do
    it "sounds firm" do
      sound = ball.kick
      expect(sound).to eq("THUNK!")
    end
  end
end