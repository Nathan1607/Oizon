import 'dart:convert';
import 'package:http/http.dart';
import '../models/formations_models.dart';

class FormationRepository {
  Future<List<Formation>> fetchFormation() async {
    final Response response = await get(Uri.parse('https://data.enseignementsup-recherche.gouv.fr/api/records/1.0/search/?dataset=fr-esr-principaux-etablissements-enseignement-superieur&q=&facet=etablissement_id_paysage&facet=type_d_etablissement&facet=typologie_d_universites_et_assimiles&facet=secteur_d_etablissement&facet=vague_contractuelle&facet=localisation&facet=uai&facet=siret&facet=siren&facet=identifiant_ror&facet=identifiant_grid&facet=identifiant_pic&facet=identifiant_dataesr&facet=anciens_codes_uai&facet=com_nom&facet=dep_nom&facet=aca_nom&facet=reg_nom&facet=pays_etranger_acheminement&facet=statut_juridique_court&facet=qualification_long&facet=uai_rgp_loi_esr_2013&facet=universites_fusionnees&facet=etablissement_experimental&facet=statut_operateur_lolf&facet=identifiant_programme_lolf_chef_de_file'));
    if (response.statusCode == 200) {
      final List<Formation> formations = [];
      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      final List<dynamic> records = jsonData['records'];

      for (var record in records) {
        final Map<String, dynamic> fields = record['fields'];
        final Formation formation = Formation.fromJson(fields);
        formations.add(formation);
      }
      return formations;
    } else {
      throw Exception('Failed to load Formations');
    }
  }
}
