require "bootstrap_helper/helper"
require "bootstrap_helper/breadcrumb"
require "bootstrap_helper/paginate_renderer"
module BootstrapHelper
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootstrap_helper.view_helpers" do
        ActionView::Base.send :include, BootstrapHelper::Helper

      end

      config.to_prepare do
        ApplicationController.send :include, BootstrapHelper::Breadcrumb
      end

    end
  end
end
