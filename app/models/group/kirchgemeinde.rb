# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Kirchgemeinde < ::Group
  self.layer = true

  children KirchgemeindeMitarbeitende,
    KirchgemeindeSynodalrat,
    KirchgemeindeKirchgemeinderat

  self.default_children = [KirchgemeindeMitarbeitende]

  ### ROLES

  class Organisation < ::Role
  end

  class KirchlicheUmweltberatende < ::Role
  end

  class KirchlicheUmweltmanagementbeauftragte < ::Role
  end

  class KirchlicheUmweltbeauftragte < ::Role
  end

  class Sicherheitsbeauftragte < ::Role
  end

  class Energieteamleitende < ::Role
  end

  class Nachhaltigkeitsverantwortliche < ::Role
  end

  class Theologin < ::Role
  end

  class Pfarrerin < ::Role
  end

  class Diakonin < ::Role
  end

  class Pfarreileitende < ::Role
  end

  class Medienverantwortliche < ::Role
  end

  roles Organisation,
    KirchlicheUmweltberatende,
    KirchlicheUmweltmanagementbeauftragte,
    KirchlicheUmweltbeauftragte,
    Sicherheitsbeauftragte,
    Energieteamleitende,
    Nachhaltigkeitsverantwortliche,
    Theologin,
    Pfarrerin,
    Diakonin,
    Pfarreileitende,
    Medienverantwortliche
end
