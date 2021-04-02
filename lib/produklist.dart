import 'package:flutter/material.dart';

import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Product List")),
      //body untuk content
      //menampilkan list
      body: ListView(
        shrinkWrap: true,
        //padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10),
        //anggota dari list berupa widget children
        children: <Widget>[
          //Gesture detector untuk menangani gesture pengguna
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(              
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder:  (
                  BuildContext context) => DetailProduk(
                  name: "Semen Tiga Roda",
                  description : "Ini merupakan semen yang berkualitas",
                  price: 50000,
                  image: "semen.jpg",
                  star: 4,
                ), 
              ));
            },
            //memanggil class production
            child: ProductBox(
              //berisa permeter
              name: "Semen Tiga Roda",
              description: "ini merupakan semen berkualitas",
              price: 50000,
              image: "semen.jpg",
              star: 4),
          ),    
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(              
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder:  (
                  BuildContext context) => DetailProduk(
                  name: "Pasir Laut 1kg",
                  description : "Ini merupakan pasir laut yang berkualitas",
                  price: 5000,
                  image: "pasirlaut.jpg",
                  star: 4,
                ), 
              ));
            },
            //memanggil class production
            child: ProductBox(
              //berisa permeter
              name: "Pasir Laut 1kg",
              description: "ini merupakan pasir laut berkualitas",
              price: 5000,
              image: "pasirlaut.jpg",
              star: 4),
          ),    
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(              
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder:  (
                  BuildContext context) => DetailProduk(
                  name: "Cat No Drop",
                  description : "Cat pelapis anti bocor",
                  price: 45000,
                  image: "cat.jpg",
                  star: 4,
                ), 
              ));
            },
            //memanggil class production
            child: ProductBox(
              //berisa permeter
              name: "Cat No Drop",
              description: "Cat pelapis anti bocor",
              price: 50000,
              image: "cat.jpg",
              star: 4),
          ),    

          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder:  (BuildContext context) => DetailProduk(
                  name: "Kuas cat",
                  description : "Ini Kuas cat berbahan halus",
                  price: 7000,
                  image: "kuascat.jpg",
                  star: 3,
                ), 
              ));
            },
            //memanggil class production
            child: ProductBox(
              //berisa permeter
              name: "Kuas cat",
              description: "ini Kuas cat berbahan halus",
              price: 7000,
              image: "kuascat.jpg",
              star: 3),
          ),    

        ],
      ),
      
    );
  }
}

class ProductBox extends StatelessWidget{
//untuk menampung parameter tersebut
ProductBox(
  {Key key, this.name, this.description, this.price, this.image, this.star})
: super(key: key);
//Variabel yang digunakan untuk menampung parameter tersebut
final String name;
final String description;
final int price;
final String image;
final int star;
final children = <Widget>[];

Widget build(BuildContext context) {
//membuat star secara dinamis sesuai jumlah star yang dikirimkan dari list produk
for (var i = 0; i < star; i++) {
//memasukkan icon star ke variabel childrenstar
children.add(new Icon(
  Icons.star,
   size: 15,
  color: Colors.yellow,
));
}
return Container(
  padding: EdgeInsets.all(10),
  child: Card(
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: <Widget>[
         Image.asset(
           "assets/appimages/" + image,
           width: 150,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                      )),
                  Text(this.description),
                  Text(
                    "Price: " + this.price.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget> [
                      Row(
                        children: children,
                    )
                 ],
                )
              ],
              )))
       ])));

}
}