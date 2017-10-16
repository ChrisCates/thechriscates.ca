defmodule ChriscatesWeb.PageController do
  use ChriscatesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html", title: "Chris Cates likes Software"
  end

  def resume(conn, _params) do
    render conn, "resume.html",
    layout: {ChriscatesWeb.LayoutView, "resume.html"},
    title: "Chris Cates | Resume"
  end

  def bits_bytes_bitwise(conn, _params) do
    render conn, "bits_bytes_bitwise.html", title: "Bits, Bytes and Bitwise"
  end

  def emoji_hashes(conn, _params) do
    render conn, "emoji_hashes2.html", title: "Emoji Hashes"
  end

  def emoji_hashes_old(conn, _params) do
    render conn, "emoji_hashes.html", title: "Emoji Hashes (Old)"
  end

  def emojichain(conn, _params) do
    render conn, "emojichain.html", title: "Emoji Blockchain Tech in 50 lines of code"
  end

  def ring_buffers(conn, _params) do
    render conn, "ring_buffers.html", title: "Non-Atomic Ring Buffers in Node.js"
  end

  def linked_lists(conn, _params) do
    render conn, "linked_lists.html", title: "Linked Lists and Blockchain"
  end

  def thinking_in_logs(conn, _params) do
    render conn, "thinking_in_logs.html", title: "Thinking in Logarithms"
  end

  def dags(conn, _params) do
    render conn, "dags.html", title: "What the heck are DAGs?"
  end

  def merkle_trees(conn, _params) do
    render conn, "merkle_trees.html", title: "Merkle Trees, unfortunately are not trees"
  end

  def poker_and_ether(conn, _params) do
    render conn, "poker_and_ether.html", title: "How to use Ethereum for gambling"
  end

  def fft(conn, _params) do
    render conn, "fft.html", title: "Sine, Cosine, Tangents and Fast Fourier Transforms"
  end

  def rust_vs_c(conn, _params) do
    render conn, "rust_vs_c.html", title: "Rust versus C/++"
  end

  def number_theory(conn, _params) do
    render conn, "number_theory.html", title: "Number Theory in Javascript"
  end

  def cyclotomic_polynomials(conn, _params) do
    render conn, "cyclotomic_polynomials.html", title: "Cyclotomic Polynomials and Phi Functions"
  end

  def back_to_rust(conn, _params) do
    render conn, "back_to_rust.html", title: "Going back to Rust: Initial Thoughts"
  end

  def rust_ledger(conn, _params) do
    render conn, "rust_ledger.html", title: "Building a blockchain ledger in Rust"
  end

  def rust_merge_sort(conn, _params) do
    render conn, "rust_merge_sort.html", title: "Notes about Merge Sort in Rust"
  end

  def sort_binary_array(conn, _params) do
    render conn, "sort_binary_array.html", title: "Sorting a Binary Array with O(n) complexity"
  end

  def binary_search_tree(conn, _params) do
    render conn, "binary_search_tree.html", title: "Help me improve this Binary Search Tree"
  end

  def intelligent_graphs(conn, _params) do
    render conn, "intelligent_graphs.html", title: "Intelligent Graphs in Rust (Part 1)"
  end

  def division_algorithm(conn, _params) do
    render conn, "division_algorithm.html", title: "Thoughts about Division"
  end

  def pow(conn, _params) do
    render conn, "pow.html", title: "How \"Proof of Work\" works"
  end


  def euclid_index(conn, _params) do
    render conn, "euclid_index.html", title: "The 13 Books of Euclid"
  end

  def euclid_1(conn, _params) do
    render conn, "euclid_1.html", title: "The 13 Books of Euclid: Proposition 1"
  end

  def euclid_2(conn, _params) do
    render conn, "euclid_2.html", title: "The 13 Books of Euclid: Proposition 2"
  end

end
