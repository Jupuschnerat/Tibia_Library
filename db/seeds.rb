# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing records to prevent duplicates in development
# user_id = 1

# owner1 = Owner.create(user_id: user_id)

# Group.destroy_all

# groups_data = [
#   { id: 1, name: "Group 1", owner_id: owner1.id },
#   { id: 2, name: "Group 2", owner_id: owner1.id },
#   { id: 3, name: "Group 3", owner_id: owner1.id },
#   { id: 4, name: "Group 4", owner_id: owner1.id },
#   { id: 5, name: "Group 5", owner_id: owner1.id },
#   { id: 6, name: "Group 6", owner_id: owner1.id },
#   { id: 7, name: "Group 7", owner_id: owner1.id },
#   { id: 8, name: "Group 8", owner_id: owner1.id },
#   { id: 9, name: "Group 9", owner_id: owner1.id },
#   { id: 10, name: "Group 10", owner_id: owner1.id },
#   { id: 11, name: "Group 11", owner_id: owner1.id },
#   { id: 12, name: "Group 12", owner_id: owner1.id },
#   { id: 13, name: "Group 13", owner_id: owner1.id },
#   { id: 14, name: "Group 14", owner_id: owner1.id },
#   { id: 15, name: "Group 15", owner_id: owner1.id },
#   { id: 16, name: "Group 16", owner_id: owner1.id },
#   { id: 17, name: "Group 17", owner_id: owner1.id },
#   { id: 18, name: "Group 18", owner_id: owner1.id },
#   { id: 19, name: "Group 19", owner_id: owner1.id },
#   { id: 20, name: "Group 20", owner_id: owner1.id },
#   { id: 21, name: "Group 21", owner_id: owner1.id },
#   { id: 22, name: "Group 22", owner_id: owner1.id },
#   { id: 23, name: "Group 23", owner_id: owner1.id },
#   { id: 24, name: "Group 24", owner_id: owner1.id },
#   { id: 25, name: "Group 25", owner_id: owner1.id },
#   { id: 26, name: "Group 26", owner_id: owner1.id },
#   { id: 27, name: "Group 27", owner_id: owner1.id },
#   { id: 28, name: "Group 28", owner_id: owner1.id },
#   { id: 29, name: "Group 29", owner_id: owner1.id },
#   { id: 30, name: "Group 30", owner_id: owner1.id },
#   { id: 31, name: "Group 31", owner_id: owner1.id },
#   { id: 32, name: "Group 32", owner_id: owner1.id },
#   { id: 33, name: "Group 33", owner_id: owner1.id },
#   { id: 34, name: "Group 34", owner_id: owner1.id },
#   { id: 35, name: "Group 35", owner_id: owner1.id },
#   { id: 36, name: "Group 36", owner_id: owner1.id },
#   { id: 37, name: "Group 37", owner_id: owner1.id },
#   { id: 38, name: "Group 38", owner_id: owner1.id },
#   { id: 39, name: "Group 39", owner_id: owner1.id },
#   { id: 40, name: "Group 40", owner_id: owner1.id },
#   { id: 41, name: "Group 41", owner_id: owner1.id },
#   { id: 42, name: "Group 42", owner_id: owner1.id },
#   { id: 43, name: "Group 43", owner_id: owner1.id },
#   { id: 44, name: "Group 44", owner_id: owner1.id },
#   { id: 45, name: "Group 45", owner_id: owner1.id },
#   { id: 46, name: "Group 46", owner_id: owner1.id },
#   { id: 47, name: "Group 47", owner_id: owner1.id },
#   { id: 48, name: "Group 48", owner_id: owner1.id },
#   { id: 49, name: "Group 49", owner_id: owner1.id },
#   { id: 50, name: "Group 50", owner_id: owner1.id },
#   { id: 51, name: "Group 51", owner_id: owner1.id },
#   { id: 52, name: "Group 52", owner_id: owner1.id },
#   { id: 53, name: "Group 53", owner_id: owner1.id },
#   { id: 54, name: "Group 54", owner_id: owner1.id },
#   { id: 55, name: "Group 55", owner_id: owner1.id },
#   { id: 56, name: "Group 56", owner_id: owner1.id },
#   { id: 57, name: "Group 57", owner_id: owner1.id },
#   { id: 58, name: "Group 58", owner_id: owner1.id },
#   { id: 59, name: "Group 59", owner_id: owner1.id },
#   { id: 60, name: "Group 60", owner_id: owner1.id },
#   { id: 61, name: "Group 61", owner_id: owner1.id },
#   { id: 62, name: "Group 62", owner_id: owner1.id },
#   { id: 63, name: "Group 63", owner_id: owner1.id },
#   { id: 64, name: "Group 64", owner_id: owner1.id },
#   { id: 65, name: "Group 65", owner_id: owner1.id },
#   { id: 66, name: "Group 66", owner_id: owner1.id },
#   { id: 67, name: "Group 67", owner_id: owner1.id },
#   { id: 68, name: "Group 68", owner_id: owner1.id },
#   { id: 69, name: "Group 69", owner_id: owner1.id },
#   { id: 70, name: "Group 70", owner_id: owner1.id },
#   { id: 71, name: "Group 71", owner_id: owner1.id },
#   { id: 72, name: "Group 72", owner_id: owner1.id },
#   { id: 73, name: "Group 73", owner_id: owner1.id },
#   { id: 74, name: "Group 74", owner_id: owner1.id },
#   { id: 75, name: "Group 75", owner_id: owner1.id },
#   { id: 76, name: "Group 76", owner_id: owner1.id },
#   { id: 77, name: "Group 77", owner_id: owner1.id },
#   { id: 78, name: "Group 78", owner_id: owner1.id },
#   { id: 79, name: "Group 79", owner_id: owner1.id },
#   { id: 80, name: "Group 80", owner_id: owner1.id }

