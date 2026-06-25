$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your wagon"s version:
require "hitobito_oeku/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  # rubocop:disable SingleSpaceBeforeFirstArg
  s.name        = "hitobito_oeku"
  s.version     = HitobitoOeku::VERSION
  s.authors = ["Andreas Maierhofer"]
  s.email = ["maierhofer@puzzle.ch"]
  s.homepage    = "https://oeku.ch/"
  s.summary     = "hitobito for Oeku"
  s.description = "hitobito for Oeku"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile"]
  # rubocop:enable SingleSpaceBeforeFirstArg
end
