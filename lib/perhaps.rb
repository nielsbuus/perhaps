require "perhaps/version"

module Kernel
  def perhaps(probability = 0.5)
    raise ArgumentError unless probability.kind_of? Numeric
    raise ArgumentError unless (0..1).include? probability
    yield if probability > rand
  end

  alias_method :maybe, :perhaps
end
