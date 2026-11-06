# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::NichtKirchlichGeschaeftskontakte < ::Group
  ### ROLES

  class Medienverantwortliche < ::Role
  end

  class Leistungsvereinbarung < ::Role
  end

  class Journalist < ::Role
  end

  roles Medienverantwortliche, Leistungsvereinbarung, Journalist
end
