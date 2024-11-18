# frozen_string_literal: true

require "fileutils"

module EmboldRubyStyle
    class Setup
        class << self
            def run # rubocop:disable Rails/Delegate
                new.run
            end
        end

        def run
            prompt_initialize_rubocop_config
        end

        private

        def prompt_initialize_rubocop_config
            init_prompt = "Would you like to initialize '.rubocop.yml' with the required configuration? (Y/n)"
            $stdout.print(init_prompt)
            user_input = $stdin.gets.chomp

            initialize_rubocop_config if user_input.empty? || user_input.downcase == "y"
        end

        def initialize_rubocop_config
            config_path = ".rubocop.yml"
            stub_path = "stubs/rubocop.yml.stub"

            if File.exist?(config_path)
                $stdout.print("#{config_path} already exists. \
                    Add the following configuration to your existing '.rubocop.yml' file: \
                    #{File.read(stub_path)}")
            else
                FileUtils.cp(stub_path, config_path)
                $stdout.print("#{config_path} has been created with the required configuration.")
            end
        end
    end
end
