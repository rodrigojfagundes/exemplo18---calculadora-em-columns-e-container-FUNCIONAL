import 'dart:ffi';

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
//declarando as variaveis

//na variavel t1 é possivel colocar varios numeros em sequencia SEM SOMAR eles
//digitar varios numeros ao apertar nos botoes, sem SOMAR AUTOMATICAMENTE
  final TextEditingController t1 = TextEditingController();

  //double de 3 variaveis... Pois NAO é possivel fazer OP Matematicas com
  //a variavel T1... Ela nao DIVIDE, SOMA, Multiplica...
  //Entao temos q pegar o q ta salvo nela e colocar nas variaveis tipo DOUBLE

  //resultado vai pegar o PRIMEIRO numero digitado ANTES de apertar no SOMA
  double resultado = 0;
  //resultado1 vai pegar os primeiros numeros digitados DEPOIS de apertar no SOMA
  double resultado1 = 0;
  //resultado2 vai ser a SOMA de RESULTADO + RESULTADO1
  double resultado2 = 0;
  //OPERACAO, se valor for 1 entao e SOMA, se for 2 entao é Multiplicacao, etc...
  double operacao = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando o esqueleto/scaffold do App
      home: Scaffold(
        //cor de fundo padrao do app
        backgroundColor: Colors.yellow,
        //todo conteudo do app vai ficar em area visivel (sem torre sinal, bateria, etc...)
        body: SafeArea(
          //Column é para criar uma LISTA/VETOR de containers um em baixo do outro
          child: Column(
            //children é o nome dado aos objetos dessa lista/vetor
            children: [
              //gesture detector, area de detectcao de toque na tela
              GestureDetector(
                //se for dado um CLICK/TOQUE
                onTap: () {
                  //setState permite ser alterado o valor de variavel
                  setState(() {
                    //adicionando o VALOR 1 aos VALORES JA EXISTENTE na variavel sem SOMAR
                    t1.text = t1.text + "1";
                  });
                },
                //criando um container, TAMANHO, COR e escrito VALOR1
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.green,
                  child: Text('valor 1'),
                ),
              ),
              //criando outra area de deteccao de toque
              GestureDetector(
                //se for dado 1 toque/click
                onTap: () {
                  //ira permitir alterar o ESTADO/VALOR da variavel
                  setState(() {
                    //acresentando o VALOR 2 a VARIAVEL T1... Sem SOMAR ao valor anterior
                    t1.text = t1.text + "2";
                  });
                },
                //criando container... tamanho, cor, texto...
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.red,
                  child: Text('valor 2'),
                ),
              ),
              //campo para detectar se foi tocado na tela
              GestureDetector(
                //se foi dado um TOQUE/CLICK
                onTap: () {
                  //e permitido alterar o ESTADO/VALOR da variavel T1
                  setState(() {
                    //adicionando o valor 3 aos valores ja existente na variavel
                    t1.text = t1.text + "3";
                  });
                },
                //container com as informacoes de tamanho, cor e texto
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.yellow,
                  child: Text('valor 3'),
                ),
              ),
              //campo para detectar se foi TOCADO/CLICADO na tela
              GestureDetector(
                //se foi dado UM toque apenas
                onTap: () {
                  //permitindo alterar o ESTADO / VALOR da variavel
                  setState(() {
                    //adicionando o valor 4 aos valores da variavel SEM SOMAR eles
                    t1.text = t1.text + "4";
                  });
                },
                //criando um container Tamanho, Cor, Texto
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.deepOrange,
                  child: Text('valor 4'),
                ),
              ),
              //criando campo para q ao clicar sera add o valor 5 aos valor da variavel T1
              GestureDetector(
                //ao ser dado um toque simples
                onTap: () {
                  // SetState vai permitir q seja alterado o valor da variavel T1
                  setState(() {
                    //add o valor 5 a T1
                    t1.text = t1.text + "5";
                  });
                },
                //criando um container com 30 px de altura e 100 px de largura
                //tamanho, cor, texto
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.indigoAccent,
                  child: Text('valor 5'),
                ),
              ),
              //campo para deteccao de toque/clique
              GestureDetector(
                //se clicado 1 vez
                onTap: () {
                  //permitir alterar o valor da variavel T1 com o
                  setState(() {
                    t1.text = t1.text + "6";
                  });
                },
                //criando um container, tamanho, cor, texto...
                //ao clicar no CONTAINER vai acionar o GestureDetector acima
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.lightGreen,
                  child: Text('valor 6'),
                ),
              ),
              //campo de detectar toque/clique
              GestureDetector(
                //ao ser dado um clique simples
                onTap: () {
                  //ira permitir q seja alteradoo valor das variaveis
                  setState(() {
                    //adicionando o valor 7 aos valores ja existente em T1
                    t1.text = t1.text + "7";
                  });
                },
                //criando um container, com tamanho, cor e texto
                //ao ser clicado no container vai executar o gesture detector acima
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.brown,
                  child: Text('valor 7'),
                ),
              ),
              //criandocampo de deteccao de toque/click
              GestureDetector(
                //se for dado um toque
                onTap: () {
                  //ira permitir alterar o valor da variavel T1
                  setState(() {
                    //add o num 8 a variavel T1
                    t1.text = t1.text + "8";
                  });
                },
                //container, tamanho, cor, texto... ao ser clicado executa o Gesture Detect
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.lime,
                  child: Text('valor 8'),
                ),
              ),
              //criando campo para detectar se foi clicado no container...
              GestureDetector(
                //ao ser clicado 1 vez
                onTap: () {
                  //set state permite alterar o valor da variavel T1
                  setState(() {
                    //add o val 8 a variavel T1
                    t1.text = t1.text + "9";
                  });
                },
                //criando um container para executar o q ta no gesture detector acima
                //container, tamanho, cor nome...
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.blueAccent,
                  child: Text('valor 9'),
                ),
              ),
              //campo para detectar toque/clique na tela
              GestureDetector(
                //se for tocado 1 vez
                onTap: () {
                  //permitir alterar o valor da variavel T1
                  setState(() {
                    //add o valor 0 aos valores presentes em T1
                    t1.text = t1.text + "0";
                  });
                },
                //container, q ira executar o q ta em gesture detector...
                //tamanho, cor, texto
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.teal,
                  child: Text('0'),
                ),
              ),

              //Gesture Detector para deteccao de TOQUE/CLICK
              GestureDetector(
                //se for clicado UMA vez
                onTap: () {
                  //sera PERMITIDO alterar os VALORES/ESTADOS das Variaveis
                  setState(() {
                    //NAO sei se é realmente nescessario este IF a baixo...
                    //Verificando se o valor da variavel RESULTADO esta ZERADO (menor q 1)

                    if (resultado < 1) {
                      //passando o valor de T1 q ta em TEXT e nao da para fazer as OP Matematica
                      //para a variavel RESULTADO q e do tipo DOUBLE
                      resultado = double.parse(t1.text);
                      //limpando os valores da variavel T1... Para usarmos para por
                      //o outro NUMERO para fazermos a SOMA...
                      t1.clear();
                      //variavel OPERACAO recebe o valor 1... PQ no futuro terá um IF no
                      //Gesture Detect do botao ===... e se Operacao = 1, entao e SOMA
                      //se OPERACAO = 2 é multiplicacao... etc...
                      operacao = 1;
                    }
                  });
                },
                //toda a operacao do GESTURE DETECT acima sera feita quando clicar
                //no container a baixo com o nome de SOMAR...
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.grey,
                  child: Text('somar'),
                ),
              ),
              //detector de toque/clique na tela
              GestureDetector(
                //se for tocado uma vez
                onTap: () {
                  //permitir alterar o estado
                  setState(() {
                    //se o valor da variavel RESULTADO for MENOR q 1(for zero)
                    if (resultado < 1) {
                      //entao a variavel resultado vai receber o valor q ta na variavel T1
                      resultado = double.parse(t1.text);
                      //limpando a variavel T1(pois ela sera utilizada para por o proximo numero)
                      t1.clear();
                      //a variavel operacao recebe o valor 2...
                      //Pq se 2 significa q mais em baixo vamos fazer MULTIPLICACAO
                      operacao = 2;
                    }
                  });
                },
                //criando container para q ao clicar no container
                //executar o q ta no gesture detector acima...
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.black54,
                  child: Text('multiplicar'),
                ),
              ),
              //gesture detector, verificar se a tela foi apertada...
              GestureDetector(
                //se foi dado 1 click
                onTap: () {
                  //set state permite alterar o valor das variaveis
                  setState(() {
                    //verificando se o valor q ta na variavel RESULTADO é 0
                    if (resultado < 1) {
                      //caso sim, vamos passar o valor q ta na variavel T1 para ela
                      //e nescessario isso pq NAO E POSSIVEL fazer OPERACOES matematica
                      //com variavel do tipo TEXT
                      resultado = double.parse(t1.text);
                      //ja q o valor de T1 foi copiado para a var RESULTADO
                      //podemos ZERAR o valor de T1
                      t1.clear();
                      //var OPERACAO recebe valor 3... Pois assim saberamos
                      //q e para realizar a divisao com base no valor q foi colocado
                      //na var resultado
                      operacao = 3;
                    }
                  });
                },
                //criando o container q ao ser clicado vai chamar o
                //gesture detector acima
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.redAccent,
                  child: Text('diminuir'),
                ),
              ),
              //area de detectar toque
              GestureDetector(
                //se for dado um toque
                onTap: () {
                  //sera permitido alterar o valor da variavel
                  setState(() {
                    //se o valor da variavel resultado for menor q 1... ou SEJA ZEEROO
                    if (resultado < 1) {
                      //variavel resultado recebe o q ta na variavel t1.text
                      resultado = double.parse(t1.text);
                      //limpando os dados da variavel t1
                      t1.clear();
                      //var operacao recebe numero 4... ou seja sera feita OPERACAO de
                      //divisao
                      operacao = 4;
                    }
                  });
                },
                //container do dividir... para executar o q ta no
                //gesture detector acima
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.lightBlueAccent,
                  child: Text('dividir'),
                ),
              ),

              //area para deteccao de toque/clique
              GestureDetector(
                //se for tocado uma vez
                onTap: () {
                  //permitindo ALTERAR o ESTADO/VALOR das variaveis a baixo
                  setState(() {
                    //SE o valor da variavel OPERACAO for 1, entao e para SOMAR as variaveis
                    if (operacao == 1) {
                      //NAO SEI se esse IF e nescessario, mas ele verifica se a VARIAVEL RESULTADO1 esta ZERADA...
                      if (resultado1 < 1) {
                        //pegando o valor de T1 e passando para a variavel RESULTADO1
                        //pq T1 é .TEXT entao nao da para fazer SOMA, VEZES, ETC...
                        //entao jogamos o valor para resultado1 que é DOUBLE, dai pode somar, vezes, etc..
                        resultado1 = double.parse(t1.text);
                        //a variavel RESULTADO2, irá receber a SOMA de RESULTADO + RESULTADO1
                        //para no proximo container imprimirmos o valor re RESULTADO2... a soma
                        resultado2 = resultado + resultado1;
                      }
                    }
                    //se o valor da variavel OPERACAO for 2... Entao e para fazer
                    //a MULTIPLICACAO dos valores
                    if (operacao == 2) {
                      //verificando se o valor da variavel RESULTADO1 é ZERO
                      if (resultado1 < 1) {
                        //entao vamos pegar o q ta na variavel T1 e passar para var RESULTADO1
                        resultado1 = double.parse(t1.text);
                        //variavel Resultado2 vai receber a MULTIPLICACAO
                        //de resultado com resultado1... e o resultado ficara
                        //armazenado em resultado2... q dps sera impresso
                        resultado2 = resultado * resultado1;
                      }
                    }
                    //se o valor da variavel OPERACAO for 3... entao
                    //e uma OP de diminuir
                    if (operacao == 3) {
                      //verificando se o valor da var Resultado1 ta zerado
                      if (resultado1 < 1) {
                        //passando o valor de t1 para resultado1
                        resultado1 = double.parse(t1.text);
                        //var RESULTADO2 recebe o valor de RESULTADO -(menos) RESULTADO1
                        resultado2 = resultado - resultado1;
                      }
                    }
                    //se o valor da variavel OPERACAO for 4 entao é para fazer DIVISAO
                    if (operacao == 4) {
                      //se o valor da var RESULTADO 1 seria
                      if (resultado1 < 1) {
                        //copiando o valor de t1 para a var resultado1
                        resultado1 = double.parse(t1.text);
                        //a var resultado2 recebe a divisao de resultado por resultado1
                        resultado2 = resultado / resultado1;
                      }
                    }
                  });
                },
                //o codigo do Gesture Detect acima vai executar dentro de um
                //container com o SIMBOLO/TEXT de == IGUAL
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.amber,
                  child: Text('='),
                ),
              ),
              //campo para detectar click/toque
              GestureDetector(
                //esse ON TAP eu criei, mas EU ACHO Q NAO PRECISAVA...
                onTap: () {
                  //permitir alterar valores
                  setState(() {
                    //fiz o CODIGO a baixo q EU ACHO q nao precisava...
                    //mas tinha q ser colocado algo para ao clicar no container executar
                    //e ter o resultado
                    resultado2 = resultado2;
                  });
                },
                //container ROXO q ao clicar nele ele mostra o q ta na variavel
                //resultado2
                child: Container(
                  height: 30,
                  width: 100,
                  color: Colors.deepPurple,
                  child: Text(resultado2.toString()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
