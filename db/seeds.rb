Dir.glob(Museum::Engine.root + 'db/seeds/*.yml').each do |file|
  class_names = {
      museum_loupes: Museum::Loupe,
      museum_cases: Museum::Case
  }
  YamlSeeder.seed(Museum::Engine.root + 'db/seeds', File.basename(file, '.*'), class_names)
end