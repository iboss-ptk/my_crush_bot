defmodule MyCrushBotWeb.BotController do
  use MyCrushBotWeb, :controller
  import Line.Client
  require Logger

  plug(Line.Signature.Verification.Plug)

  def webhook(conn, %{"events" => [%{"replyToken" => replyToken}]}) do
    messages = [text(Enum.random(["ค่ะ", "ใช่", "อือ", "vnv", "555"]))]

    case messages |> reply(replyToken) do
      {:ok, resp} ->
        Logger.info(inspect(resp))
        conn |> send_resp(200, "OK")

      {:error, reason} ->
        Logger.error(inspect(reason))
        conn |> send_resp(500, "Internal server error")
    end
  end
end
