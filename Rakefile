require "rspec/core/rake_task"
require "standard/rake"

RSpec::Core::RakeTask.new(:spec)

task default: [:spec, :"standard:fix"]

# Not a great factoring, but zsh noglob is a pain
class Step
  def self.run(step_number)
    system "rspec spec/examples/step_#{step_number}"
  end
end

desc "Runs specs in step 1"
task :step_1 do
  Step.run(1)
end

desc "Runs specs in step 2"
task :step_2 do
  Step.run(2)
end

desc "Runs specs in step 3"
task :step_3 do
  Step.run(3)
end

desc "Runs specs in step 4"
task :step_4 do
  Step.run(4)
end

desc "Runs specs in step 5"
task :step_5 do
  Step.run(5)
end

desc "Runs specs in step 6"
task :step_6 do
  Step.run(6)
end

desc "Runs specs in step 7"
task :step_7 do
  Step.run(7)
end

desc "Runs specs in step 8"
task :step_8 do
  Step.run(8)
end
