require "bundler/setup"
require "examples"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

# Used in Step 5 & Step 6
RSpec.shared_context "a ball that can be inflated" do
  context "before inflated" do
    it "is empty" do
      expect(game_ball.full?).to eq(false)
    end
  end

  context "after inflated" do
    before do
      game_ball.inflate
    end

    it "is full" do
      expect(game_ball.full?).to eq(true)
    end
  end

  context "when pulling out of storage" do
    before do
      game_ball.inflate
      game_ball.remove_from_storage
    end

    it "is not full enough" do
      expect(game_ball.full?).to eq(false)
    end
  end
end

# Used in Step 6
RSpec.shared_context "a ball that deflates as kicked" do
  context "when kicking" do
    context "a little bit" do
      before do
        game_ball.inflate
        game_ball.kick(4)
      end

      it "is full enough" do
        expect(game_ball.full?).to eq(true)
      end
    end

    context "a lot" do
      before do
        game_ball.inflate
        game_ball.kick(inflation_limit)
      end

      it "is full enough" do
        expect(game_ball.full?).to eq(true)
      end
    end

    context "until it is too flat to play" do
      before do
        game_ball.inflate
        game_ball.kick(inflation_limit + 1)
      end

      it "is not full enough" do
        expect(game_ball.full?).to eq(false)
      end
    end
  end
end

# Used in Step 6
RSpec.shared_context "a nostalgic ball" do
  context "sensory impact" do
    it "like nostalgia" do
      expect(ball.smell).to eq(nostalgic_smell)
    end

    it "like it should" do
      sound = ball.kick
      expect(sound).to eq(nostalgic_kick_sound)
    end
  end
end
