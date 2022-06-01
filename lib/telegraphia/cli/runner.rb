# frozen_string_literal: true

module Telegraphia
  module CLI
    class Runner < Thor
      def self.exit_on_failure?
        true
      end

      desc 'new APP_NAME', 'generate the new application'
      def new(app_name)
        p app_name
      end
    end
  end
end
