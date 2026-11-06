# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Kirchlich < ::Group
  self.layer = true

  children KirchlichSynode,
    KantonaleOrganisation,
    Bistum

  self.default_children = [KirchlichSynode]

  ### ROLES

  class Geschaeftsstelle < ::Role
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

  class Bischof < ::Role
  end

  class Theologe < ::Role
  end

  class Generalsekretaer < ::Role
    self.permissions = [:layer_read]
  end

  class Medienverantwortliche < ::Role
  end

  roles Geschaeftsstelle,
    KirchlicheUmweltauditor,
    KirchlicheUmweltberatende,
    KirchlicheUmweltmanagementbeauftragte,
    KirchlicheUmweltbeauftragte,
    Sicherheitsbeauftragte,
    Energieteamleitende,
    Nachhaltigkeitsverantwortliche,
    Bischof,
    Theologe,
    Generalsekretaer,
    Medienverantwortliche
end
