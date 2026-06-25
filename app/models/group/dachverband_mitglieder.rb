# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::DachverbandMitglieder < ::Group
  self.static_name = true

  ### ROLES

  class Einzelmitglied < ::Role
  end

  class Kollektivmitglied < ::Role
  end

  class Erstspender < ::Role
  end

  roles Einzelmitglied, Kollektivmitglied, Erstspender
end
