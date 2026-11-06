# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Kirchgemeinde < ::Group
  self.layer = true

  children KirchgemeindeKirchgemeinderat

  ### ROLES

  class Sekretariat < ::Role
  end

  class KirchlicheUmweltauditor < ::Role
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

  class Pfarrer < ::Role
  end

  class Diakon < ::Role
  end

  class Pfarreileitende < ::Role
  end

  class Katechet < ::Role
  end

  class Medienverantwortliche < ::Role
  end

  class Mitarbeitender < ::Role
    self.permissions = [:layer_full]
  end

  roles Sekretariat,
    KirchlicheUmweltauditor,
    KirchlicheUmweltberatende,
    KirchlicheUmweltmanagementbeauftragte,
    KirchlicheUmweltbeauftragte,
    Sicherheitsbeauftragte,
    Energieteamleitende,
    Nachhaltigkeitsverantwortliche,
    Pfarrer,
    Diakon,
    Pfarreileitende,
    Katechet,
    Medienverantwortliche,
    Mitarbeitender
end
