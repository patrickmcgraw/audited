# Wire up the gem loading so it happens AFTER rails-observers has loaded
if RAILS::VERSION::MAJOR > 3
  require 'rails/railtie'

  module Audited
    module ActiveRecord
      class Railtie < ::Rails::Railtie

        initializer "audited.activerecord", after: "active_record.observer" do
          ActiveSupport.on_load(:active_record) do
            require 'audited'
            require 'audited/adapters/active_record'
          end
        end

      end
    end
  end

# Just load up the gem since observers are still in Rails
else 
  require 'audited'
  require 'audited/adapters/active_record'

end