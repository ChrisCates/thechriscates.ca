defmodule ChriscatesWeb.Router do
  use ChriscatesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChriscatesWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/bits_bytes_bitwise", PageController, :bits_bytes_bitwise
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChriscatesWeb do
  #   pipe_through :api
  # end
end