#   # Add more groups as needed
# ]

# # Create groups
# groups_data.each do |group|
#   Group.create!(id: group[:id], name: group[:name], owner_id: owner1.id)
# end

Server.destroy_all

servers_data = [
  { id: 1, name: "Ambra"},
  { id: 2, name: "Antica"},
  { id: 3, name: "Astera"},
  { id: 4, name: "Axera"},
  { id: 5, name: "Belobra"},
  { id: 6, name: "Bombra"},
  { id: 7, name: "Bona"},
  { id: 8, name: "Calmera"},
  { id: 9, name: "Castela"},
  { id: 10, name: "Celebra" },
  { id: 11, name: "Celesta" },
  { id: 12, name: "Collabra" },
  { id: 13, name: "Damora" },
  { id: 14, name: "Descubra" },
  { id: 15, name: "Dia" },
  { id: 16, name: "Epoca" },
  { id: 17, name: "Esmera" },
  { id: 18, name: "Etebra" },
  { id: 19, name: "Ferobra" },
  { id: 20, name: "Firmera" },
  { id: 21, name: "Flamera" },
  { id: 22, name: "Gentebra" },
  { id: 23, name: "Gladera" },
  { id: 24, name: "Gravitera" },
  { id: 25, name: "Guerribra" },
  { id: 26, name: "Harmonia" },
  { id: 27, name: "Havera" },
  { id: 28, name: "Honbra" },
  { id: 29, name: "Impulsa" },
  { id: 30, name: "Inabra" },
  { id: 31, name: "Issobra" },
  { id: 32, name: "Jacabra" },
  { id: 33, name: "Jadebra" },
  { id: 34, name: "Jaguna" },
  { id: 35, name: "Kalibra" },
  { id: 36, name: "Kardera" },
  { id: 37, name: "Kendria" },
  { id: 38, name: "Lobera" },
  { id: 39, name: "Luminera" },
  { id: 40, name: "Lutabra" },
  { id: 41, name: "Menera" },
  { id: 42, name: "Monza" },
  { id: 43, name: "Mykera" },
  { id: 44, name: "Nadora" },
  { id: 45, name: "Nefera" },
  { id: 46, name: "Nevia" },
  { id: 47, name: "Obscubra" },
  { id: 48, name: "Ombra" },
  { id: 49, name: "Ousabra" },
  { id: 50, name: "Pacera" },
  { id: 51, name: "Peloria" },
  { id: 52, name: "Premia" },
  { id: 53, name: "Quelibra" },
  { id: 54, name: "Quintera" },
  { id: 55, name: "Rasteibra" },
  { id: 56, name: "Refugia" },
  { id: 57, name: "Retalia" },
  { id: 58, name: "Runera" },
  { id: 59, name: "Secura" },
  { id: 60, name: "Serdebra" },
  { id: 61, name: "Solidera" },
  { id: 62, name: "Syrena" },
  { id: 63, name: "Talera" },
  { id: 64, name: "Thyria" },
  { id: 65, name: "Tornabra" },
  { id: 66, name: "Ulera" },
  { id: 67, name: "Ustebra" },
  { id: 68, name: "Utobra" },
  { id: 69, name: "Venebra" },
  { id: 70, name: "Vitera" },
  { id: 71, name: "Vunira" },
  { id: 72, name: "Wadira" },
  { id: 73, name: "Wildera" },
  { id: 74, name: "Wintera" },
  { id: 75, name: "Yonabra" },
  { id: 76, name: "Yovera" },
  { id: 77, name: "Yubra" },
  { id: 78, name: "Zephyra" },
  { id: 79, name: "Zuna" },
  { id: 80, name: "Zunera" }
]

