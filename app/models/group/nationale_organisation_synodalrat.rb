# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::NationaleOrganisationSynodalrat < ::Group
  self.static_name = true

  ### ROLES

  class Synodalratspraesident < ::Role
    self.permissions = [:group_full]
  end

  class Synodale < ::Role
    self.permissions = [:group_read]
  end

  roles Synodalratspraesident, Synodale
end
