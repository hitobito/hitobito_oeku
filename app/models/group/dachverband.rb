# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Dachverband < ::Group
  self.layer = true

  children DachverbandMitarbeitende,
    DachverbandVorstand,
    DachverbandMitglieder,
    DachverbandKontakte,
    DachverbandGruenerGuegel,
    NationaleOrganisation,
    Kontakte

  self.default_children = [
    DachverbandMitarbeitende,
    DachverbandVorstand,
    DachverbandMitglieder,
    DachverbandKontakte
  ]

  ### ROLES

  class Administratorin < ::Role
    self.permissions = [:admin, :layer_and_below_full, :impersonation]
  end

  roles Administratorin
end
