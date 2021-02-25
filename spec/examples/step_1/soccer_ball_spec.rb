#  Step 1:
# - implicit subject

RSpec.describe Examples::Step1::SoccerBall do
  subject { Examples::Step1::SoccerBall.new }

  context "before inflated" do
    it { should_not be_full }
  end

  context "after inflated" do
    before do
      subject.inflate
    end

    it { should be_full }

    context "when kicking" do
      before do
        subject.kick
        subject.kick
        subject.kick
        subject.kick
      end

      it { should be_full }
    end

    context "when kicking a bunch" do
      before do
        subject.kick(5000)
      end

      it { should be_full }
    end

    context "when kicking a very large amount" do
      before do
        subject.kick(5001)
      end

      it { should_not be_full }
    end
  end
end

# implicit subject
# explicit subject
# just use let
