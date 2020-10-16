import 'package:app_barbearia/cummon/custom_drawer/page_tile.dart';
import 'package:app_barbearia/stores/page_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageSection extends StatelessWidget {

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Agendamento',
          iconData: Icons.event,
          onTap: (){
            pageStore.setPage(0);
          },
          highlighted: pageStore.page == 0,
        ),
        PageTile(
          label: 'Meus Agendamentos',
          iconData: Icons.filter,
          onTap: (){
            pageStore.setPage(2);
          },
          highlighted: pageStore.page == 2,
        ),
        PageTile(
          label: 'Histórico de Serviços',
          iconData: Icons.query_builder,
          onTap: (){
            pageStore.setPage(1);
          },
          highlighted: pageStore.page == 1,
        ),
        PageTile(
          label: 'Contato',
          iconData: Icons.call,
          onTap: (){
            pageStore.setPage(3);
          },
          highlighted: pageStore.page == 3,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person_outline,
          onTap: (){
            pageStore.setPage(4);
          },
          highlighted: pageStore.page == 4,
        ),
      ],
    );
  }
}
