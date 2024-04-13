# Add this helper method to your BossesHelper or any appropriate helper file
module BossesHelper
  def time_since_last_check(boss)
    if boss.checked_at.present?
      time_ago_in_words(boss.checked_at) + " ago"
    else
      "Never checked"
    end
  end
end