# Destroy all existing users
servers_data.each do |server_data|
  Server.create!(
    id: server_data[:id],
    name: server_data[:name],
    group_id: nil # No group association initially
  )
end

puts "Servers seeded sucessfully."

# Clear existing records to prevent duplicates in development
Boss.destroy_all

  def format_window(janela)
    case janela
    when /\d+ to \d+/
      "#{janela} days"  # If format matches, return as it is
    when "unknown"
      "Unknown"  # If 'unknown', return as 'Unknown'
    when "random"
      "Random"   # If 'random', return as 'Random'
    else
      "Unknown"  # Default case, treat it as 'Unknown'
    end
  end

# Define your bosses data
bosses_data = [
  { id: 1, name: 'Arachir The Ancient One', janela: '6 to 9', local: 'Drefia', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 2, name: 'Barbaria', janela: '8 to 13', local: 'Barbarian Camp', image_path: 'Barbaria.gif' },
  { id: 3, name: 'Battlemaster Zunzu', janela: '3 to 9', local: 'Muggy Plains (Zao)', image_path: 'Battlemaster_Zunzu.gif' },
  { id: 4, name: 'Big Boss Trolliver', janela: '3 to 8', local: 'Edron', image_path: 'Big_Boss_Trolliver.gif' },
  { id: 5, name: 'Captain Jones', janela: '6 to 10', local: 'Ghost Ship', image_path: 'Captain_Jones.gif' },
  { id: 6, name: 'Countess Sorrow', janela: '14 to 21', local: 'PoI Bazir', image_path: 'Countess_Sorrow.gif' },
  { id: 7, name: 'Cublarc The Plunderer', janela: '6 to 9', local: 'Zao Steppe', image_path: 'Cublarc_the_Plunderer.gif' },
  { id: 8, name: 'Dharalion', janela: '6 to 8', local: 'Venore', image_path: 'Dharalion.gif' },
  { id: 9, name: 'Diblis The Fair', janela: '10 to 16', local: 'Edron', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 10, name: 'Dracola', janela: '14 to 21', local: 'PoI Ashfalor', image_path: 'Dracola.gif' },
  { id: 11, name: 'Dreadmaw', janela: '1 to 17', local: 'Muggy Plains (Zao)', image_path: 'Dreadmaw.gif' },
  { id: 12, name: 'Flamecaller Zazrak', janela: '5 to 17', local: 'Muggy Plains (Zao)', image_path: 'Flamecaller_Zazrak.gif' },
  { id: 13, name: 'Fleabringer', janela: '5 to 31', local: 'Muggy Plains (Zao)', image_path: 'Fleabringer.gif' },
  { id: 14, name: 'Foreman Kneebiter', janela: '3 to 8', local: 'Kazordoon', image_path: 'Foreman_Kneebiter.gif' },
  { id: 15, name: 'General Murius', janela: '6 to 9', local: 'Mintwallin', image_path: 'General_Murius.gif' },
  { id: 16, name: 'Grandfather Tridian', janela: '6 to 9', local: 'Liberty Bay', image_path: 'Grandfather_Tridian.gif' },
  { id: 17, name: 'Gravelord Oshuran', janela: '7 to 12', local: 'Drefia', image_path: 'Gravelord_Oshuran.gif' },
  { id: 18, name: 'Grorlam', janela: '3 to 8', local: 'Thais', image_path: 'Grorlam.gif' },
  { id: 19, name: 'Hairman The Huge', janela: '5 to 10', local: 'Banuta', image_path: 'Hairman_The_Huge.gif' },
  { id: 20, name: 'Hatebreeder', janela: '6 to 9', local: 'Razachai (Zao)', image_path: 'Hatebreeder.gif' },
  { id: 21, name: 'High Templar Cobrass', janela: '6 to 9', local: 'Chor', image_path: 'High_Templar_Cobrass.gif' },
  { id: 22, name: 'Hirintror', janela: '10 to 30', local: 'Formorgar', image_path: 'Hirintror.gif' },
  { id: 23, name: 'Hirintror', janela: '10 to 30', local: 'Nibelor', image_path: 'Hirintror.gif' },
  { id: 24, name: 'Man in the Cave', janela: '12 to 16', local: 'Svargrond', image_path: 'Man_In_The_Cave.gif' },
  { id: 25, name: 'Massacre', janela: '14 to 21', local: 'PoI Apocalypse', image_path: 'Massacre.gif' },
  { id: 26, name: 'Mr. Punish', janela: '14 to 21', local: 'PoI Tafariel', image_path: 'Mr._Punish.gif' },
  { id: 27, name: 'Ocyakao', janela: '16 to 26', local: 'Svargrond', image_path: 'Ocyakao.gif' },
  { id: 28, name: 'Omrafir', janela: '14 to 28', local: 'Roshamuul Prision', image_path: 'Omrafir.gif' },
  { id: 29, name: 'Rotworm Queen', janela: '12 to 16', local: 'Darashia', image_path: 'Rotworm_Queen.gif' },
  { id: 30, name: 'Rotworm Queen', janela: '12 to 16', local: 'Edron', image_path: 'Rotworm_Queen.gif' },
  { id: 31, name: 'Rotworm Queen', janela: '12 to 16', local: 'Hellgate', image_path: 'Rotworm_Queen.gif' },
  { id: 32, name: 'Rotworm Queen', janela: '12 to 16', local: 'Liberty Bay', image_path: 'Rotworm_Queen.gif' },
  { id: 33, name: 'Rukor Zad', janela: '6 to 9', local: 'Dark Cathedral', image_path: 'Rukor_Zad.gif' },
  { id: 34, name: 'Shlorg', janela: '13 to 29', local: 'Edron', image_path: 'Shlorg.gif' },
  { id: 35, name: 'Sir Valorcrest', janela: '5 to 9', local: 'Edron', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 36, name: 'Smuggler Baron Silvertoe', janela: '8 to 16', local: 'Port Hope', image_path: 'Smuggler_Baron_Silvertoe.gif' },
  { id: 37, name: 'The Big Bad One', janela: '6 to 11', local: 'Edron', image_path: 'The_Big_Bad_One.gif' },
  { id: 38, name: 'The Evil Eye', janela: '6 to 12', local: 'Hellgate', image_path: 'The_Evil_Eye.gif' },
  { id: 39, name: 'The Frog Prince', janela: '12 to 19', local: 'Thais', image_path: 'The_Frog_Prince.gif' },
  { id: 40, name: 'The Handmaiden', janela: '14 to 21', local: 'PoI Pumin', image_path: 'The_Handmaiden.gif' },
  { id: 41, name: 'The Imperor', janela: '14 to 21', local: 'PoI Infernatil', image_path: 'The_Imperor.gif' },
  { id: 42, name: 'The Old Whopper', janela: '5 to 11', local: 'Edron', image_path: 'The_Old_Whopper.gif' },
  { id: 43, name: 'The Plasmother', janela: '14 to 21', local: 'PoI Verminor', image_path: 'The_Plasmother.gif' },
  { id: 44, name: 'The Voice of Ruin', janela: '6 to 17', local: 'Zao', image_path: 'The_Voice_of_Ruin.gif' },
  { id: 45, name: 'The Welter', janela: '16 to 29', local: 'Port Hope', image_path: 'The_Welter.gif' },
  { id: 46, name: 'Tyrn', janela: '12 to 25', local: 'Drefia', image_path: 'Tyrn.gif' },
  { id: 47, name: 'Tyrn', janela: '12 to 25', local: 'Liberty Bay', image_path: 'Tyrn.gif' },
  { id: 48, name: 'Tzumrah The Dazzler', janela: '20 to 28', local: '', image_path: 'Grandfather_Tridian.gif' },
  { id: 49, name: 'Warlord Ruzad', janela: '6 to 9', local: 'Orc Fortress', image_path: 'Warlord_Ruzad.gif' },
  { id: 50, name: 'White Pale', janela: '17 to 37', local: 'Darashia', image_path: 'White_Pale.gif' },
  { id: 51, name: 'White Pale', janela: '17 to 37', local: 'Edron', image_path: 'White_Pale.gif' },
  { id: 52, name: 'White Pale', janela: '17 to 37', local: 'Liberty Bay', image_path: 'White_Pale.gif' },
  { id: 53, name: 'Xenia', janela: '7 to 14', local: 'Venore', image_path: 'Xenia.gif' },
  { id: 54, name: 'Yaga The Crone', janela: '5 to 7', local: 'Venore', image_path: 'Yaga_the_Crone.gif' },
  { id: 55, name: 'Zevelon Duskbringer', janela: '6 to 10', local: 'Hellgate', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 56, name: 'Zushuka', janela: '19 to 29', local: 'Svargrond', image_path: 'Zushuka.gif' },
  { id: 57, name: 'Burster', janela: 'Farmable Spawn', local: 'Kazordoon - The Void', image_path: 'Burster.gif'},
  { id: 58, name: 'Dreadful Disruptor', janela: 'Farmable Spawn', local: 'Edron - The Void', image_path: 'Dreadful_Disruptor.gif'},
  { id: 59, name: 'Mahatheb', janela: 'Farmable Spawn', local: 'Edron Forgotten Tomb', image_path: 'Mahatheb.gif'},
  { id: 60, name: 'Elvira Hammerthrust', janela: 'Unknown', local: 'Dwarf Mines - Kazordoon', image_path: 'Elvira_Hammerthrust.gif'},
  { id: 61, name: 'Jesse the Wicked', janela: 'Unknown', local: 'Ancient Temple - Thais', image_path: 'Jesse_the_Wicked.gif'},
  { id: 62, name: 'Mornenion', janela: 'Unknown', local: 'Shadowthorn - Venore', image_path: 'Mornenion.gif'},
  { id: 63, name: 'Robby the Reckless', janela: 'Unknown', local: 'Ghostlands - Carlin', image_path: 'Robby_the_Reckless.gif'},
  { id: 64, name: 'Yakchal', janela: 'Unknown', local: 'Formorgar Mines', image_path: 'Yakchal.gif'},
  { id: 65, name: 'Groam', janela: 'Unknown', local: 'Kazordoon', image_path: 'Groam.gif'},
  { id: 66, name: 'Furyosa', janela: 'Unknown', local: 'Fury Gate', image_path: 'Furyosa.gif'},
  { id: 67, name: 'The Hungerer', janela: 'Unknown', local: 'Hive', image_path: 'The_Hungerer.gif'},
  { id: 68, name: 'The Mean Masher', janela: 'Unknown', local: 'Hive', image_path: 'The_Mean_Masher.gif'},
  { id: 69, name: 'The Manhunter', janela: 'Unknown', local: 'Hive', image_path: 'The_Manhunter.gif'},
  { id: 70, name: 'Arthom The Hunter', janela: 'Random', local: 'Port Hope', image_path: 'Arthom_the_Hunter.gif'},
  { id: 71, name: 'Oodok Witchmaster', janela: 'Random', local: 'Port Hope', image_path: 'Oodok_Witchmaster.gif'},

  # Add more bosses as needed
]
bosses_data.each do |boss_data|
  janela = boss_data[:janela]

  # Format the window attribute
  window = format_window(janela)

  # Calculate start_window and end_window if janela is in the expected format
  if janela =~ /\d+ to \d+/
    start_window_offset, end_window_offset = janela.scan(/\d+/).map(&:to_i)
    found_at = Time.now
    start_window = found_at + start_window_offset.days
    end_window = found_at + end_window_offset.days
  else
    start_window = nil
    end_window = nil
  end

  # Create the Boss object
  boss = Boss.new(
    id: boss_data[:id],
    name: boss_data[:name],
    local: boss_data[:local],
    start_window: start_window,
    end_window: end_window,
    window: window
  )

  # Attach image to boss if image_path is present
  if boss_data[:image_path].present?
    boss.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', boss_data[:image_path])), filename: boss_data[:image_path])
  end

  # Save the Boss object
  boss.save!
