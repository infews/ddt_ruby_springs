#  Step 2:
# - explicit subject

RSpec.describe Examples::Step2::SoccerBall do
  subject(:ball) { Examples::Step2::SoccerBall.new }

  context "before inflated" do
    it { should_not be_full }
  end

  context "after inflated" do
    before do
      ball.inflate
    end

    it { should be_full }

    context "when kicking" do
      before do
        ball.kick
        ball.kick
        ball.kick
        ball.kick
      end

      it { should be_full }
    end

    context "when kicking a bunch" do
      before do
        ball.kick(5000)
      end

      it { should be_full }
    end

    context "when kicking a very large amount" do
      before do
        ball.kick(5001)
      end

      it { should_not be_full }
    end
  end
end

