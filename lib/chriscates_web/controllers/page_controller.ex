defmodule ChriscatesWeb.PageController do
  use ChriscatesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html", title: "Chris Cates likes Software"
  end

  def bits_bytes_bitwise(conn, _params) do
    render conn, "bits_bytes_bitwise.html", title: "Bits, Bytes and Bitwise"
  end

  def emoji_hashes(conn, _params) do
    render conn, "emoji_hashes.html", title: "Emoji Hashes"
  end

end
