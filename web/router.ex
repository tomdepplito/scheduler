defmodule Scheduler.Router do
  use Scheduler.Web, :router

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

  scope "/", Scheduler do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/calendars", CalendarsController, :index
  end

  # Route all JS requests through /api
  scope "/api", Scheduler do
    pipe_through :api
  end
end
