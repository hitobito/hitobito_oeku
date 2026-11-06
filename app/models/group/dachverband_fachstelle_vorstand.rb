# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::DachverbandFachstelleVorstand < ::Group
  ### ROLES

  class Administration < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Quaestor < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Revisor < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Praesident < ::Role
    self.permissions = [:group_read]
  end

  class Vizepraesident < ::Role
    self.permissions = [:group_read]
  end

  class Vorstandsmitglied < ::Role
    self.permissions = [:group_read]
  end

  roles Administration, Quaestor, Revisor, Praesident, Vizepraesident, Vorstandsmitglied
end
