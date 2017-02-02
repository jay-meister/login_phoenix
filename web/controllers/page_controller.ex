defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  # def login_post(conn, %{"id" => id}) do
  #   # Check that id is ok, if ok, return login.html with the user id displayed
  #   IO.puts "id from path is #{id}.. So user is not logged in"
  #   render conn, "login.html"
  # end
end
