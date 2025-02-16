import 'package:flutter/material.dart';

class TelaPlaneta extends StatefulWidget {
  const TelaPlaneta({super.key});

  @override
  State<TelaPlaneta> createState() => _TelaPlanetaState();
}

class _TelaPlanetaState extends State<TelaPlaneta> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _tamanhoController = TextEditingController();
  final TextEditingController _distanciaController = TextEditingController();
  final TextEditingController _apelidoController = TextEditingController();

  @override
  void initState() {
    _nomeController.text = 'Terra';
    _tamanhoController.text = '100.0';
    _distanciaController.text = '1000.0';
    _apelidoController.text = 'Terra';
    super.initState();
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _tamanhoController.dispose();
    _distanciaController.dispose();
    _apelidoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('cadastrar Planeta'),
        elevation: 3
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Form(
         key: _formKey,
        child: SingleChildScrollView(
          child:Column(
         children: [
            TextFormField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextFormField(
              controller: _tamanhoController,
              decoration: 
              const InputDecoration(
                labelText: 'Tamanho (em km)'),
              ),
            TextFormField(
              controller: _distanciaController,
              decoration: 
              const InputDecoration(
                labelText: 'Distância (em km)'),
            ),
              TextFormField(
              controller: _apelidoController,
              decoration: const InputDecoration(
                labelText: 'Apelido'),
              ),
             const SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {}, // _submitForm,
                child: Text('Salvar'),
           ),
          ],
        ),
       )
      ),
     ), 
    );
    }
  }