end

puts 'Bosses seeded successfully.'

# Clear existing records to prevent duplicates in development
RaidBoss.destroy_all

# Define your raid bosses data
raid_bosses_data = [
  { id: 1, name: 'Cublarc the Plunderer', janela: '5 to 10 days', local: 'Zao Steppe', message: 'An orcish horde [...]', description: 'After 5/18/30 min', image_path: 'Cublarc_the_Plunderer.gif' },
  { id: 2, name: 'Ferumbras', janela: '161 to 175 days', local: 'Kharos', message: "The seals on Ferumbras' old citadel [...]", description: 'Spawns after 20 min', image_path: 'Ferumbras.gif' },
  { id: 3, name: "Gaz'haragoth", janela: '14 to 28 days', local: 'Roshamuul', message: "Gaz'haragoth will shatter your dreams [...]", description: 'Spawns right away', image_path: "Gaz'Haragoth.gif" },
  { id: 4, name: 'Ghazbaran', janela: '161 to 175 days', local: 'Formorgar Mines', message: 'An ancient evil is awakening [...]', description: 'Spawns after 20 min', image_path: 'Ghazbaran.gif' },
  { id: 5, name: 'Grand Mother Foulscale', janela: '5 to 10 days', local: 'Muggy Plains', message: 'The dragons of the Dragonblaze Mountains [...]', description: 'Spawns after 25 min', image_path: 'Grand_Mother_Foulscale.gif' },
  { id: 6, name: 'Morgaroth', janela: '168 to 175 days', local: 'Goroma', message: 'The ancient volcano on Goroma [...]', description: 'Spawns after 12 min', image_path: 'Morgaroth.gif' },
  { id: 7, name: 'Morshabaal', janela: '154 to 175 days', local: 'Edron', message: "Beware mortals! Orshabaal's brother [...]", description: 'Spawns right away', image_path: 'Morshabaal.gif' },
  { id: 8, name: 'Orshabaal', janela: '154 to 175 days', local: 'Edron', message: "Orshabaal's minions are working [...]", description: 'Spawns after 6:40 min', image_path: 'Orshabaal.gif' },
  { id: 9, name: 'The Abomination', janela: '155 to 174 days', local: '4 Portals out of 10 possible locations: Edron Cyclopolis, Svargrond Formorgar Mines, Kazordoon Dwarf Mines, Beregar, Ankrahmun, Gnomebase Alpha, Zao Steppe, Krailos, Dark Cathedral and Hellgate', message: 'Something abnominale is rising [...]', description: 'Spawns right away', image_path: 'The_Abomination.gif' },
  { id: 10, name: 'The Blightfather', janela: '5 to 10 days', local: 'Muggy Plains', message: 'Like a swarm of locusts [...]', description: 'Spawns after 30 min', image_path: 'The_Blightfather.gif' },
  { id: 11, name: 'The Pale Count', janela: '16 to 30 days', local: 'Drefia', message: 'The Pale Count has risen [...]', description: 'Spawns after 4 min', image_path: 'The_Pale_Count.gif' },
  { id: 12, name: 'Willi Wasp', janela: '5 to 10 days', local: 'Carlin', message: 'Some wasps have been found [...]', description: 'Spawns after 5 min', image_path: 'Willi_Wasp.gif' },
  { id: 13, name: 'Zomba', janela: '3 to 9 days', local: 'Darashia', message: 'Hungry lions scout [...]', description: 'Spawns after 5 min', image_path: 'Zomba.gif' },
  { id: 14, name: 'Zulazza the Corruptor, Chizzoron the Disorter & Cublarc The Plunderer', janela: '7 to 20 days', local: 'Zzaion Gates and Zzaion Tower', message: 'A massive orc force [...]', description: 'After 20 min, Cublarc spawns around Zzaion Gates and after 30 min, Zulazza & Chizzaron spawn on Zzaion Tower', image_paths: ['Zulazza_the_Corruptor.gif', 'Chizzoron_the_Distorter.gif', 'Cublarc_the_Plunderer.gif'] },
  # Add more raid bosses as needed
]

