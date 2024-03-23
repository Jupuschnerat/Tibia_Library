# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Server.create(id: 1, name: "Ambra")
Server.create(id: 2, name: "Antica")
Server.create(id: 3, name: "Astera")
Server.create(id: 4, name: "Axera")
Server.create(id: 5, name: "Belobra")
Server.create(id: 6, name: "Bombra")
Server.create(id: 7, name: "Bona")
Server.create(id: 8, name: "Calmera")
Server.create(id: 9, name: "Castela")
Server.create(id: 10, name: "Celebra")
Server.create(id: 11, name: "Celesta")
Server.create(id: 12, name: "Collabra")
Server.create(id: 13, name: "Damora")
Server.create(id: 14, name: "Descubra")
Server.create(id: 15, name: "Dia")
Server.create(id: 16, name: "Epoca")
Server.create(id: 17, name: "Esmera")
Server.create(id: 18, name: "Etebra")
Server.create(id: 19, name: "Ferobra")
Server.create(id: 20, name: "Firmera")
Server.create(id: 21, name: "Flamera")
Server.create(id: 22, name: "Gentebra")
Server.create(id: 23, name: "Gladera")
Server.create(id: 24, name: "Gravitera")
Server.create(id: 25, name: "Guerribra")
Server.create(id: 26, name: "Harmonia")
Server.create(id: 27, name: "Havera")
Server.create(id: 28, name: "Honbra")
Server.create(id: 29, name: "Impulsa")
Server.create(id: 30, name: "Inabra")
Server.create(id: 31, name: "Issobra")
Server.create(id: 32, name: "Jacabra")
Server.create(id: 33, name: "Jadebra")
Server.create(id: 34, name: "Jaguna")
Server.create(id: 35, name: "Kalibra")
Server.create(id: 36, name: "Kardera")
Server.create(id: 37, name: "Kendria")
Server.create(id: 38, name: "Lobera")
Server.create(id: 39, name: "Luminera")
Server.create(id: 40, name: "Lutabra")
Server.create(id: 41, name: "Menera")
Server.create(id: 42, name: "Monza")
Server.create(id: 43, name: "Mykera")
Server.create(id: 44, name: "Nadora")
Server.create(id: 45, name: "Nefera")
Server.create(id: 46, name: "Nevia")
Server.create(id: 47, name: "Obscubra")
Server.create(id: 48, name: "Ombra")
Server.create(id: 49, name: "Ousabra")
Server.create(id: 50, name: "Pacera")
Server.create(id: 51, name: "Peloria")
Server.create(id: 52, name: "Premia")
Server.create(id: 53, name: "Quelibra")
Server.create(id: 54, name: "Quintera")
Server.create(id: 55, name: "Rasteibra")
Server.create(id: 56, name: "Refugia")
Server.create(id: 57, name: "Retalia")
Server.create(id: 58, name: "Runera")
Server.create(id: 59, name: "Secura")
Server.create(id: 60, name: "Serdebra")
Server.create(id: 61, name: "Solidera")
Server.create(id: 62, name: "Syrena")
Server.create(id: 63, name: "Talera")
Server.create(id: 64, name: "Thyria")
Server.create(id: 65, name: "Tornabra")
Server.create(id: 66, name: "Ulera")
Server.create(id: 67, name: "Ustebra")
Server.create(id: 68, name: "Utobra")
Server.create(id: 69, name: "Venebra")
Server.create(id: 70, name: "Vitera")
Server.create(id: 71, name: "Vunira")
Server.create(id: 72, name: "Wadira")
Server.create(id: 73, name: "Wildera")
Server.create(id: 74, name: "Wintera")
Server.create(id: 75, name: "Yonabra")
Server.create(id: 76, name: "Yovera")
Server.create(id: 77, name: "Yubra")
Server.create(id: 78, name: "Zephyra")
Server.create(id: 79, name: "Zuna")
Server.create(id: 80, name: "Zunera")


# Clear existing records to prevent duplicates in development
Boss.destroy_all

