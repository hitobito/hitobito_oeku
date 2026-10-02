# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

require "spec_helper"

describe Person do
  describe "#anzahl_schoepfungszeit" do
    it "accepts a 4-digit value" do
      expect(Person.new(last_name: "dummy", anzahl_schoepfungszeit: 9999)).to be_valid
    end

    it "rejects a value above 9999" do
      expect(Person.new(last_name: "dummy", anzahl_schoepfungszeit: 10000)).not_to be_valid
    end

    it "rejects a negative value" do
      expect(Person.new(last_name: "dummy", anzahl_schoepfungszeit: -1)).not_to be_valid
    end

    it "allows a blank value" do
      expect(Person.new(last_name: "dummy", anzahl_schoepfungszeit: nil)).to be_valid
    end
  end

  describe "#confession" do
    it "accepts a valid confession" do
      expect(Person.new(last_name: "dummy", confession: "reformiert")).to be_valid
    end

    it "rejects an unknown confession" do
      expect(Person.new(last_name: "dummy", confession: "pastafari")).not_to be_valid
    end

    it "allows a blank value" do
      expect(Person.new(last_name: "dummy", confession: nil)).to be_valid
    end

    it "returns the translated label" do
      expect(Person.new(confession: "christkatholisch").confession_label)
        .to eq("Christkatholisch")
    end
  end

  describe ".filter_attrs" do
    it "includes confession as i18n_enum filter" do
      expect(Person.filter_attrs[:confession])
        .to eq(label: "Konfession", type: :i18n_enum)
    end
  end
end
