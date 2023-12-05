defmodule CoreWeb.Router do
  @moduledoc false

  use CoreWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CoreWeb do
    pipe_through :api
  end
end
