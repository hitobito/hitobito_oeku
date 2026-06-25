# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::DachverbandMitarbeitende < ::Group
  self.static_name = true

  ### ROLES

  class Mitarbeitender < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Administration < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Quaestorin < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class Revisorin < ::Role
    self.permissions = [:layer_and_below_full, :approve_applications, :finance]
  end

  class KirchlicheUmweltauditorin < ::Role
  end

  roles Mitarbeitender, Administration, Quaestorin, Revisorin, KirchlicheUmweltauditorin
end
