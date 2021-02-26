require "rspec/core/rake_task"
require "standard/rake"

RSpec::Core::RakeTask.new(:spec)

task default: [:spec, :"standard:fix"]

desc "Runs a given set of specs (pass a number 1-8)"
task :step, :num do |t, args|
  step_number = args[:num]
  system "rspec spec/examples/step_#{step_number}"
end