# Define your bosses data
bosses_data = [
  { id: 1, name: 'Arachir The Ancient One', janela: '6 to 9 days', local: 'Drefia', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 2, name: 'Barbaria', janela: '8 to 13 days', local: 'Barbarian Camp', image_path: 'Barbaria.gif' },
  { id: 3, name: 'Battlemaster Zunzu', janela: '3 to 9 days', local: 'Muggy Plains (Zao)', image_path: 'Battlemaster_Zunzu.gif' },
  { id: 4, name: 'Big Boss Trolliver', janela: '3 to 8 days', local: 'Edron', image_path: 'Big_Boss_Trolliver.gif' },
  { id: 5, name: 'Captain Jones', janela: '6 to 10 days', local: 'Ghost Ship', image_path: 'Captain_Jones.gif' },
  { id: 6, name: 'Countess Sorrow', janela: '14 to 21 days', local: 'PoI Bazir', image_path: 'Countess_Sorrow.gif' },
  { id: 7, name: 'Cublarc The Plunderer', janela: '6 to 9 days', local: 'Zao Steppe', image_path: 'Cublarc_the_Plunderer.gif' },
  { id: 8, name: 'Dharalion', janela: '6 to 8 days', local: 'Venore', image_path: 'Dharalion.gif' },
  { id: 9, name: 'Diblis The Fair', janela: '10 to 16 days', local: 'Edron', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 10, name: 'Dracola', janela: '14 to 21 days', local: 'PoI Ashfalor', image_path: 'Dracola.gif' },
  { id: 11, name: 'Dreadmaw', janela: '1 to 17 days', local: 'Muggy Plains (Zao)', image_path: 'Dreadmaw.gif' },
  { id: 12, name: 'Flamecaller Zazrak', janela: '5 to 17 days', local: 'Muggy Plains (Zao)', image_path: 'Flamecaller_Zazrak.gif' },
  { id: 13, name: 'Fleabringer', janela: '5 to 31 days', local: 'Muggy Plains (Zao)', image_path: 'Fleabringer.gif' },
  { id: 14, name: 'Foreman Kneebiter', janela: '3 to 8 days', local: 'Kazordoon', image_path: 'Foreman_Kneebiter.gif' },
  { id: 15, name: 'General Murius', janela: '6 to 9 days', local: 'Mintwallin', image_path: 'General_Murius.gif' },
  { id: 16, name: 'Grandfather Tridian', janela: '6 to 9 days', local: 'Liberty Bay', image_path: 'Grandfather_Tridian.gif' },
  { id: 17, name: 'Gravelord Oshuran', janela: '7 to 12 days', local: 'Drefia', image_path: 'Gravelord_Oshuran.gif' },
  { id: 18, name: 'Grorlam', janela: '3 to 8 days', local: 'Thais', image_path: 'Grorlam.gif' },
  { id: 19, name: 'Hairman The Huge', janela: '5 to 10 days', local: 'Banuta', image_path: 'Hairman_The_Huge.gif' },
  { id: 20, name: 'Hatebreeder', janela: '6 to 9 days', local: 'Razachai (Zao)', image_path: 'Hatebreeder.gif' },
  { id: 21, name: 'High Templar Cobrass', janela: '6 to 9 days', local: 'Chor', image_path: 'High_Templar_Cobrass.gif' },
  { id: 22, name: 'Hirintror', janela: '10 to 30 days', local: 'Formorgar, Nibelor', image_path: 'Hirintror.gif' },
  { id: 23, name: 'Hirintror', janela: '10 to 30 days', local: ' Nibelor', image_path: 'Hirintror.gif' },
  { id: 24, name: 'Man in the Cave', janela: '12 to 16 days', local: 'Svargrond', image_path: 'Man_In_The_Cave.gif' },
  { id: 25, name: 'Massacre', janela: '14 to 21 days', local: 'PoI Apocalypse', image_path: 'Massacre.gif' },
  { id: 26, name: 'Mr. Punish', janela: '14 to 21 days', local: 'PoI Tafariel', image_path: 'Mr._Punish.gif' },
  { id: 27, name: 'Ocyakao', janela: '16 to 26 days', local: 'Svargrond', image_path: 'Ocyakao.gif' },
  { id: 28, name: 'Omrafir', janela: '14 to 28 days', local: 'Roshamuul Prision', image_path: 'Omrafir.gif' },
  { id: 29, name: 'Rotworm Queen', janela: '12 to 16 days', local: 'Darashia', image_path: 'Rotworm_Queen.gif' },
  { id: 30, name: 'Rotworm Queen', janela: '12 to 16 days', local: 'Edron', image_path: 'Rotworm_Queen.gif' },
  { id: 31, name: 'Rotworm Queen', janela: '12 to 16 days', local: 'Hellgate', image_path: 'Rotworm_Queen.gif' },
  { id: 32, name: 'Rotworm Queen', janela: '12 to 16 days', local: 'Liberty Bay', image_path: 'Rotworm_Queen.gif' },
  { id: 33, name: 'Rukor Zad', janela: '6 to 9 days', local: 'Dark Cathedral', image_path: 'Rotworm_Queen.gif' },
  { id: 34, name: 'Shlorg', janela: '13 to 29 days', local: 'Edron', image_path: 'Shlorg.gif' },
  { id: 35, name: 'Sir Valorcrest', janela: '5 to 9 days', local: 'Edron', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 36, name: 'Smuggler Baron Silvertoe', janela: '8 to 16 days', local: 'Port Hope', image_path: 'Smuggler_Baron_Silvertoe.gif' },
  { id: 37, name: 'The Big Bad One', janela: '6 to 11 days', local: 'Edron', image_path: 'The_Big_Bad_One.gif' },
  { id: 38, name: 'The Evil Eye', janela: '6 to 12 days', local: 'Hellgate', image_path: 'The_Evil_Eye.gif' },
  { id: 39, name: 'The Frog Prince', janela: '12 to 19 days', local: 'Thais', image_path: 'The_Frog_Prince.gif' },
  { id: 40, name: 'The Handmaiden', janela: '14 to 21 days', local: 'PoI Pumin', image_path: 'The_Handmaiden.gif' },
  { id: 41, name: 'The Imperor', janela: '14 to 21 days', local: 'PoI Infernatil', image_path: 'The_Imperor.gif' },
  { id: 42, name: 'The Old Whopper', janela: '5 to 11 days', local: 'Edron', image_path: 'The_Old_Whopper.gif' },
  { id: 43, name: 'The Plasmother', janela: '14 to 21 days', local: 'PoI Verminor', image_path: 'The_Plasmother.gif' },
  { id: 44, name: 'The Voice of Ruin', janela: '6 to 17 days', local: 'Zao', image_path: 'The_Voice_of_Ruin.gif' },
  { id: 45, name: 'The Welter', janela: '16 to 29 days', local: 'Port Hope', image_path: 'The_Welter.gif' },
  { id: 46, name: 'Tyrn', janela: '12 to 25 days', local: 'Drefia', image_path: 'Tyrn.gif' },
  { id: 47, name: 'Tyrn', janela: '12 to 25 days', local: 'Liberty Bay', image_path: 'Tyrn.gif' },
  { id: 48, name: 'Tzumrah The Dazzler', janela: '20 to 28 days', local: '', image_path: 'Grandfather_Tridian.gif' },
  { id: 49, name: 'Warlord Ruzad', janela: '6 to 9 days', local: 'Orc Fortress', image_path: 'Warlord_Ruzad.gif' },
  { id: 50, name: 'White Pale', janela: '17 to 37 days', local: 'Darashia', image_path: 'White_Pale.gif' },
  { id: 51, name: 'White Pale', janela: '17 to 37 days', local: 'Edron', image_path: 'White_Pale.gif' },
  { id: 52, name: 'White Pale', janela: '17 to 37 days', local: 'Liberty Bay', image_path: 'White_Pale.gif' },
  { id: 53, name: 'Xenia', janela: '7 to 14 days', local: 'Venore', image_path: 'Xenia.gif' },
  { id: 54, name: 'Yaga The Crone', janela: '5 to 7 days', local: 'Venore', image_path: 'Yaga_the_Crone.gif' },
  { id: 55, name: 'Zevelon Duskbringer', janela: '6 to 10 days', local: 'Hellgate', image_path: 'Arachir_the_Ancient_One.gif' },
  { id: 56, name: 'Zushuka', janela: '19 to 29 days', local: 'Svargrond', image_path: 'Zushuka.gif' },
  { id: 57, name: 'Burster', janela: 'Farmable Spawn', local: 'Kazordoon - The Void', image_path: 'Burster.gif'},
  { id: 58, name: 'Dreadful Disruptor', janela: 'Farmable Spawn', local: 'Edron - The Void', image_path: 'Dreadful_Disruptor.gif'},
  { id: 59, name: 'Mahatheb', janela: 'Farmable Spawn', local: 'Edron Forgotten Tomb', image_path: 'Mahatheb.gif'},
  # Add more bosses as needed
]

