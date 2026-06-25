# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Kontakte < ::Group
  self.layer = true

  children Kontakte

  ### ROLES

  class Vorstand < ::Role
  end

  class Kontakt < ::Role
  end

  class Mitarbeitender < ::Role
  end

  class Medienverantwortliche < ::Role
  end

  class Leistungsvereinbarung < ::Role
  end

  class Journalistin < ::Role
  end

  roles Vorstand, Kontakt, Mitarbeitender, Medienverantwortliche, Leistungsvereinbarung, Journalistin
end
