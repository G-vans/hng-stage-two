require 'factory_bot'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  FactoryBot.definition_file_paths = [File.expand_path('../factories', __dir__)]
  FactoryBot.find_definitions
end
