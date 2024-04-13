module GroupsHelper
  def boss_check_button(server, group, boss)
    button_to "Check",  check_server_group_path(server, group, boss), method: :put, class: "check btn-primary", data: { confirm: "Are you sure?" }
  end

  def boss_found_button(server, group, boss)
    button_to "Found",  found_server_group_path(server, group, boss), method: :put, class: "found btn-primary", data: { confirm: "Are you sure?" }
  end
end
