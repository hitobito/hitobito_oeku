# frozen_string_literal: true

#  Copyright (c) 2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku

require "spec_helper"

describe TableDisplay do
  let(:person) { people(:admin) }

  it "offers confession as selectable column on Person" do
    display = TableDisplay.for(person, Person)

    expect(display.available).to include("confession")
  end
end
