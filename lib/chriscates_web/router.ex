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
    get "/resume", PageController, :resume
    get "/bits_bytes_bitwise", PageController, :bits_bytes_bitwise
    get "/emoji_hashes", PageController, :emoji_hashes
    get "/emoji_hashes_old", PageController, :emoji_hashes_old
    get "/emojichain", PageController, :emojichain
    get "/ring_buffers", PageController, :ring_buffers
    get "/linked_lists", PageController, :linked_lists
    get "/thinking_in_logs", PageController, :thinking_in_logs
    get "/dags", PageController, :dags
    get "/merkle_trees", PageController, :merkle_trees
    get "/poker_and_ether", PageController, :poker_and_ether
    get "/fft", PageController, :fft
    get "/rust_vs_c", PageController, :rust_vs_c
    get "/number_theory", PageController, :number_theory
    get "/cyclotomic_polynomials", PageController, :cyclotomic_polynomials
    get "/back_to_rust", PageController, :back_to_rust
    get "/rust_ledger", PageController, :rust_ledger
    get "/rust_merge_sort", PageController, :rust_merge_sort
    get "/sort_binary_array", PageController, :sort_binary_array
    get "/binary_search_tree", PageController, :binary_search_tree
    get "/intelligent_graphs", PageController, :intelligent_graphs
    get "/division_algorithm", PageController, :division_algorithm
    get "/emoji_contract", PageController, :emoji_contract

    get "/euclid", PageController, :euclid_index
    get "/euclid/1", PageController, :euclid_1
    get "/euclid/2", PageController, :euclid_2
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChriscatesWeb do
  #   pipe_through :api
  # end
end
