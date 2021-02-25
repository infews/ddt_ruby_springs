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

# Used in Step 5
RSpec.shared_context "a game ball" do
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
