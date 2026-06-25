# frozen_string_literal: true

root = Group.roots.first

# Nationale Organisationen

eks = Group::NationaleOrganisation.seed_once(:name,
  parent_id: root.id,
  name: "Evangelisch-reformierte Kirche Schweiz (EKS)").first

sbk = Group::NationaleOrganisation.seed_once(:name,
  parent_id: root.id,
  name: "Schweizer Bischofskonferenz (SBK)").first

# Kantonale Organisationen unter EKS

ref_zh = Group::KantonaleOrganisation.seed_once(:name,
  parent_id: eks.id,
  name: "Reformierte Kirche Kanton Zürich").first

ref_be = Group::KantonaleOrganisation.seed_once(:name,
  parent_id: eks.id,
  name: "Reformierte Kirchen Bern-Jura-Solothurn").first

ref_sg = Group::KantonaleOrganisation.seed_once(:name,
  parent_id: eks.id,
  name: "Evangelisch-reformierte Kirche Kanton St. Gallen").first

# Kirchgemeinden unter ref_zh

[
  "Kirchgemeinde Zürich-Altstetten",
  "Kirchgemeinde Zürich-Oerlikon",
  "Kirchgemeinde Winterthur-Seen"
].each do |name|
  Group::Kirchgemeinde.seed_once(:name, parent_id: ref_zh.id, name: name)
end

# Kirchgemeinden unter ref_be

[
  "Kirchgemeinde Bern-Bümpliz",
  "Kirchgemeinde Bern-Bethlehem",
  "Kirchgemeinde Köniz"
].each do |name|
  Group::Kirchgemeinde.seed_once(:name, parent_id: ref_be.id, name: name)
end

# Kirchgemeinden unter ref_sg

[
  "Evangelische Kirchgemeinde St. Gallen",
  "Evangelische Kirchgemeinde Gossau"
].each do |name|
  Group::Kirchgemeinde.seed_once(:name, parent_id: ref_sg.id, name: name)
end

# Bistümer unter SBK

bistum_sg = Group::Bistum.seed_once(:name,
  parent_id: sbk.id,
  name: "Bistum St. Gallen").first

Group::Bistum.seed_once(:name,
  parent_id: sbk.id,
  name: "Bistum Basel")

Group::Bistum.seed_once(:name,
  parent_id: sbk.id,
  name: "Bistum Chur")

# Kontakte-Layer

Group::Kontakte.seed_once(:name,
  parent_id: root.id,
  name: "Partnernetzwerk")

Group.rebuild!
