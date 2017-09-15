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
    get "/emoji_hashes", PageController, :emoji_hashes
    get "/emoji_hashes_old", PageController, :emoji_hashes_old
    get "/emojichain", PageController, :emojichain
    get "/ring_buffers", PageController, :ring_buffers
    get "/linked_lists", PageController, :linked_lists
    get "/thinking_in_logs", PageController, :thinking_in_logs
    get "/dags", PageController, :dags
    get "/merkle_trees", PageController, :merkle_trees

    get "/euclid", PageController, :euclid_index
    get "/euclid/1", PageController, :euclid_1
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChriscatesWeb do
  #   pipe_through :api
  # end
end
