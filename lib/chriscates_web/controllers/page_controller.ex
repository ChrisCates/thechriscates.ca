defmodule ChriscatesWeb.PageController do
  use ChriscatesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html", title: "Chris Cates likes Software"
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

end
