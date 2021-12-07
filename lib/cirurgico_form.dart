import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:victoria_form/database_provider.dart';

class CirurgicoPage extends StatefulWidget {
  const CirurgicoPage({Key? key}) : super(key: key);

  @override
  _CirurgicoPageState createState() => _CirurgicoPageState();
}

class _CirurgicoPageState extends State<CirurgicoPage> {
  String nomepaciente = '';
  String dataNascimento = '';
  String tempointernacao = '';
  String comorbidades = '';
  String fatoresrisco = '';
  String dropdownValue = 'Complexidade';
  String localizacao = '';
  String dropdownValue2 = 'Exsudato';
  String dropdownValue3 = 'Tecidos';
  String margem = '';
  String dropdownValue5 = 'Dor';
  String profundidade = '';
  String comprimento = '';

  TextEditingController nomePacienteController = TextEditingController();
  TextEditingController tempoInternacaoController = TextEditingController();
  TextEditingController comorbidadesController = TextEditingController();
  TextEditingController fatoresRiscoController = TextEditingController();
  TextEditingController localizacaoController = TextEditingController();
  TextEditingController margemController = TextEditingController();
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController profundidadeController = TextEditingController();

  OfflineDatabaseProvider? database;

  @override
  void initState() {
    database = OfflineDatabaseProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate;
    return Scaffold(
      appBar: AppBar(
        title: Text('Feridas Cirúrgicas'),
        //automaticallyImplyLeading: false,
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      onChanged: (text) {
                        nomepaciente = text;
                      },
                      controller: nomePacienteController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Nome do Paciente',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputDatePickerFormField(
                            selectableDayPredicate: (day) => true,
                            onDateSaved: (date) {
                              dataNascimento = date.toString();
                            },
                            initialDate: selectedDate,
                            fieldLabelText: 'Data de Nascimento',
                            firstDate: DateTime(1930),
                            lastDate: DateTime(2030)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextFormField(
                          onChanged: (text) {
                            tempointernacao = text;
                          },
                          controller: tempoInternacaoController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Tempo de Internação',
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      onChanged: (text) {
                        comorbidades = text;
                      },
                      controller: comorbidadesController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Comorbidades',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      onChanged: (text) {
                        fatoresrisco = text;
                      },
                      controller: fatoresRiscoController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Fatores de Risco',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Características da Ferida',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Complexidade', 'Simples', 'Complexa']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextFormField(
                          onChanged: (text) {
                            localizacao = text;
                          },
                          controller: localizacaoController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Localização Anatômica',
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ), // onde devo ir
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue2,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue2) {
                            setState(() {
                              dropdownValue2 = newValue2!;
                            });
                          },
                          items: <String>[
                            'Exsudato',
                            'Seroso',
                            'Sanguinolento',
                            'Purulento',
                            'Seropurulenta',
                            'Fibrinoso'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue3,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue3) {
                            setState(() {
                              dropdownValue3 = newValue3!;
                            });
                          },
                          items: <String>[
                            'Tecidos',
                            'Opção 1',
                            'Opção 2',
                            'Opção 3'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          onChanged: (double) {
                            margem = double.toString();
                          },
                          controller: margemController,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                              labelText: 'Bordas/Margem',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      //agora
                    ],
                  ), // onde devo ir
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          onChanged: (double) {
                            comprimento = double.toString();
                          },
                          controller: comprimentoController,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                              labelText: 'Comprimento',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          onChanged: (double) {
                            profundidade = double.toString();
                          },
                          controller: profundidadeController,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                              labelText: 'Profundidade',
                              border: OutlineInputBorder()),
                          inputFormatters: [],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue5,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue5) {
                            setState(() {
                              dropdownValue5 = newValue5!;
                            });
                          },
                          items: <String>['Dor', 'Sim', 'Não']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      saveForm();
                    },
                    child: Text('Cadastrar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ), //ELEVATED
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }

  saveForm() {
    final newDate = dataNascimento.split(' ')[0];

    final list = newDate.split('-');
    var mes = list[0];

    final dataFinal = '$mes';

    Map<String, dynamic> data = {
      "nome_paciente": nomePacienteController.text,
      "data_nascimento": dataFinal,
      "tempo_internacao": tempoInternacaoController.text,
      "comorbidades": comorbidadesController.text,
      "fatores_risco": fatoresRiscoController.text,
      "complexidade": dropdownValue,
      "localizacao": localizacaoController.text,
      "exsudato": dropdownValue2,
      "tecidos": dropdownValue3,
      "bordas": margemController.text,
      "comprimento": comprimentoController.text,
      "profundidade": profundidadeController.text,
      "dor": dropdownValue5
    };

    database!.saveCirurgicoForm(data: data);
  }
}
