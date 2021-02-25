#  Step 6:
# - more parameterized examples

RSpec.describe Examples::Step6::PlaygroundBall do
  let(:ball) { Examples::Step6::PlaygroundBall.new }

  it_behaves_like "a ball that can be inflated" do
    let(:game_ball) { ball }
  end

  it_behaves_like "a ball that deflates as kicked" do
    let(:game_ball) { ball }
    let(:inflation_limit) { 2000 }
  end

  it_behaves_like "a nostalgic ball" do
    let(:game_ball) { ball }
    let(:nostalgic_smell) { "third grade" }
    let(:nostalgic_kick_sound) { "PING!" }
  end
end
