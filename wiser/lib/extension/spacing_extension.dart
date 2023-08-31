import 'package:flutter/material.dart';

extension SpacingExtension on EdgeInsets {
  double get value => top;
  String get str => value.toString();

  EdgeInsets get v => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get h => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get b => EdgeInsets.only(bottom: value);
  EdgeInsets get r => EdgeInsets.only(right: value);
  EdgeInsets get l => EdgeInsets.only(left: value);
  EdgeInsets get t => EdgeInsets.only(top: value);

  Widget get verticalGap => SizedBox(height: value);
  Widget get horizontalGap => SizedBox(width: value);
}
/*
Um monolito é uma abordagem de arquitetura de software onde, em um único repositório, temos uma aplicação interconecatada com as demais partes ou
unidades da aplicação de forma coesa e diretas, fazendo com que não haja dependencias externas entre as partes, e como consequencia disso, facilitando o processo
de desenvolvimento de software num primeiro momento, mas podendo causar problemas a médio e longo prazo a medida com o que a aplicação escala

Já a abordade multi-repo encarrega-se de segregar, em diferentes repositórios versionáveis, a aplição e suas partes, como por exemplo um repositorio de um app que consome,
como dependencia, uma biblioteca para desyng system, autenticação, etc. É mais recomendado para equipes maiores, principalmente pela possibilidade de desenvolvimento
paralelos das partes unitárias do sistema, de forma independente e isolada, no entando pode gerar confusão ou dificuldade em alguns processos de rotina, como merge requests,
versionamento e consumo de outras dependencias

Por fim, temos abordagem de mono-repo, que cumpre o papel de ser o intermédio entre monolito e multi-repo, isto é, concentrando num unico repositorio todas as partes/unidades do sistema, mas de forma segregada,
ou modularizada, pra melhor entendimento. Esse módulos podem ser criado como bibliotecas/plugins/pacotes, e consumidos pela aplicação principal, ou até mais de uma, se for um projeto white-label, bastando 
que adicione-as como depedencia do projeto. Esta abordagem é mais recomendada para equipes menores, uma vez que ela proporciona mais agilidade no desenvolvimento rotineiro,
e nao possui tantas barreiras de comunição para não gerar incosistencias durante o processo.
*/