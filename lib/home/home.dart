import 'package:flutter/material.dart';
import 'package:plant_linkedin/description/description.dart';
import 'package:plant_linkedin/models/plant.dart';

import '../bottom_navigator.dart';
import 'components/card_component.dart';
import 'components/item_list.dart';
import 'components/row_text.dart';
import 'components/text_input.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          alignment: Alignment.center,
          child: Body(size: size),
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // INPUT
        TextInput(size: size),
        SizedBox(
          height: 20,
        ),
        CardComponent(size: size),
        SizedBox(
          height: 27,
        ),
        RowText(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: plants.length,
            itemBuilder: (context, index) {
              Plant plant = plants[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Description(
                          plant: plant,
                        );
                      },
                    ),
                  );
                },
                child: ListComponent(
                  size: size,
                  imgPath: plant.imageUrl,
                  plantName: plant.name,
                  plantPrice: plant.price,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
