#  Step 3:
# - just use let?
# - test names & content become more explicit, esp. with documentation formatter
# - balance this with more lines, more indentation

RSpec.describe Examples::Step3::SoccerBall do
  let(:ball) { Examples::Step3::SoccerBall.new }

  context "before inflated" do
    it "is empty" do
      expect(ball.full?).to eq(false)
    end
  end

  context "after inflated" do
    before do
      ball.inflate
    end

    it "is full" do
      expect(ball.full?).to eq(true)
    end

    context "when kicking" do
      before do
        ball.kick(4)
      end

      it "is full enough" do
        expect(ball.full?).to eq(true)
      end
    end

    context "when kicking a bunch" do
      before do
        ball.kick(5000)
      end

      it "is full enough" do
        expect(ball.full?).to eq(true)
      end
    end

    context "when kicking a very large amount" do
      before do
        ball.kick(5001)
      end

      it "is not full enough" do
        expect(ball.full?).to eq(false)
      end
    end

    context "when pulling out of storage" do
      before do
        ball.remove_from_storage
      end

      it "is not full enough" do
        expect(ball.full?).to eq(false)
      end
    end
  end
end

