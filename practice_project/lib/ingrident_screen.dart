import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IngridentScreen extends StatefulWidget {
  const IngridentScreen({super.key});

  @override
  State<IngridentScreen> createState() => _IngridentScreenState();
}

class _IngridentScreenState extends State<IngridentScreen> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15',
    'Item 16',
    'Item 17',
    'Item 18',
    'Item 19',
    'Item 20',
    'Item 21',
    'Item 22',
    'Item 23',
    'Item 24'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          centerTitle: true,
          elevation: 2,
          leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.orangeAccent,
                  size: 40,
                ),
              )),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "My Food Haven",
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 28),
                child: Text(
                  'Ingridents',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 1,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.82,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 10, right: 10),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/food2.jpeg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(items[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.grey[400],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.redAccent[700],
                              ),
                              onPressed: () {
                                setState(() {
                                  items.removeAt(index);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Add More'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.receipt_rounded),
                        label: const Text('Recipe'),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
