# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

class Group::Dachverband < ::Group
  self.layer = true

  self.event_types = [Event, Event::Course]

  children DachverbandFachstelleVorstand,
    DachverbandEinzelmitglieder,
    DachverbandKollektivmitglieder,
    DachverbandErstspendende,
    DachverbandSchoepfungstheologie,
    DachverbandGruenerGuegel,
    Kirchlich,
    NichtKirchlich

  self.default_children = [
    DachverbandFachstelleVorstand,
    DachverbandEinzelmitglieder,
    DachverbandKollektivmitglieder,
    DachverbandErstspendende,
    DachverbandSchoepfungstheologie
  ]

  ### ROLES

  class Administrator < ::Role
    self.permissions = [:admin, :layer_and_below_full, :impersonation]
  end

  roles Administrator
end
