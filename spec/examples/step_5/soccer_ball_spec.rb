#  Step 5:
# - add a shared example group

RSpec.describe Examples::Step5::SoccerBall do
  let(:ball) { Examples::Step5::SoccerBall.new }

  it_behaves_like "a ball that can be inflated" do
    let(:game_ball) { ball }
  end

  context "when kicking" do
    context "a little bit" do
      before do
        ball.inflate
        ball.kick(4)
      end

      it "is full enough" do
        expect(ball.full?).to eq(true)
      end
    end

    context "a lot" do
      before do
        ball.inflate
        ball.kick(5000)
      end

      it "is full enough" do
        expect(ball.full?).to eq(true)
      end
    end

    context "until it is too flat to play" do
      before do
        ball.inflate
        ball.kick(5001)
      end

      it "is not full enough" do
        expect(ball.full?).to eq(false)
      end
    end
  end

  context "sensory impact" do
    it "sounds firm" do
      sound = ball.kick
      expect(sound).to eq("THUNK!")
    end
  end
end
