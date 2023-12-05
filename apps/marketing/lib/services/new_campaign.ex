defmodule Marketing.Services.NewCampaign do
  alias Marketing.CampaignsDb

  def run(message_key, custom_message) do
    CampaignsDb.get_key(message_key, custom_message)

    # publish to kafka
  end
end
