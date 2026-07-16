# frozen_string_literal: true

#  Copyright (c) 2025, oeku Kirche und Umwelt. This file is part of
#  hitobito_oeku and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_oeku.

require "spec_helper"

describe PeopleController do
  let(:admin) { people(:admin) }
  let(:group) { groups(:root) }
  let(:dom) { Capybara::Node::Simple.new(response.body) }

  before { sign_in(admin) }

  describe "GET #edit" do
    render_views

    it "renders a narrow, 4-digit-limited anzahl_schoepfungszeit field" do
      get :edit, params: {group_id: group.id, id: admin.id}

      field = dom.find_field("person_anzahl_schoepfungszeit")
      expect(field[:maxlength]).to eq("4")
      expect(field[:size]).to eq("4")
    end
  end

  describe "PUT #update" do
    render_views

    it "saves anzahl_schoepfungszeit and displays it on the show page" do
      put :update, params: {
        group_id: group.id,
        id: admin.id,
        person: {anzahl_schoepfungszeit: "42"}
      }

      expect(admin.reload.anzahl_schoepfungszeit).to eq(42)

      get :show, params: {group_id: group.id, id: admin.id}
      expect(response.body).to include("Anzahl SchöpfungsZeit")
      expect(response.body).to include("42")
    end
  end
end
