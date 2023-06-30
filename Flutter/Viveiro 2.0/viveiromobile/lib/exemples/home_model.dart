import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('VIVEIRO'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          //scrollDirection: Axis.horizontal,
          children: const [
            Task('Arvore 1', Colors.teal,
                'https://static.escolakids.uol.com.br/2019/09/arvore.jpg', 5),
            Task(
                'Arvore 2',
                Colors.lime,
                'https://ciclovivo.com.br/wp-content/uploads/2021/05/10-arvores-incriveis-sangue-dragao-Rod-Waddington.jpg',
                2),
            Task(
                'Arvore 3',
                Colors.blueAccent,
                'https://www.eusemfronteiras.com.br/wp-content/uploads/2019/02/Design-sem-nome-84-810x456.png',
                3),
            Task('Arvore 4', Colors.orange,
                'https://static.escolakids.uol.com.br/2019/09/arvore.jpg', 4),
            Task(
                'Arvore 5',
                Colors.red,
                'https://ciclovivo.com.br/wp-content/uploads/2021/05/10-arvores-incriveis-sangue-dragao-Rod-Waddington.jpg',
                5),
            Task(
                'Arvore 6',
                Colors.teal,
                'https://www.eusemfronteiras.com.br/wp-content/uploads/2019/02/Design-sem-nome-84-810x456.png',
                4),
            Task(
                'Arvore 7',
                Colors.teal,
                'https://1.bp.blogspot.com/-xa5WuwYEkuE/W80UexcX4lI/AAAAAAAABkA/RIyo2EzDBbcZfOEcfVtR7i4RsLGtXpUHgCLcBGAs/s1600/ipe.jpg',
                3),
            Task(
                'Arvore 8',
                Colors.teal,
                'https://vejario.abril.com.br/wp-content/uploads/2021/06/FARM.jpg?quality=70&strip=info&w=1280&h=720&crop=1',
                2),
            Task(
                'Arvore 9',
                Colors.teal,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUFbKJO40UHs-0aNF9m2rnk7ECsftS5kpl1g&usqp=CAU',
                1),
            Task(
                'Arvore 10',
                Colors.teal,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUFbKJO40UHs-0aNF9m2rnk7ECsftS5kpl1g&usqp=CAU',
                2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              opacidade = !opacidade; //recebe o inverso
            },
          );
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final Color cor1;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.cor1, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 1),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.indigo, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 72,
                      height: 100,
                      //color: widget.cor1,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              Image.network(widget.foto, fit: BoxFit.cover),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 1)
                                    ? Colors.blue
                                    : Colors.blue[100]),
                            Icon(Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 2)
                                    ? Colors.blue
                                    : Colors.blue[100]),
                            Icon(Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 3)
                                    ? Colors.blue
                                    : Colors.blue[100]),
                            Icon(Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 4)
                                    ? Colors.blue
                                    : Colors.blue[100]),
                            Icon(Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 5)
                                    ? Colors.blue
                                    : Colors.blue[100]),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 52,
                      //width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: const Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up_rounded),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.teal,
                        value: (widget.dificuldade > 0)
                            ? (nivel / widget.dificuldade) / 10
                            : 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Nível: $nivel',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}