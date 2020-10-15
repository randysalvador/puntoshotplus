import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puntoshots/Stores/controller/store_controller.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiendas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            productsContainer(),
          ],
        ),
      ),
    );
  }

  Widget productsContainer() {
    return Container(
      width: double.infinity,
      //height: 700, //***Cambiar,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(30.0),
          topRight: const Radius.circular(30.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26, blurRadius: 15.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            productGridView(),
          ],
        ),
      ),
    );
  }

  Widget productGridView() {
    return GetBuilder<StoreController>(
      init: StoreController(),
      builder: (_) => GridView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5.0, childAspectRatio: 0.8),
        children: [
          Text(
              "${_.store.id.toString()} >> ${_.store.name} >> ${_.store.image} "),

          ///Solo mandas a llamar los parametros de este.
//          imageCard(title: _.store.Store.data, description: ,price: '0',image: )
        ],
      ),
    );
  }

  Widget imageCard({
    String title,
    String description,
    String image,
    String price,
  }) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage("assets/images/$image"),
              fit: BoxFit.fitWidth,
              alignment: AlignmentDirectional.topStart),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          //style: gilroyFontBoldCard,
                        ),
                        //Image.asset('assets/icons/icon.png')
                      ],
                    ),
                    Text(
                      description,
//                      "Chop together anchovy fillets, garlic, and pinch of salt lorem lorem lorem lorem lorem lorem lorem",
                      overflow: TextOverflow.fade,
                      //style: gilroyFontLightCardText,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
