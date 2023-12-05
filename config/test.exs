import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :core_web, CoreWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QfRgq2nYKV+vgod9t9TIg84mw6gV0zUEJYx2NpYaJuKav9gx28m7zBNeJdkHV2wZ",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# In test we don't send emails.
config :core, Core.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
