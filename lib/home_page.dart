import 'package:coffee/units_button.dart';
import 'package:flutter/material.dart';
import 'MyPainter.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Units {
  coffee,
  drinks,
  teas,
  bakery,
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  dynamic selectedUnit;

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.mugSaucer,color: Colors.black.withOpacity(0.5),),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Berlin', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          Text('Space', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Colors.black.withOpacity(0.5)),),
                        ],
                      ),
                    ],
                  ),

                  FaIcon(FontAwesomeIcons.basketShopping, color: Colors.black.withOpacity(0.5),),
                ],
              ),
            ),

            const SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Smooth Out', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                Text('Your Everyday', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: 600,
                child: CustomPaint(
                  painter: BackgroundPainter(),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 65,
                          left: 20,
                          child: Column(
                            children: [
                              UnitsButton(
                                  color: selectedUnit == Units.coffee ? kChinook : Colors.white.withOpacity(0.9),
                                  frameColor: selectedUnit == Units.coffee ? kTwine : Colors.transparent,
                                  child: Image.asset('assets/images/coffee.png'),
                                  onPress: (){
                                    setState(() {
                                      selectedUnit = Units.coffee;
                                    });
                                  },
                                  ),
                              const SizedBox(height: 10,),
                              const Text('Coffee', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ],
                          ),
                      ),
                      Positioned(
                        top: 30,
                        left: 112,
                        child: Column(
                          children: [
                            UnitsButton(
                              color: selectedUnit == Units.drinks ? kChinook : Colors.white.withOpacity(0.9),
                              frameColor: selectedUnit == Units.drinks ? kTwine : Colors.transparent,
                              child: Image.asset('assets/images/drink.png'),
                              onPress: (){
                                setState(() {
                                  selectedUnit = Units.drinks;
                                });
                              },
                            ),
                            const SizedBox(height: 10,),
                            const Text('Drinks', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 112,
                        child: Column(
                          children: [
                            UnitsButton(
                              color: selectedUnit == Units.teas ? kChinook : Colors.white.withOpacity(0.9),
                              frameColor: selectedUnit == Units.teas ? kTwine : Colors.transparent,
                              child: Image.asset('assets/images/teas.png'),
                              onPress: (){
                                setState(() {
                                  selectedUnit = Units.teas;
                                });
                              },
                            ),
                            const SizedBox(height: 10,),
                            const Text('Hot Teas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 65,
                        right: 20,
                        child: Column(
                          children: [
                            UnitsButton(
                              color: selectedUnit == Units.bakery ? kChinook : Colors.white.withOpacity(0.9),
                              frameColor: selectedUnit == Units.bakery ? kTwine : Colors.transparent,
                              child: Image.asset('assets/images/bakery.png'),
                              onPress: (){
                                setState(() {
                                  selectedUnit = Units.bakery;
                                });
                              },
                            ),
                            const SizedBox(height: 10,),
                            const Text('Bakery', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      Positioned(
                        top: 130,
                          left: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 85,
                                left: 50,
                                child: Container(
                                  width: 220,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(160),
                                    color: kOceanGreen,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                 setState(() {
                                   Navigator.of(context).pushNamed('/coffee_page');
                                 });
                                },
                                child: SizedBox(
                                  width: 320,
                                  height: 320,
                                  child: Image.asset('assets/images/image.png'),
                                ),
                              ),
                            ],
                          )),

                      Positioned(
                        top: 440,
                        left: 160,
                        child: Column(
                        children: const [
                          Text('Caramel', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                          Text('Frappucino', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(height: 10,),
                          Text('\$30.00', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                        ],
                      ),
                      ),

                      Positioned(
                        top: 550,
                          left: 180,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            List.generate(4, (indexDots) {
                              return  Container(
                                margin: const EdgeInsets.only(bottom: 15, right: 6),
                                // width: index == indexDots ? 14 : 8,
                                // height: index == indexDots ? 14 : 8,
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: index == indexDots ? Colors.white.withOpacity(0.9) : Colors.white.withOpacity(0.4)
                                ),
                              );
                            }),
                          ),),

                      Positioned(
                          top: 260,
                          left: -170,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 85,
                                left: 50,
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(160),
                                    color: kOceanGreen,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 320,
                                height: 320,
                                child: Image.asset('assets/images/left.png'),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 250,
                          right: -170,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 85,
                                right: 45,
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(160),
                                    color: kOceanGreen,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 330,
                                height: 330,
                                child: Image.asset('assets/images/left.png'),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
