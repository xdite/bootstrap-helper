require "rails"
require "bootstrap_helper/version"
require "action_view"

module BootstrapHelper
  module Rails
    if ::Rails.version < "3.1"
      require "bootstrap_helper/railtie"
    else
      require "bootstrap_helper/engine"
    end
  end
end