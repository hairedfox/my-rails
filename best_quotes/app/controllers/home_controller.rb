class HomeController < Rulers::Controller
  def index
    File.read(File.join(File.dirname(__FILE__), "..", "..", "public", "index.html"))
  end
end
