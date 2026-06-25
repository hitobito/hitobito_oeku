# frozen_string_literal: true

namespace :app do
  namespace :license do
    task :config do # rubocop:disable Rails/RakeEnvironment
      @licenser = Licenser.new("hitobito_oeku",
        "Oeku - Kirchen für die Umwelt",
        "https://github.com/hitobito/hitobito_oeku")
    end
  end
end
