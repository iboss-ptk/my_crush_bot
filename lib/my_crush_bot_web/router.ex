defmodule MyCrushBotWeb.Router do
  use MyCrushBotWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", MyCrushBotWeb do
    pipe_through(:api)

    post("/webhook", BotController, :webhook)
  end
end
