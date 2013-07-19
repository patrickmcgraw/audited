require 'rails/railtie'

module Audited
  module ActiveRecord
    class Railtie < ::Rails::Railtie

      initialize "audited.activerecord", after: "active_record.observer" do
        ActiveSupport.on_load(:active_record) do
          require 'audited'
          require 'audited/adapters/active_record'
        end
      end

    end
  end
end
