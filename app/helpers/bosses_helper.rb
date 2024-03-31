module BossesHelper
  def boss_check_link(boss)
    link_to "Mark as Checked", boss_check_path(boss), method: :post
  end

  def boss_found_link(boss)
    link_to "Mark as Found", boss_found_path(boss), method: :post
  end
end
