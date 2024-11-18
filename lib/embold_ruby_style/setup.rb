# frozen_string_literal: true

require "fileutils"

module EmboldRubyStyle
    class Setup
        class << self
            delegate :run, to: :new
        end

        def run
            prompt_initialize_rubocop_config
        end

        private

        def prompt_initialize_rubocop_config
            init_prompt = "Would you like to initialize .rubocop.yml with the required configuration? (Y/n)"
            $stdout.print(init_prompt)
            user_input = $stdin.gets.chomp

            initialize_rubocop_config if user_input.empty? || user_input.downcase == "y"
        end

        def initialize_rubocop_config
            config_path = ".rubocop.yml"
            stub_path = "stubs/rubocop.yml.stub"

            if File.exist?(config_path)
                $stdout.print("#{config_path} already exists. ")
                $stdout.print("Add the following configuration to your existing .rubocop.yml file:\n")
                $stdout.print(File.read(stub_path))
            else
                FileUtils.cp(stub_path, config_path)
                $stdout.print("#{config_path} has been created with the required configuration.")
                File.write(config_path, File.read(stub_path))
            end
        end
    end
end
