import 'package:coffee/quantity.dart';
import 'package:coffee/units_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'order_button.dart';


enum Units {
  small,
  midd,
  big,
  custom,
}

class CoffeePage extends StatefulWidget {
  const CoffeePage({Key? key}) : super(key: key);

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {

  dynamic selectedUnit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home_page');
                    },
                    icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Colors.black.withOpacity(0.5),)),
                const Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                FaIcon(FontAwesomeIcons.basketShopping, color: Colors.black.withOpacity(0.5),),
              ],
            ),
          ),

        Stack(
          children: [
            Positioned(
              top: 98,
              left: 50,
              child: Container(
                width: 290,
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  boxShadow: [
                    BoxShadow(
                      color: kChateauGreen.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(2, 5),
                    )
                  ],
                  color: kOceanGreen,
                ),
              ),
            ),
            SizedBox(
              width: 410,
              height: 410,
              child: Image.asset('assets/images/image.png'),
            ),
          ],
        ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Caramel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                    Text('Frappuccino', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  ],
                ),
                Column(
                  children: [
                    const Text('\$30.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: kChateauGreen),),
                    Text('Bestseller', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black.withOpacity(0.5)),)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text('Size Options', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black.withOpacity(0.6)),)),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UnitsButton(
                      color: selectedUnit == Units.small ? kChateauGreen : kChinook.withOpacity(0.2),
                      frameColor: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                          color: Colors.transparent,
                          child: Image.asset('assets/images/coffee.png')),
                      onPress: (){
                        setState(() {
                          selectedUnit = Units.small;
                        });
                      },
                    ),
                    const SizedBox(height: 3,),
                    const Text('Small', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    Text('12 Fl Oz', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black.withOpacity(0.4)),),
                  ],
                ),
                Column(
                  children: [
                    UnitsButton(
                      color: selectedUnit == Units.midd ? kChateauGreen : kChinook.withOpacity(0.2),
                      frameColor: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.all(8),
                          child: Image.asset('assets/images/coffee.png')),
                      onPress: (){
                        setState(() {
                          selectedUnit = Units.midd;
                        });
                      },
                    ),
                    const SizedBox(height: 3,),
                    const Text('Mid', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    Text('16 Fl Oz', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black.withOpacity(0.4)),),
                  ],
                ),
                Column(
                  children: [
                    UnitsButton(
                      color: selectedUnit == Units.big ? kChateauGreen : kChinook.withOpacity(0.2),
                      frameColor: Colors.transparent,
                      child: Image.asset('assets/images/coffee.png'),
                      onPress: (){
                        setState(() {
                          selectedUnit = Units.big;
                        });
                      },
                    ),
                    const SizedBox(height: 3,),
                    const Text('Big', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    Text('24 Fl Oz', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black.withOpacity(0.4)),),
                  ],
                ),
                Column(
                  children: [
                    UnitsButton(
                      color: selectedUnit == Units.custom ? kChateauGreen : kChinook.withOpacity(0.2),
                      frameColor: Colors.transparent,
                      child: Image.asset('assets/images/splash.png'),
                      onPress: (){
                        setState(() {
                          selectedUnit = Units.custom;
                        });
                      },
                    ),
                    const SizedBox(height: 3,),
                    const Text('Custom', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    Text('... Fl Oz', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black.withOpacity(0.4)),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const QuantityWidget(),
                OrderButton(
                  title: 'Add to Order',
                  onPressed: () {  }, ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
