# frozen_string_literal: true

require_relative "embold_ruby_style/version"
require_relative "embold_ruby_style/setup"

module EmboldRubyStyle
    class Error < StandardError; end

    class << self
        def run_setup
            Setup.run
        end
    end
end
