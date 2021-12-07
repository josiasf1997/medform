class CirurgicoModel {
  String? nomePaciente;
  String? dataNascimento;
  String? tempoInternacao;
  String? comorbidades;
  String? fatoresRisco;
  String? complexidade;
  String? localizacao;
  String? exsudato;
  String? tecidos;
  String? bordas;
  String? comprimento;
  String? profundidade;
  String? dor;

  //"nome_paciente": nomePacienteController.text,
  // "data_nascimento": dataFinal,
  //  "tempo_internacao": tempoInternacaoController.text,
  // "comorbidades": comorbidadesController.text,
  // "complexidade": dropdownValue,
  //  "localizacao": localizacaoController.text,
  //  "exsudato": dropdownValue2,
  //  "tecidos": dropdownValue3,
  //  "bordas" : margemController.text,
  //   "comprimento": comprimentoController.text,
  //  "profundidade": profundidadeController.text,
  //   "dor": dropdownValue5

  CirurgicoModel({
    this.nomePaciente,
    this.dataNascimento,
    this.tempoInternacao,
    this.comorbidades,
    this.fatoresRisco,
    this.complexidade,
    this.localizacao,
    this.exsudato,
    this.tecidos,
    this.bordas,
    this.comprimento,
    this.profundidade,
    this.dor,
  });

  factory CirurgicoModel.fromJson({
    required Map<String, dynamic> json,
    bool isFromWeb = false,
  }) {
    return CirurgicoModel(
      nomePaciente: json['nome_paciente'],
      dataNascimento: json['data_nascimento'],
      tempoInternacao: json['tempo_internacao'],
      comorbidades: json['comorbidades'],
      fatoresRisco: json['fatores_risco'],
      complexidade: json['complexidade'],
      localizacao: json['localizacao'],
      exsudato: json['exsudato'],
      tecidos: json['tecidos'],
      bordas: json['bordas'],
      comprimento: json['comprimento'],
      profundidade: json['profundidade'],
      dor: json['dor'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'abbrev': this.abbrev,
  //     'author': this.author,
  //     'chapters': this.chapters,
  //     'comment': this.comment,
  //     'group_name': this.group,
  //     'name': this.name,
  //     'testament': this.testament,
  //   };
  // }
}
