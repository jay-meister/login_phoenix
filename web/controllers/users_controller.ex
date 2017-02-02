defmodule HelloPhoenix.UsersController do
  use HelloPhoenix.Web, :controller

  alias HelloPhoenix.Users

    # # render login view
    # def login(conn, _params) do
    #   render conn, "login.html", id: 0
    # end
    #
    def login_post(conn, %{"users" => login_payload}) do
      # login_payload = %{"email" => "a", "password" => "dd"}
      if login_payload === %{"email" => "jackum", "password" => "123"} do
          render conn, "greet.html", email: login_payload["email"]
      else
        changeset = Users.changeset(%Users{})
        IO.inspect(changeset)
        render conn, "login.html", changeset: changeset
      end
    end

    def login(conn, _params) do
      changeset = Users.changeset(%Users{})
      render conn, "login.html", changeset: changeset
    end

    # def login_post(conn, %{"post" => post_params}) do
    #   changeset = Post.changeset(%Post{}, post_params)
    #
    #   case Repo.insert(changeset) do
    #     {:ok, _post} ->
    #       conn
    #       |> put_flash(:info, "Post created successfully.")
    #       |> redirect(to: post_path(conn, :index))
    #     {:error, changeset} ->
    #       render(conn, "new.html", changeset: changeset)
    #   end
    # end

end
