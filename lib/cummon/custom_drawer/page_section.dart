import 'package:app_barbearia/cummon/custom_drawer/page_tile.dart';
import 'package:flutter/material.dart';

class PageSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Agendamento',
          iconData: Icons.event,
          onTap: (){

          },
        ),
        PageTile(
          label: 'Meus Agendamentos',
          iconData: Icons.filter,
          onTap: (){

          },
        ),
        PageTile(
          label: 'Histórico de Serviços',
          iconData: Icons.query_builder,
          onTap: (){

          },
        ),
        PageTile(
          label: 'Contato',
          iconData: Icons.call,
          onTap: (){

          },
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person_outline,
          onTap: (){

          },
        ),
      ],
    );
  }
}
