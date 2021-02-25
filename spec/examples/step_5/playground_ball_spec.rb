#  Step 5:
# - add a shared example group

RSpec.describe Examples::Step5::PlaygroundBall do
  let(:ball) { Examples::Step5::PlaygroundBall.new }

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
        ball.kick(2000)
      end

      it "is full enough" do
        expect(ball.full?).to eq(true)
      end
    end

    context "until too flat to play" do
      before do
        ball.inflate
        ball.kick(2001)
      end

      it "is not full enough" do
        expect(ball.full?).to eq(false)
      end
    end
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
