defmodule Marketing.CampaignsDb do
  @spec message() :: Map.t()
  def message do
    %{
      "vip_offer" =>
        "🌟 Exclusive Offer Inside! 🌟 Unlock VIP savings on your next transaction! Limited time only. Tap to reveal your special offer.",
      "flash_sale" =>
        "🎁 Flash Sale Alert! 🎉Don't miss out! Today only – incredible deals waiting for you. Tap now to shop and save!",
      "saving_money" =>
        "🏦 Boost Your Savings! 💰 Earn extra interest with our exclusive savings offer. Limited time only - tap to seize the opportunity now!"
    }
  end

  @spec get_key(String.t(), String.t()) :: String.t()
  def get_key(message_key, custom_message) do
    case Map.get(message(), message_key) do
      nil -> custom_message
      message -> message
    end
  end
end
