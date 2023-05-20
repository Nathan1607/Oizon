import 'package:flutter/material.dart';

import '../../models/formations_models.dart';
import '../../repositories/formations_repositories.dart';

class Formations extends StatefulWidget {
  const Formations({Key? key}) : super(key: key);

  @override
  State<Formations> createState() => _FormationsState();
}

class _FormationsState extends State<Formations> {
  late Future<List<Formation>> _formations;

  @override
  void initState() {
    super.initState();
    _formations = FormationRepository().fetchFormation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formations'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: _formations,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final formation = snapshot.data![index];
                        return Card(
                          semanticContainer: true,
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            child: MaterialButton(
                              onPressed: () {},
                              child: ListTile(
                                title: Text('${formation.uolib} de ${formation.acanom}',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Text('No Formation');
                  }
                  return const Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
