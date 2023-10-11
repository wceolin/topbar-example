defmodule TopbarExample.Repo do
  use Ecto.Repo,
    otp_app: :topbar_example,
    adapter: Ecto.Adapters.Postgres
end
