RSpec.describe Examples::Step7::PlaygroundBall do
  let(:ball) { Examples::Step7::PlaygroundBall.new }

  it_behaves_like "a ball that can be inflated" do
    let(:game_ball) { ball }
  end

  it_behaves_like "a ball that deflates as kicked" do
    let(:game_ball) { ball }
    let(:inflation_limit) { 2000 }
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
