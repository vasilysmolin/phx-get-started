defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

#  def index(conn, _params) do
#    conn
#    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
#    |> put_flash(:error, "Let's pretend we have an error.")
#    |> render("index.html")
#  end
#
##  def show(conn, %{"messenger" => messenger}) do
##    render(conn, "show.html", messenger: messenger)
##  end
#
#  def show(conn, %{"messenger" => messenger}) do
#    text(conn, "From messenger #{messenger}")
#  end

  def show(conn, _params) do
    page = %{title: "foo"}

    render(conn, "show.json", page: page)
  end

  def index(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]

    render(conn, "index.json", pages: pages)
  end

#  def show(conn, %{"messenger" => messenger}) do
#    json(conn, %{id: messenger})
#  end

#  def show(conn, %{"messenger" => messenger}) do
#    conn
#    |> put_root_layout("admin.html")
#    |> assign(:messenger, messenger)
#    |> assign(:receiver, "Dweezil")
#    |> render("show.html")
#  end

#  def index(conn, _params) do
#    conn
#    |> put_resp_content_type("text/plain")
#    |> send_resp(201, "")
#  end

#  def index(conn, _params) do
#    conn
#    |> put_status(202)
#    |> render("index.html")
#  end

#  def index(conn, _params) do
#    redirect(conn, to: "/redirect_test")
#  end

#  def index(conn, _params) do
#    redirect(conn, external: "https://elixir-lang.org/")
#  end
end
