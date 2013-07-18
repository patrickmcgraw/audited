require 'rails/railtie'

module Audited
  module ActiveRecord
    class Railtie < ::Rails::Railtie

      config.after_initialize do |app|
        require 'audited'
        require 'audited/adapters/active_record'
      end

    end
  end
end
