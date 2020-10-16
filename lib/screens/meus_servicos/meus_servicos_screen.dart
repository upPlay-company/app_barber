import 'package:flutter/material.dart';

class MeusServicosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
      child: Card(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                'Nenhum Serviço Agendado!!!',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Principal',
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
