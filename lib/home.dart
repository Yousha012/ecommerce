import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:Padding(padding: EdgeInsets.all(20.0), 
      child: Column(
        children: [
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(            
               children: [
                getProductCard1(),
                getProductCard1(),
                getProductCard1(),
                getProductCard1(),
                getProductCard1(),
                // getProductCard2(),
                // getProductCard3(),
                // getProductCard4(),
                // getProductCard5(),
              ],
            ),
          ),
          
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "New Arrivals",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getProductCard6(),
                getProductCard7(),
                // getProductCard8(),
                // getProductCard9(),
                // getProductCard10(),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              // color: Colors.red,
              child: Center(
                child: Image.network(
                  "https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            title: Text("List Item 2"),
            subtitle: Text("Subtitle for Item 2"),
            trailing: Text("250"),
            onTap: () {
              print("Tapped on List Item 2");
            },
          ),
        ],
      ),
    )
    );
  }
}





// 
// 
// 
// 
// 
// 
// 

getProductCard1() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://static-01.daraz.com.bd/p/62891f6b2cb7c905f1de378a202c5285.jpg_750x750.jpg_.webp",
            width: double.infinity,
            height: 150,
          ),
          // Text(
          //   "Banana",
          //   style: TextStyle(fontSize: 14),
          // ),
          // Text(
          //   "Pkr: 220",
          //   style: TextStyle(fontSize: 16),
          // ),
        ],
      ),
    ),
  );
}

getProductCard6() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://5.imimg.com/data5/PX/HH/RY/GLADMIN-50548504/epic-react-flyknit-2-running-shoe-shrznm-500x500-500x500-500x500-250x250.jpg",
            width: double.infinity,
            height: 100,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

getProductCard7() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a804053a-0ee2-47fa-a082-0494deb6f00c/precision-6-basketball-shoes-h5907m.png",
            width: double.infinity,
            height: 100,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}



getProductCard8() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://www.klarna.com/sac/product/232x232/1871480907/Nike-Epic-React-Flyknit-2-W-Black-Sapphire-Lime-Blast.jpg?ph=true",
            width: double.infinity,
            height: 100,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

getProductCard9() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://rukminim2.flixcart.com/image/450/500/xif0q/shoe/7/2/m/6-tm-12-6-trm-white-original-imagjqyzz8z9jrgf.jpeg?q=90&crop=false",
            width: double.infinity,
            height: 100,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}



getProductCard10() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 150,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://static-01.daraz.com.bd/p/62891f6b2cb7c905f1de378a202c5285.jpg_750x750.jpg_.webp",
            width: double.infinity,
            height: 100,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
  }








 
