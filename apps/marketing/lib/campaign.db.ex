defmodule Marketing.CampaignsDb do
  @spec message() :: Map.t()
  def message do
    %{
      "vip_offer" =>
        "🌟 Exclusive Offer Inside! 🌟 Unlock VIP savings on your next transaction! Limited time only. Tap to reveal your special offer.",
      "flash_sale" =>
        "🎁 Flash Sale Alert! 🎉Don't miss out! Today only - incredible deals waiting for you. Tap now to shop and save!",
      "saving_money" =>
        "🏦 Boost Your Savings! 💰 Earn extra interest with our exclusive savings offer. Limited time only - tap to seize the opportunity now!",
      "credit_card_offer" =>
        "💳 Exclusive Credit Card Benefits! 💸 Upgrade your card for perks like cashback, rewards, and more. Tap to explore your options!",
      "budgeting_tips" =>
        "📊 Master Your Finances! 💡 Get expert budgeting tips and tricks sent directly to your inbox. Tap to start your journey to financial success!",
      "security_alert" =>
        "🚨 Security Alert: Protect Your Account! Review recent transactions and ensure your account's safety. Your security is our top priority."
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
