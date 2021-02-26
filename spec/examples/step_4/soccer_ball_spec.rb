#  Step 4:
# - add a playground ball
# - moves kicking/inflation into its own context

RSpec.describe Examples::Step4::SoccerBall do
  let(:ball) { Examples::Step4::SoccerBall.new }

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

  context "when pulling out of storage" do
    before do
      ball.inflate
      ball.remove_from_storage
    end

    it "is not full enough" do
      expect(ball.full?).to eq(false)
    end
  end

  context "sensory impact" do
    it "sounds firm" do
      sound = ball.kick
      expect(sound).to eq("THUNK!")
    end
  end
end
