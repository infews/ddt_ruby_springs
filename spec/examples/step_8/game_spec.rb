RSpec.describe Examples::Step8::Game do
  let(:game) { Examples::Step8::Game.new }

  before do
    ball.inflate
    game.use_ball(ball)
    game.play(with_kick_count)
  end

  context "with a SoccerBall" do
    let(:ball) { Examples::Step8::SoccerBall.new }

    context "in a short game" do
      let(:with_kick_count) { 3000 }

      it "the ball stays full" do
        expect(ball).to be_full
      end
    end

    context "in a long game" do
      let(:with_kick_count) { 6000 }

      it "the ball goes flat" do
        expect(ball).to_not be_full
      end
    end
  end

  context "with a PlaygroundBall" do
    let(:ball) { Examples::Step8::PlaygroundBall.new }

    context "in a short game" do
      let(:with_kick_count) { 1000 }

      it "the ball stays full" do
        expect(ball).to be_full
      end
    end

    context "in a long game" do
      let(:with_kick_count) { 2500 }

      it "the ball goes flat" do
        expect(ball).to_not be_full
      end
    end
  end
end

