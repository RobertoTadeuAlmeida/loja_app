import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  String foto = "assets/images/evento.jpg";

  final ScrollController _scrollController = ScrollController();
  late PageController pageCtrl = PageController();
  List<Widget> imageList = [
    Image.asset("assets/images/evento.jpg"),
    Image.asset("assets/images/evento.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            width: 450,
            height: 250,
            color: Colors.blueGrey,
            child: PageView(controller: pageCtrl, children: imageList)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            child: Container(
              height: 250,
              child: Scrollbar(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  padding: EdgeInsets.all(8),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac justo nec dolor blandit condimentum. Integer auctor ipsum vitae metus bibendum, vel commodo libero consequat. Vivamus sed ligula quis massa scelerisque molestie. Vestibulum sed leo at lectus lacinia luctus. Aliquam erat volutpat. Phasellus ac risus non odio vehicula pellentesque. Sed tincidunt aliquam lorem, a suscipit risus fermentum vel. Quisque eu ipsum nec nisi tempor venenatis. Nulla facilisi. Suspendisse potenti. Sed tincidunt, justo eget sodales scelerisque, purus lacus varius justo, non dignissim lacus est vitae mauris. Suspendisse nec eros et mauris laoreet auctor. Sed auctor arcu in ex finibus, vel molestie sapien efficitur.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac justo nec dolor blandit condimentum. Integer auctor ipsum vitae metus bibendum, vel commodo libero consequat. Vivamus sed ligula quis massa scelerisque molestie. Vestibulum sed leo at lectus lacinia luctus. Aliquam erat volutpat. Phasellus ac risus non odio vehicula pellentesque. Sed tincidunt aliquam lorem, a suscipit risus fermentum vel. Quisque eu ipsum nec nisi tempor venenatis. Nulla facilisi. Suspendisse potenti. Sed tincidunt, justo eget sodales scelerisque, purus lacus varius justo, non dignissim lacus est vitae mauris. Suspendisse nec eros et mauris laoreet auctor. Sed auctor arcu in ex finibus, vel molestie sapien efficitur.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac justo nec dolor blandit condimentum. Integer auctor ipsum vitae metus bibendum, vel commodo libero consequat. Vivamus sed ligula quis massa scelerisque molestie. Vestibulum sed leo at lectus lacinia luctus. Aliquam erat volutpat. Phasellus ac risus non odio vehicula pellentesque. Sed tincidunt aliquam lorem, a suscipit risus fermentum vel. Quisque eu ipsum nec nisi tempor venenatis. Nulla facilisi. Suspendisse potenti. Sed tincidunt, justo eget sodales scelerisque, purus lacus varius justo, non dignissim lacus est vitae mauris. Suspendisse nec eros et mauris laoreet auctor. Sed auctor arcu in ex finibus, vel molestie sapien efficitur."),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text("O evento começa: 01/01/2025"),
            Text("O evento termina: 02/01/2025"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                heroTag: 'ingreco',
                onPressed: () {},
                label: Text("Adiquira seu ingreço aqui"),
              ),
            )
          ],
        ),
        FloatingActionButton.extended(
          heroTag: 'transporte',
          onPressed: () {
            Navigator.of(context).pushNamed('/tl');
          },
          label: Text("Quero meu transporte"),
        )
      ]),
    );
  }
}
