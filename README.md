# KV

**TODO: Add description**

## CI based on
https://gist.github.com/joakimk/48ed80f1a7adb5f5ea27
http://www.zhubert.com/blog/2016/08/24/setting-up-circleci-for-an-elixir-phoenix-project/
I had to borrow a bit from both to get the build to find erlang and report test results.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `kv` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:kv, "~> 0.1.0"}]
    end
    ```

  2. Ensure `kv` is started before your application:

    ```elixir
    def application do
      [applications: [:kv]]
    end
    ```
