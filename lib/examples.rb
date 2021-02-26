module Examples
  module Step1; end
end

Dir.glob(File.join(__dir__, "examples", "**", "*.rb")).sort.each do |f|
  require_relative f
end
