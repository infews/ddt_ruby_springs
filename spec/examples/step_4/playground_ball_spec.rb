RSpec.describe Examples::Step4::PlaygroundBall do
  let(:ball) { Examples::Step4::PlaygroundBall.new }

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
    it "awakens nostalgia" do
      expect(ball.smell).to eq("third grade")
    end

    it "sounds like it should" do
      sound = ball.kick
      expect(sound).to eq("PING!")
    end
  end
end
