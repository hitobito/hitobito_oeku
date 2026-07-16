# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

module Oeku::Person
  extend ActiveSupport::Concern

  included do
    validates :anzahl_schoepfungszeit,
      numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 9999},
      allow_nil: true
  end
end
