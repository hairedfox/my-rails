require "rulers/array"
require "rulers/routing"
require "rulers/version"

module Rulers
  class Application
    def call(env)
      case env["PATH_INFO"]
      when "/favicon.ico"
        return [404, {"Content-Type" => "text/html"}]
      when "/"
        env["PATH_INFO"] = "/home/index"
        @status = 301
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)

      [@status || 200, {"Content-Type" => "text/html"}, [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
