# frozen_string_literal: true

module Telegraphia
  module CLI
    module Commands
      class Base < Thor
        def self.banner(command, _namespace = nil, _subcommand = false)
          "#{basename} #{subcommand_prefix} #{command.usage}"
        end

        def self.subcommand_prefix
          name.gsub(/.*::/, '').gsub(/^[A-Z]/) do |match|
            match[0].downcase
          end.gsub(/[A-Z]/) { |match| "-#{match[0].downcase}" }
        end
      end
    end
  end
end
