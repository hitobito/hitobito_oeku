# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::DachverbandKontakte < ::Group
  children DachverbandKontakte

  ### ROLES

  class Kontakt < ::Role
  end

  class Mitarbeitender < ::Role
  end

  class Leistungsvereinbarung < ::Role
  end

  class Journalistin < ::Role
  end

  class AutorinSchZ < ::Role
  end

  roles Kontakt, Mitarbeitender, Leistungsvereinbarung, Journalistin, AutorinSchZ
end