raid_bosses_data.each do |raid_boss_data|
  raid_boss = RaidBoss.create!(
    id: raid_boss_data[:id],
    name: raid_boss_data[:name],
    message: raid_boss_data[:message],
    janela: raid_boss_data[:janela],
    local: raid_boss_data[:local],
    description: raid_boss_data[:description]
  )

  # Check if the image_paths key exists and if it's an array
  if raid_boss_data.key?(:image_paths) && raid_boss_data[:image_paths].is_a?(Array)
    # Attach images using Active Storage
    raid_boss_data[:image_paths].each do |image_path|
      raid_boss.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', image_path)), filename: image_path)
    end
  else
    # If image_paths key doesn't exist or is not an array, attach a single image
    raid_boss.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', raid_boss_data[:image_path])), filename: raid_boss_data[:image_path])
  end
end

puts 'Raid Bosses seeded successfully.'

# Clear existing records to prevent duplicates in development
EventBoss.destroy_all

# Define your event bosses data
event_bosses_data = [
  { id: 1, name: 'Arthom The Hunter & Oodok Witchmaster', local: 'Jungle Camp MWC', description: 'Treat them as Rare Spawns, as they can appear randomly more than once within the same day.', image_paths: ['Arthom_the_Hunter.gif', 'Oodok_Witchmaster.gif'] },
  { id: 2, name: 'Furyosa', local: 'Fury Gates MWC', description: 'Find the currently active Fury Gate, and treat it as a Rare Spawn, checking it often', image_path: 'Furyosa.gif' },
  { id: 3, name: 'The Hungerer, The Manhunter & The Mean Masher', local: 'Hive Outpost MWC', description: 'Treat them as Farmable Spawns.', image_paths: ['The_Hungerer.gif', 'The_Manhunter.gif', 'The_Mean_Masher.gif'] },
  { id: 4, name: 'Devovorga, Anmothra, Irahsae, Teneshpar, Chikhaton & Phrodomo', local: "The Rise of Devovorga Event (once a year), or Devovorga's Essence MWC", description: 'During the Event, the five minions will be available but each one with certain level range limitations. During the MWC, all of them are available, but you will have to defeat them alone. Devovorga herself is available during the Event and you should treat her as Raid Boss.', image_paths: ['Devovorga.gif', 'Anmothra.gif', 'Irahsae.gif', 'Teneshpar.gif', 'Chikhaton.gif', 'Phrodomo.gif'] },
  { id: 5, name: 'Bane Lord', local: 'Bewitched Event (once a year)', description: 'Treat it as a Raid Boss. It will randomly appear during raids every 8 hours.', image_path: 'Bane_Lord.gif' },
  { id: 6, name: 'Feroxa', local: 'Grimvale Event (once a month)', description: 'Treat her as a Raid Boss. Her raid happens in Grimvale every 13th of the month.', image_path: 'Feroxa_(Mortal).gif' },
  { id: 7, name: 'King Chuck', local: 'Orcsoberfest Event (twice a year)', description: 'Treat him as a Quest Boss. Kill him once every hour, up to 3 times in a 20 hour window.', image_path: 'King_Chuck.gif' },
  { id: 8, name: 'The First Dragon', local: 'The First Dragon Event (once a year)', description: 'Treat it as a Quest Boss.', image_path: 'The_First_Dragon.gif' },
  { id: 9, name: 'The Mutated Pumpkin', local: 'Halloween Event (once a year)', description: 'Treat it as a Raid Boss. Its raid happens every 4 hours between Oct 31 and Nov 3.', image_path: 'The_Mutated_Pumpkin.gif' },
  { id: 10, name: 'The Percht Queen', local: 'Winterlight Solstice Event (twice a year)', description: 'Treat her as a Quest Boss. Kill her once every 20 hours', image_path: 'The_Percht_Queen.gif' },
]

