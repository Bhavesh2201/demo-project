import 'package:flutter/material.dart';
// import 'package:recepie_screen/ingrident_tabbar_screen.dart';
// import 'package:recepie_screen/recipe_tabbar_screen.dart';

class RecipeDetailScreen extends StatefulWidget {
  const RecipeDetailScreen({super.key});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final double _tabBarPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SafeArea(
                child: Image.network(
                  'https://oaidalleapiprodscus.blob.core.windows.net/private/org-ZTeRIgwolDii4gV9UqcJSP0r/user-oDJUXqoyLFx4IxYl4kEKK3Ax/img-P7WbBpkDzOVgKnCc2fgrFYVt.png?st=2023-04-07T07%3A45%3A41Z&se=2023-04-07T09%3A45%3A41Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T20%3A44%3A07Z&ske=2023-04-07T20%3A44%3A07Z&sks=b&skv=2021-08-06&sig=dwkRhqa%2BWXlPZR/lqR33n8J1WxtLKtd4YVOLiST1Kww%3D',
                  fit: BoxFit.cover,
                  height: 256,
                  width: double.infinity,
                ),
              ),
              Positioned(
                right: 20,
                top: 59,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              Positioned(
                left: 5,
                top: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 235.0,
                child: Container(
                    height: 180.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFFFFC134),
                          Color(0xFFAA2525),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: TextButton.icon(
                                label: const Text(
                                  'Watch recipe',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_circle,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Positioned(
                top: 320.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.66,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 14, bottom: 10),
                          child: Text(
                            'Italian Pasta',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey[500],
                            size: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              '20 min',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 48.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: _tabBarPosition *
                                  (MediaQuery.of(context).size.width / 2),
                              bottom: 0,
                              width: MediaQuery.of(context).size.width / 2,
                              height: 2.0,
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                            TabBar(
                              controller: _tabController,
                              tabs: const [
                                Tab(text: 'Recipe'),
                                Tab(text: 'Ingredient'),
                              ],
                              labelColor: Colors.orange,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Colors.orange,
                              indicatorSize: TabBarIndicatorSize.tab,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Center(child: RecipeTabbar()),
                            Center(child: IngredientTabbar()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