# Create bosses
bosses_data.each do |boss_data|
  boss = Boss.create!(
    id: boss_data[:id],
    name: boss_data[:name],
    janela: boss_data[:janela],
    local: boss_data[:local],
  )

  # Attach image using Active Storage
  boss.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', boss_data[:image_path])), filename: boss_data[:image_path])
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
  { id: 11, name: 'Elvira Hammerthrust, Jesse the Wicked, Mornenion & Robby the Reckless', local: 'Bank Robbery MWC', description: 'This MWC is not announced right after SS (nor on Tibia Observer), as happens randomly during the day. The robbers can be found close to the city they robbed: Kazordoon, Thais, Venore and Carlin', image_paths: ['Elvira_Hammerthrust.gif', 'Jesse_the_Wicked.gif', 'Mornenion.gif', 'Robby_the_Reckless.gif'] },
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
  { id: 2, name: 'Groam', description: 'Awash World Change. It has a chance to spawn right after SS in the Deepling Scout mines. You can check with any city guide the quest status right before the SS and get ready to kill Groam by logging out near its spawn point.', image_path: 'Groam.gif' },
  { id: 3, name: 'Raxias', description: 'You should ask Charles for a shortcut every 20h, as Raxias is one of the possible outcomes when his ship wrecks.', image_path: 'Raxias.gif' },
  { id: 4, name: 'Yakchal', description: 'She will randomly wake up when someone uses a Frozen Starlight on her sarcophagus. There is also a chance that she wakes up more than once in the same day.', image_path: 'Yakchal.gif' },
  { id: 5, name: 'Ferumbras Mortal Shell', description: "Ferumbras' Ascendant Quest. Kill it every 14 days.", image_path: 'Ferumbras_Mortal_Shell.gif' },
  { id: 6, name: "Goshnar's Megalomania", description: 'Soul War Quest. Kill it every 3 days.', image_path: "Goshnar's_Megalomania.gif" },
  { id: 7, name: 'Lizard Gate Guardian', description: 'Children of the Revolution Quest. Kill it every 7 days.', image_path: 'Lizard_Gate_Guardian.gif' },
  { id: 8, name: 'The Last Lore Keeper', description: 'Forgotten Knowledge Quest. Kill it every 14 days.', image_path: 'The_Last_Lore_Keeper.gif' },
  { id: 9, name: 'World Devourer', description: 'Heart of Destruction Quest. Kill it every 14 days.', image_path: 'World_Devourer.gif' },
  { id: 10, name: 'Alptramun', description: 'The Dreamcourts Quest', image_path: 'Alptramun.gif' },
  { id: 11, name: 'Izcandar Champion of Summer', description: 'The Dreamcourts Quest', image_path: 'Izcandar_Champion_of_Summer.gif' },
  { id: 12, name: 'Izcandar Champion of Winter', description: 'The Dreamcourts Quest', image_path: 'Izcandar_Champion_of_Winter.gif' },
  { id: 13, name: 'Izcandar the Banished', description: 'The Dreamcourts Quest', image_path: 'Izcandar_the_Banished.gif' },
  { id: 14, name: 'Malofur Mangrinder', description: 'The Dreamcourts Quest', image_path: 'Malofur_Mangrinder.gif' },
  { id: 15, name: 'Maxxenius', description: 'The Dreamcourts Quest', image_path: 'Maxxenius.gif' },
  { id: 16, name: 'Plagueroot', description: 'The Dreamcourts Quest', image_path: 'Plagueroot.gif' },
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