# Create event bosses
event_bosses_data.each do |event_boss_data|
  event_boss = EventBoss.create!(
    id: event_boss_data[:id],
    name: event_boss_data[:name],
    local: event_boss_data[:local],
    description: event_boss_data[:description]
  )

  # Attach images using Active Storage
  if event_boss_data.key?(:image_paths) && event_boss_data[:image_paths].is_a?(Array)
    event_boss_data[:image_paths].each do |image_path|
      event_boss.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', image_path)), filename: image_path)
    end
  else
    event_boss.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', event_boss_data[:image_path])), filename: event_boss_data[:image_path])
  end
end

puts 'Event Bosses seeded successfully.'

# Clear existing records to prevent duplicates
QuestBoss.destroy_all

# Define quest bosses data
quest_bosses_data = [
  { id: 1, name: 'Horestis', description: "The Mummy's Curse World Change. Only a handful of players can defeat him when it is active, as there are limited canopic jars. You may want to check with city guides early in the day to be among the first players to go there.", image_path: 'Horestis.gif' },
  { id: 2, name: 'Raxias', description: 'You should ask Charles for a shortcut every 20h, as Raxias is one of the possible outcomes when his ship wrecks.', image_path: 'Raxias.gif' },
  { id: 3, name: 'Ferumbras Mortal Shell', description: "Ferumbras' Ascendant Quest. Kill it every 14 days.", image_path: 'Ferumbras_Mortal_Shell.gif' },
  { id: 4, name: "Goshnar's Megalomania", description: 'Soul War Quest. Kill it every 3 days.', image_path: "Goshnar's_Megalomania.gif" },
  { id: 5, name: 'Lizard Gate Guardian', description: 'Children of the Revolution Quest. Kill it every 7 days.', image_path: 'Lizard_Gate_Guardian.gif' },
  { id: 6, name: 'The Last Lore Keeper', description: 'Forgotten Knowledge Quest. Kill it every 14 days.', image_path: 'The_Last_Lore_Keeper.gif' },
  { id: 7, name: 'World Devourer', description: 'Heart of Destruction Quest. Kill it every 14 days.', image_path: 'World_Devourer.gif' },
  { id: 8, name: 'Alptramun', description: 'The Dreamcourts Quest', image_path: 'Alptramun.gif' },
  { id: 9, name: 'Izcandar Champion of Summer', description: 'The Dreamcourts Quest', image_path: 'Izcandar_Champion_of_Summer.gif' },
  { id: 10, name: 'Izcandar Champion of Winter', description: 'The Dreamcourts Quest', image_path: 'Izcandar_Champion_of_Winter.gif' },
  { id: 11, name: 'Izcandar the Banished', description: 'The Dreamcourts Quest', image_path: 'Izcandar_the_Banished.gif' },
  { id: 12, name: 'Malofur Mangrinder', description: 'The Dreamcourts Quest', image_path: 'Malofur_Mangrinder.gif' },
  { id: 13, name: 'Maxxenius', description: 'The Dreamcourts Quest', image_path: 'Maxxenius.gif' },
  { id: 14, name: 'Plagueroot', description: 'The Dreamcourts Quest', image_path: 'Plagueroot.gif' },
  # Add more quest bosses as needed
]

# Create quest bosses
quest_bosses_data.each do |quest_boss_data|
  quest_boss = QuestBoss.create!(
    id: quest_boss_data[:id],
    name: quest_boss_data[:name],
    description: quest_boss_data[:description]
  )

  quest_boss.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', quest_boss_data[:image_path])), filename: quest_boss_data[:image_path])
end

puts 'Quest Bosses seeded successfully.'
