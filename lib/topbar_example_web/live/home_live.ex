defmodule TopbarExampleWeb.HomeLive do
  use TopbarExampleWeb, :live_view

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <div class="container">
      <h1>Home</h1>
    </div>
    """
  end

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
