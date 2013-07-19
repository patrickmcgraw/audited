require 'rails/railtie'

module Audited
  module ActiveRecord
    class Railtie < ::Rails::Railtie

      #config.after_initialize do |app|
      ActiveSupport.on_load(:active_record) do
        require 'audited'
        require 'audited/adapters/active_record'
      end

    end
  end
end
