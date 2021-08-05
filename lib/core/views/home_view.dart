import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gamerz/routes/router.gr.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  Widget adapter({required Widget child}) {
    return SliverToBoxAdapter(
      child: child,
    );
  }

  final features = [
    {'icon': Icons.ac_unit, 'text': 'Rooms'},
    {'icon': Icons.access_alarm_sharp, 'text': 'Team Codes'},
    {'icon': Icons.baby_changing_station, 'text': 'Tournaments'},
    {'icon': Icons.cabin, 'text': 'Challenges'},
    {'icon': Icons.dangerous, 'text': 'Lucky Draw'},
    {'icon': Icons.e_mobiledata, 'text': 'Lucky Spin'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gamerz"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Features(
                      icon: features[index]['icon'] as IconData,
                      text: features[index]['text'] as String,
                      onTap: () {
                        if (features[index]['text'] == 'Rooms') {
                          context.pushRoute(RoomsView());
                        }
                      },
                    );
                  },
                  childCount: features.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 5)),
          )
        ],
      ),
    );
  }
}

class Features extends StatelessWidget {
  final double borderRadius = 12;
  final IconData icon;
  final String text;
  final GestureTapCallback? onTap;

  const Features({
    Key? key,
    required this.icon,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                size: 50,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
