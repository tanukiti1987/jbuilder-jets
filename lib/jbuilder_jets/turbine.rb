# frozen_string_literal: true

require 'jbuilder'
require 'jbuilder/jbuilder_template'

module JbuilderJets
  class Turbine < ::Jets::Turbine
    initializer 'jbuilder' do
      ActiveSupport.on_load :action_view do
        ActionView::Template.register_template_handler :jbuilder, ::JbuilderHandler
        require 'jbuilder/dependency_tracker'
      end
    end
  end
end
