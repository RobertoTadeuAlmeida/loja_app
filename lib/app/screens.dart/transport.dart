import 'package:flutter/material.dart';

class Transport extends StatelessWidget {
  String foto = "assets/images/Transporte.jpeg";
  final ScrollController _scrollController = ScrollController();

  Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Container(child: Image.asset(foto)),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("O evento começa: 01/01/2025"),
                  Text("O evento termina: 02/01/2025"),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Text("Esse é meu transporte!"),
          )),
    );
  }
}
