# TopbarExample

When navigating to a different `live_session`, the topbar is displayed twice on the page because the page fully reloads. This feels a little bit weird because it looks like the topbar starts when the page actually finished loading already.

See the [video](./demo.mov) for a demo.

## Steps to reproduce

- Run `mix setup`.
- Run `mix phx.server`.
- Enable latency on the browser console: `liveSocket.enableLatencySim(1000)`.
- Navigate from the "home" page to the "posts" one: The topbar is displayed only one because it's the same `live_session`.
- Navigate from the "posts" page to the "dashboard" one: The topbar is displayed twice because it's a different `live_session`.

## Expected behavior

I'm not sure if this is a bug or expected behavior, actually. But, in my view, the topbar should be displayed only once. It should start when the navigation begins and stop when the page is fully loaded.

## Workaround

Right now, I'm using a workaround to call `topbar.show` only when `info.detail.kind` is `redirect`. It prevents the topbar from being displayed twice, but I'm not sure that's the ideal solution.
