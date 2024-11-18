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
            init_prompt = "Would you like to initialize .rubocop.yml with the required configuration? (Y/n)"
            $stdout.print(init_prompt)
            user_input = $stdin.gets.chomp

            initialize_rubocop_config if user_input.empty? || user_input.downcase == "y"
        end

        def initialize_rubocop_config
            config_path = ".rubocop.yml"
            stub_path = File.expand_path("../../../stubs/rubocop.yml.stub", __FILE__)

            if File.exist?(config_path)
                already_exists_msg = "\n"
                already_exists_msg += "#{config_path} already exists."
                already_exists_msg += " Add the following configuration to your existing .rubocop.yml file:\n\n"
                already_exists_msg += File.read(stub_path)
                already_exists_msg += "\n"

                $stdout.print(already_exists_msg)
            else
                FileUtils.cp(stub_path, config_path)
                $stdout.puts("#{config_path} has been created with the required configuration.")
            end
        end
    end
end
