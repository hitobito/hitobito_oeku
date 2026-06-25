# Hitobito Oeku

This hitobito wagon defines the organization hierarchy with groups and roles
of Oeku.


## Oeku Organization Hierarchy

<!-- roles:start -->

    * Dachverband
      * Dachverband
        * Administrator:in: [:admin, :layer_and_below_full, :impersonation]  --  (Group::Dachverband::Administrator)
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandMitarbeitende::Mitarbeitender)
        * Administration: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandMitarbeitende::Administration)
        * Quästor:in: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandMitarbeitende::Quaestor)
        * Revisor:in: [:layer_and_below_full, :approve_applications, :finance]  --  (Group::DachverbandMitarbeitende::Revisor)
        * Kirchliche:r Umweltauditor:in: []  --  (Group::DachverbandMitarbeitende::KirchlicheUmweltauditor)
      * Vorstand
        * Präsident:in: [:group_full]  --  (Group::DachverbandVorstand::Praesident)
        * Vizepräsident:in: [:group_full]  --  (Group::DachverbandVorstand::Vizepraesident)
        * Vorstandsmitglied: [:group_read]  --  (Group::DachverbandVorstand::Vorstandsmitglied)
      * Mitglieder
        * Einzelmitglied: []  --  (Group::DachverbandMitglieder::Einzelmitglied)
        * Kollektivmitglied: []  --  (Group::DachverbandMitglieder::Kollektivmitglied)
        * Erstspender:in: []  --  (Group::DachverbandMitglieder::Erstspender)
      * Kontakte
        * Kontakt: []  --  (Group::DachverbandKontakte::Kontakt)
        * Mitarbeitende:r: []  --  (Group::DachverbandKontakte::Mitarbeitender)
        * Leistungsvereinbarung: []  --  (Group::DachverbandKontakte::Leistungsvereinbarung)
        * Journalist:in: []  --  (Group::DachverbandKontakte::Journalist)
        * Autor:in SchZ: []  --  (Group::DachverbandKontakte::AutorSchZ)
      * Grüner Güggel
        * Zertifiziert: []  --  (Group::DachverbandGruenerGuegel::Zertifiziert)
        * Aufnahmeprozess: []  --  (Group::DachverbandGruenerGuegel::Aufnahmeprozess)
        * Interessiert: []  --  (Group::DachverbandGruenerGuegel::Interessiert)
    * Nationale Organisation < Dachverband
      * Nationale Organisation
        * Organisation: []  --  (Group::NationaleOrganisation::Organisation)
        * Kirchliche:r Umweltberatende:r: []  --  (Group::NationaleOrganisation::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r: []  --  (Group::NationaleOrganisation::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r: []  --  (Group::NationaleOrganisation::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r: []  --  (Group::NationaleOrganisation::Sicherheitsbeauftragte)
        * Energieteamleitende:r: []  --  (Group::NationaleOrganisation::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::NationaleOrganisation::Nachhaltigkeitsverantwortliche)
        * Bischof: []  --  (Group::NationaleOrganisation::Bischof)
        * Theolog:in: []  --  (Group::NationaleOrganisation::Theologe)
        * Pfarrer:in: []  --  (Group::NationaleOrganisation::Pfarrer)
        * Medienverantwortliche:r: []  --  (Group::NationaleOrganisation::Medienverantwortliche)
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_full]  --  (Group::NationaleOrganisationMitarbeitende::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::NationaleOrganisationMitarbeitende::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::NationaleOrganisationMitarbeitende::Generalsekretaer)
      * Synodalrat
        * Synodalratspräsident:in: [:group_full]  --  (Group::NationaleOrganisationSynodalrat::Synodalratspraesident)
        * Synodale:r: [:group_read]  --  (Group::NationaleOrganisationSynodalrat::Synodale)
    * Kantonale Organisation < Nationale Organisation
      * Kantonale Organisation
        * Organisation: []  --  (Group::KantonaleOrganisation::Organisation)
        * Kirchliche:r Umweltberatende:r: []  --  (Group::KantonaleOrganisation::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r: []  --  (Group::KantonaleOrganisation::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r: []  --  (Group::KantonaleOrganisation::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r: []  --  (Group::KantonaleOrganisation::Sicherheitsbeauftragte)
        * Energieteamleitende:r: []  --  (Group::KantonaleOrganisation::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::KantonaleOrganisation::Nachhaltigkeitsverantwortliche)
        * Theolog:in: []  --  (Group::KantonaleOrganisation::Theologe)
        * Pfarrer:in: []  --  (Group::KantonaleOrganisation::Pfarrer)
        * Medienverantwortliche:r: []  --  (Group::KantonaleOrganisation::Medienverantwortliche)
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_full]  --  (Group::KantonaleOrganisationMitarbeitende::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::KantonaleOrganisationMitarbeitende::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::KantonaleOrganisationMitarbeitende::Generalsekretaer)
      * Synodalrat
        * Synodalratspräsident:in: [:group_full]  --  (Group::KantonaleOrganisationSynodalrat::Synodalratspraesident)
        * Synodale:r: [:group_read]  --  (Group::KantonaleOrganisationSynodalrat::Synodale)
    * Kirchgemeinde < Kantonale Organisation
      * Kirchgemeinde
        * Organisation: []  --  (Group::Kirchgemeinde::Organisation)
        * Kirchliche:r Umweltberatende:r: []  --  (Group::Kirchgemeinde::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r: []  --  (Group::Kirchgemeinde::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r: []  --  (Group::Kirchgemeinde::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r: []  --  (Group::Kirchgemeinde::Sicherheitsbeauftragte)
        * Energieteamleitende:r: []  --  (Group::Kirchgemeinde::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::Kirchgemeinde::Nachhaltigkeitsverantwortliche)
        * Theolog:in: []  --  (Group::Kirchgemeinde::Theologe)
        * Pfarrer:in: []  --  (Group::Kirchgemeinde::Pfarrer)
        * Diakon:in: []  --  (Group::Kirchgemeinde::Diakon)
        * Pfarreileitende:r: []  --  (Group::Kirchgemeinde::Pfarreileitende)
        * Medienverantwortliche:r: []  --  (Group::Kirchgemeinde::Medienverantwortliche)
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_full]  --  (Group::KirchgemeindeMitarbeitende::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::KirchgemeindeMitarbeitende::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::KirchgemeindeMitarbeitende::Generalsekretaer)
      * Synodalrat
        * Synodalratspräsident:in: [:group_full]  --  (Group::KirchgemeindeSynodalrat::Synodalratspraesident)
        * Synodale:r: [:group_read]  --  (Group::KirchgemeindeSynodalrat::Synodale)
      * Kirchgemeinderat
        * Kirchgemeinderatspräsident:in: [:group_full]  --  (Group::KirchgemeindeKirchgemeinderat::Kirchgemeinderatspraesident)
        * Mitglied: [:group_read]  --  (Group::KirchgemeindeKirchgemeinderat::Mitglied)
    * Bistum < Nationale Organisation
      * Bistum
        * Organisation: []  --  (Group::Bistum::Organisation)
        * Kirchliche:r Umweltberatende:r: []  --  (Group::Bistum::KirchlicheUmweltberatende)
        * Kirchliche:r Umweltmanagementbeauftragte:r: []  --  (Group::Bistum::KirchlicheUmweltmanagementbeauftragte)
        * Kirchliche:r Umweltbeauftragte:r: []  --  (Group::Bistum::KirchlicheUmweltbeauftragte)
        * Sicherheitsbeauftragte:r: []  --  (Group::Bistum::Sicherheitsbeauftragte)
        * Energieteamleitende:r: []  --  (Group::Bistum::Energieteamleitende)
        * Nachhaltigkeitsverantwortliche:r: []  --  (Group::Bistum::Nachhaltigkeitsverantwortliche)
        * Bischof: []  --  (Group::Bistum::Bischof)
        * Theolog:in: []  --  (Group::Bistum::Theologe)
        * Pfarrer:in: []  --  (Group::Bistum::Pfarrer)
        * Medienverantwortliche:r: []  --  (Group::Bistum::Medienverantwortliche)
      * Mitarbeitende
        * Mitarbeitende:r: [:layer_full]  --  (Group::BistumMitarbeitende::Mitarbeitender)
        * Administration: [:layer_full]  --  (Group::BistumMitarbeitende::Administration)
        * Generalsekretär:in: [:layer_full]  --  (Group::BistumMitarbeitende::Generalsekretaer)
    * Kontakte < Kontakte, Dachverband
      * Kontakte
        * Vorstand: []  --  (Group::Kontakte::Vorstand)
        * Kontakt: []  --  (Group::Kontakte::Kontakt)
        * Mitarbeitende:r: []  --  (Group::Kontakte::Mitarbeitender)
        * Medienverantwortliche:r: []  --  (Group::Kontakte::Medienverantwortliche)
        * Leistungsvereinbarung: []  --  (Group::Kontakte::Leistungsvereinbarung)
        * Journalist:in: []  --  (Group::Kontakte::Journalist)
(Output of rake app:hitobito:roles)
<!-- roles:end -->
