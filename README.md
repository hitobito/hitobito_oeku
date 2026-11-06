# Hitobito Oeku

This hitobito wagon defines the organization hierarchy with groups and roles
of Oeku.


## Oeku Organization Hierarchy

<!-- roles:start -->

    * Dachverband
      * Dachverband
        * Administrator:in: [:admin, :layer_and_below_full, :impersonation]  --  (Group::Dachverband::Administrator)
      * Fachstelle/Vorstand
        * Administration: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandFachstelleVorstand::Administration)
        * Quästor:in: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandFachstelleVorstand::Quaestor)
        * Revisor:in: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandFachstelleVorstand::Revisor)
        * Präsident:in: [:group_read]  --  (Group::DachverbandFachstelleVorstand::Praesident)
        * Vizepräsident:in: [:group_read]  --  (Group::DachverbandFachstelleVorstand::Vizepraesident)
        * Vorstandsmitglied: [:group_read]  --  (Group::DachverbandFachstelleVorstand::Vorstandsmitglied)
      * Einzelmitglieder
        * Einzelmitglied: []  --  (Group::DachverbandEinzelmitglieder::Einzelmitglied)
      * Kollektivmitglieder
        * Kollektivmitglied: []  --  (Group::DachverbandKollektivmitglieder::Kollektivmitglied)
      * Erstspendende
        * Erstspender:in: []  --  (Group::DachverbandErstspendende::Erstspender)
      * Schöpfungstheologie
        * Autor:in SchZ: []  --  (Group::DachverbandSchoepfungstheologie::AutorSchZ)
        * Oekuspiritualität: []  --  (Group::DachverbandSchoepfungstheologie::Oekuspiritualitaet)
      * Grüner Güggel
        * Zertifiziert: []  --  (Group::DachverbandGruenerGuegel::Zertifiziert)
        * Aufnahmeprozess: []  --  (Group::DachverbandGruenerGuegel::Aufnahmeprozess)
        * Rezertifiziert: []  --  (Group::DachverbandGruenerGuegel::Rezertifiziert)
    * Kirchlich < Dachverband
      * Kirchlich
        * Geschäftsstelle: []  --  (Group::Kirchlich::Geschaeftsstelle)
        * Kirchliche:r Umweltauditor:in: []  --  (Group::Kirchlich::KirchlicheUmweltauditor)
        * Kirchliche:r Umweltberatende:r (KUB): []  --  (Group::Kirchlich::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r (UMB): []  --  (Group::Kirchlich::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r (UB): []  --  (Group::Kirchlich::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r (SiBe): []  --  (Group::Kirchlich::Sicherheitsbeauftragte)
        * Energieteamleitende:r (ET): []  --  (Group::Kirchlich::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::Kirchlich::Nachhaltigkeitsverantwortliche)
        * Bischof: []  --  (Group::Kirchlich::Bischof)
        * Theolog:in: []  --  (Group::Kirchlich::Theologe)
        * Generalsekretär:in: [:layer_read]  --  (Group::Kirchlich::Generalsekretaer)
        * Medienverantwortliche:r: []  --  (Group::Kirchlich::Medienverantwortliche)
      * Synode
        * Synodalratspräsident:in: [:group_read]  --  (Group::KirchlichSynode::Synodalratspraesident)
        * Synodalrat: [:group_read]  --  (Group::KirchlichSynode::Synodalrat)
        * Synodale:r: [:group_read]  --  (Group::KirchlichSynode::Synodale)
    * Kantonale Organisation < Kirchlich
      * Kantonale Organisation
        * Geschäftsstelle: []  --  (Group::KantonaleOrganisation::Geschaeftsstelle)
        * Kirchliche:r Umweltauditor:in: []  --  (Group::KantonaleOrganisation::KirchlicheUmweltauditor)
        * Kirchliche:r Umweltberatende:r (KUB): []  --  (Group::KantonaleOrganisation::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r (UMB): []  --  (Group::KantonaleOrganisation::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r (UB): []  --  (Group::KantonaleOrganisation::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r (SiBe): []  --  (Group::KantonaleOrganisation::Sicherheitsbeauftragte)
        * Energieteamleitende:r (ET): []  --  (Group::KantonaleOrganisation::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::KantonaleOrganisation::Nachhaltigkeitsverantwortliche)
        * Theolog:in: []  --  (Group::KantonaleOrganisation::Theologe)
        * Medienverantwortliche:r: []  --  (Group::KantonaleOrganisation::Medienverantwortliche)
        * Mitarbeitende:r: [:layer_full]  --  (Group::KantonaleOrganisation::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::KantonaleOrganisation::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::KantonaleOrganisation::Generalsekretaer)
      * Synode
        * Synodalratspräsident:in: [:group_read]  --  (Group::KantonaleOrganisationSynode::Synodalratspraesident)
        * Synodalrat: [:group_read]  --  (Group::KantonaleOrganisationSynode::Synodalrat)
        * Synodale:r: [:group_read]  --  (Group::KantonaleOrganisationSynode::Synodale)
    * Kirchgemeinde < Kantonale Organisation
      * Kirchgemeinde
        * Sekretariat: []  --  (Group::Kirchgemeinde::Sekretariat)
        * Kirchliche:r Umweltauditor:in: []  --  (Group::Kirchgemeinde::KirchlicheUmweltauditor)
        * Kirchliche:r Umweltberatende:r (KUB): []  --  (Group::Kirchgemeinde::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r (UMB): []  --  (Group::Kirchgemeinde::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r (UB): []  --  (Group::Kirchgemeinde::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r (SiBe): []  --  (Group::Kirchgemeinde::Sicherheitsbeauftragte)
        * Energieteamleitende:r (ET): []  --  (Group::Kirchgemeinde::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::Kirchgemeinde::Nachhaltigkeitsverantwortliche)
        * Pfarrer:in: []  --  (Group::Kirchgemeinde::Pfarrer)
        * Diakon:in: []  --  (Group::Kirchgemeinde::Diakon)
        * Pfarreileitende:r: []  --  (Group::Kirchgemeinde::Pfarreileitende)
        * Katechet:in: []  --  (Group::Kirchgemeinde::Katechet)
        * Medienverantwortliche:r: []  --  (Group::Kirchgemeinde::Medienverantwortliche)
        * Mitarbeitende:r: [:layer_full]  --  (Group::Kirchgemeinde::Mitarbeitender)
      * Kirchgemeinderat
        * Kirchgemeinderatspräsident:in: [:group_full]  --  (Group::KirchgemeindeKirchgemeinderat::Kirchgemeinderatspraesident)
        * Kirchgemeinderat: [:group_read]  --  (Group::KirchgemeindeKirchgemeinderat::Kirchgemeinderat)
    * Bistum < Kirchlich
      * Bistum
        * Geschäftsstelle: []  --  (Group::Bistum::Geschaeftsstelle)
        * Kirchliche:r Umweltauditor:in: []  --  (Group::Bistum::KirchlicheUmweltauditor)
        * Kirchliche:r Umweltberatende:r (KUB): []  --  (Group::Bistum::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r (UMB): []  --  (Group::Bistum::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r (UB): []  --  (Group::Bistum::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r (SiBe): []  --  (Group::Bistum::Sicherheitsbeauftragte)
        * Energieteamleitende:r (ET): []  --  (Group::Bistum::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::Bistum::Nachhaltigkeitsverantwortliche)
        * Bischof: []  --  (Group::Bistum::Bischof)
        * Theolog:in: []  --  (Group::Bistum::Theologe)
        * Pfarrer:in: []  --  (Group::Bistum::Pfarrer)
        * Medienverantwortliche:r: []  --  (Group::Bistum::Medienverantwortliche)
        * Mitarbeitende:r: [:layer_full]  --  (Group::Bistum::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::Bistum::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::Bistum::Generalsekretaer)
    * Nicht kirchlich < Nicht kirchlich, Dachverband
      * Nicht kirchlich
      * Geschäftskontakte
        * Medienverantwortliche:r: []  --  (Group::NichtKirchlichGeschaeftskontakte::Medienverantwortliche)
        * Leistungsvereinbarung: []  --  (Group::NichtKirchlichGeschaeftskontakte::Leistungsvereinbarung)
        * Journalist:in: []  --  (Group::NichtKirchlichGeschaeftskontakte::Journalist)
(Output of rake app:hitobito:roles)
<!-- roles:end -->
