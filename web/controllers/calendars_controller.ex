defmodule Scheduler.CalendarsController do
  use Scheduler.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
