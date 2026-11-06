# frozen_string_literal: true

#  Copyright (c) 2025-2026, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

require "spec_helper"

describe Group do
  include_examples "group types"

  def permissions_of(group_type)
    group_type.role_types.to_h { |role| [role.name.demodulize.to_sym, role.permissions] }
  end

  describe Group::Dachverband do
    it "has the expected child group types" do
      expect(described_class.possible_children).to eq [
        Group::DachverbandFachstelleVorstand,
        Group::DachverbandEinzelmitglieder,
        Group::DachverbandKollektivmitglieder,
        Group::DachverbandErstspendende,
        Group::DachverbandSchoepfungstheologie,
        Group::DachverbandGruenerGuegel,
        Group::Kirchlich,
        Group::NichtKirchlich
      ]
    end
  end

  describe Group::DachverbandFachstelleVorstand do
    it "has finance roles and read-only board roles" do
      finance = [:layer_and_below_full, :approve_applications, :finance]
      expect(permissions_of(described_class)).to eq(
        Administration: finance,
        Quaestor: finance,
        Revisor: finance,
        Praesident: [:group_read],
        Vizepraesident: [:group_read],
        Vorstandsmitglied: [:group_read]
      )
    end
  end

  describe Group::DachverbandGruenerGuegel do
    it "has the certification roles" do
      expect(permissions_of(described_class).keys)
        .to eq [:Zertifiziert, :Aufnahmeprozess, :Rezertifiziert]
    end
  end

  describe Group::DachverbandSchoepfungstheologie do
    it "has the theology roles" do
      expect(permissions_of(described_class).keys).to eq [:AutorSchZ, :Oekuspiritualitaet]
    end
  end

  describe Group::Kirchlich do
    it "has cantonal organisations, dioceses and a synod as children" do
      expect(described_class.possible_children).to eq [
        Group::KirchlichSynode, Group::KantonaleOrganisation, Group::Bistum
      ]
    end

    it "grants layer_read to the Generalsekretär:in only" do
      expect(permissions_of(described_class).reject { |_, p| p.empty? })
        .to eq(Generalsekretaer: [:layer_read])
    end
  end

  [Group::KirchlichSynode, Group::KantonaleOrganisationSynode].each do |synode|
    describe synode do
      it "grants group_read to all roles" do
        expect(permissions_of(synode)).to eq(
          Synodalratspraesident: [:group_read],
          Synodalrat: [:group_read],
          Synodale: [:group_read]
        )
      end
    end
  end

  [Group::KantonaleOrganisation, Group::Bistum].each do |layer|
    describe layer do
      it "grants layer_full to the staff roles" do
        expect(permissions_of(layer).reject { |_, p| p.empty? }).to eq(
          Mitarbeitender: [:layer_full],
          Administration: [:layer_full],
          Generalsekretaer: [:layer_full]
        )
      end
    end
  end

  describe Group::Kirchgemeinde do
    it "has only the Kirchgemeinderat as child group" do
      expect(described_class.possible_children).to eq [Group::KirchgemeindeKirchgemeinderat]
    end

    it "grants layer_full to Mitarbeitende:r only" do
      expect(permissions_of(described_class).reject { |_, p| p.empty? })
        .to eq(Mitarbeitender: [:layer_full])
    end

    it "has Katechet:in and Sekretariat roles" do
      expect(permissions_of(described_class).keys).to include(:Katechet, :Sekretariat)
    end
  end

  describe Group::KirchgemeindeKirchgemeinderat do
    it "has a president with group_full and members with group_read" do
      expect(permissions_of(described_class)).to eq(
        Kirchgemeinderatspraesident: [:group_full],
        Kirchgemeinderat: [:group_read]
      )
    end
  end

  describe Group::NichtKirchlich do
    it "contains Geschäftskontakte and may be nested" do
      expect(described_class.possible_children).to eq [
        Group::NichtKirchlichGeschaeftskontakte, Group::NichtKirchlich
      ]
      expect(described_class.role_types).to be_empty
    end
  end
end
