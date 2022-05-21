# frozen_string_literal: true

module Spring
  module Commands
    class ErbLint
      def call
        require "erb_lint/cli"

        load Gem.bin_path("erblint", "erblint")
      end
    end
    Spring.register_command "erblint", ErbLint.new
  end
end
