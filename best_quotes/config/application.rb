require "rulers"

module BestQuotes
  class Application < Rulers::Application
    $LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
    require "quotes_controller"
    require "home_controller"
  end
end
