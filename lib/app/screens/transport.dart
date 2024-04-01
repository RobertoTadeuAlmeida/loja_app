import 'package:flutter/material.dart';

class Transport extends StatefulWidget {
  Transport({super.key});

  @override
  State<Transport> createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  String foto = "assets/images/Transporte.jpeg";

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(child: Image.asset(foto)),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                )),
            child: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: _scrollController,
                padding: EdgeInsets.all(8),
                child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    " Nulla ac justo nec dolor blandit condimentum. Integer "
                    "auctor ipsum vitae metus bibendum, vel commodo libero "
                    "consequat. Vivamus sed ligula quis massa scelerisque "
                    "molestie. Vestibulum sed leo at lectus lacinia luctus. "
                    "Aliquam erat volutpat. Phasellus ac risus non odio "
                    "vehicula pellentesque. Sed tincidunt aliquam lorem, a"
                    " suscipit risus fermentum vel. Quisque eu ipsum nec"
                    " nisi tempor venenatis. Nulla facilisi. Suspendisse"
                    " potenti. Sed tincidunt, justo eget sodales scelerisque,"
                    " purus lacus varius justo, non dignissim lacus est vitae "
                    "mauris. Suspendisse nec eros et mauris laoreet auctor. "
                    "Sed auctor arcu in ex finibus, vel molestie sapien "
                    "efficitur.Lorem ipsum dolor sit amet, consectetur "
                    "adipiscing elit. Nulla ac justo nec dolor blandit "
                    "condimentum. Integer auctor ipsum vitae metus bibendum,"
                    ""),
              ),
            ),
          ),
        ),
        FloatingActionButton.extended(
          heroTag: 'final',
          onPressed: () {},
          label: Text("Esse é meu transporte!"),
        )
      ]),
    );
  }
}
