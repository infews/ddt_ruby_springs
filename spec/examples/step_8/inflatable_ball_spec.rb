#  Step 8:
# - testing super class indepenently

RSpec.describe Examples::Step8::InflatableBall do
  let(:ball) { Examples::Step8::InflatableBall.new }

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

  context "when pulling out of storage" do
    before do
      ball.inflate
      ball.remove_from_storage
    end

    it "is not full enough" do
      expect(ball.full?).to eq(false)
    end
  end

  context "deflating" do
    let(:limit) { 100 }
    let(:deflation_factor) { 1 }

    context "a little bit" do
      let(:kick_count) { 10 }
      before do
        ball.inflate
        ball.deflate(kick_count, limit, deflation_factor)
      end

      it "is still full" do
        expect(ball.full?).to eq(true)
      end
    end

    context "a lot" do
      let(:kick_count) { 11 }
      before do
        ball.inflate
        ball.deflate(kick_count, limit, deflation_factor)
      end

      it "is not full enough" do
        expect(ball.full?).to eq(false)
      end
    end
  end
end
