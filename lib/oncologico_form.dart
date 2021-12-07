import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class OncologicoPage extends StatefulWidget {
  const OncologicoPage({Key? key}) : super(key: key);

  @override
  _OncologicoPageState createState() => _OncologicoPageState();
}

class _OncologicoPageState extends State<OncologicoPage> {
  String nomepaciente = '';
  String tempointernacao = '';
  String comorbidades = '';
  String fatoresrisco = '';
  String localizacao = '';
  String dropdownValue = 'Estadiamento';
  String dropdownValue2 = 'Aspecto da Lesão';
  String dropdownValue3 = 'Sangramento';
  String dropdownValue4 = 'Dor';
  String dropdownValue5 = 'Prurido';
  String dropdownValue6 = 'Odor';
  String dropdownValue7 = 'Exsudato';
  String dropdownValue8 = 'Sinais de Infecção';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feridas Oncológicas'),
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
                            onDateSaved: (date) {},
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
                          keyboardType: TextInputType.number,
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
                      keyboardType: TextInputType.number,
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Tipo de Câncer',
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          items: <String>[
                            'Estadiamento',
                            'Estadiamento 1',
                            'Estadiamento 1N',
                            'Estadiamento 2',
                            'Estadiamento 3',
                            'Estadiamento 4'
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
                            'Aspecto da Lesão',
                            'Ulcerativa Maligna',
                            'Fungosa Maligna',
                            'Fungosa Maligna Ulcerada'
                          ].map<DropdownMenuItem<String>>((String value) {
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
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextFormField(
                          onChanged: (text) {
                            localizacao = text;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Localização Anatômica',
                              border: OutlineInputBorder()),
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
                          items: <String>['Sangramento', 'Sim', 'Não']
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
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValue4,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue4) {
                            setState(() {
                              dropdownValue4 = newValue4!;
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
                          items: <String>['Prurido', 'Sim', 'Não']
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
                        child: DropdownButton<String>(
                          value: dropdownValue6,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue6) {
                            setState(() {
                              dropdownValue6 = newValue6!;
                            });
                          },
                          items: <String>['Odor', 'Grau 1', 'Grau 2', 'Grau 3']
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
                        child: DropdownButton<String>(
                          value: dropdownValue7,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue7) {
                            setState(() {
                              dropdownValue7 = newValue7!;
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
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: DropdownButton<String>(
                      value: dropdownValue8,
                      style: const TextStyle(color: Colors.deepOrange),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue8) {
                        setState(() {
                          dropdownValue8 = newValue8!;
                        });
                      },
                      items: <String>['Sinais de Infecção', 'Sim', 'Não']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
}
