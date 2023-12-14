defmodule Marketing.Kafka do
  use Broadway

  def start_link(_opts) do
    Broadway.start_link(__MODULE__,
      name: __MODULE__,
      producer: [
        module:
          {BroadwayKafka.Producer,
           [
             hosts: "localhost:9092",
             group_id: "marketing",
             topics: ["notifications"],
             client_config: []
           ]},
        concurrency: 10
      ],
      processors: [
        default: [concurrency: 1]
      ]
    )
  end

  @impl true
  def handle_message(_processor, message, _context) do
    IO.inspect("Processing #{inspect(message)}")

    # Call the database, call some APIs, etc

    message
  end
end
