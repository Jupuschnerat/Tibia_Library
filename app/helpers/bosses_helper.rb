module BossesHelper
  def boss_check_button(boss)
    button_to "Check", boss_check_path(boss), method: :post, class: "btn btn-primary", data: { confirm: "Are you sure?" }
  end

  def boss_found_button(boss)
    button_to "Found", boss_found_path(boss), method: :post, class: "btn btn-primary", data: { confirm: "Are you sure?" }
  end
end
