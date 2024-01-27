import 'package:flutter/material.dart';

class widgetute extends StatelessWidget {
  const widgetute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor: Colors.purple,
            dividerColor: Colors.purple,
            tabs: [
              Text(
                "chat",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "chat",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "chat",
                style: TextStyle(color: Colors.black),
              ),
              Expanded(
                child: TabBarView(children:[
                  Container(color: Colors.amber,)
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
