part of '../main_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<DailyActive> _dailyActives =
      weekData.map((e) {
        return DailyActive.fromJson(e);
      }).toList();

  @override
  Widget build(BuildContext context) {
    final int _maxTotal = _dailyActives
        .map((e) => e.total)
        .reduce((a, b) => a > b ? a : b);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          "assets/imgs/photos/user_profile.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Djossou Ulrich",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: myWhite, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(myWhite, BlendMode.srcIn),
                    child: Image.asset(
                      "assets/imgs/icons/chat_01.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(myWhite, BlendMode.srcIn),
                    child: Image.asset(
                      "assets/imgs/icons/bell_01.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's activity",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    TextButton(onPressed: () {}, child: Text("See details")),
                  ],
                ),
                SizedBox(height: 20),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Card(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Base Goal",
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.headlineMedium,
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 120,
                                      ),
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        backgroundColor: myOrange55,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "5.6 ",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.headlineLarge,
                                      ),
                                      TextSpan(
                                        text: "km",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                CircularProgressBar(percentage: 0.7),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Card(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Calorie",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.headlineMedium,
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 120,
                                        ),
                                        child: LinearProgressIndicator(
                                          value: 0.25,
                                          color: myTurquois,
                                          backgroundColor: myTurquois55,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "324 ",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.headlineLarge,
                                            ),
                                            TextSpan(
                                              text: "kcal",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Weight",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.headlineMedium,
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 120,
                                        ),
                                        child: LinearProgressIndicator(
                                          value: 0.5,
                                          color: myPurple,
                                          backgroundColor: myPurple55,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "1,660 ",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.headlineLarge,
                                            ),
                                            TextSpan(
                                              text: "kcal",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: myWhite, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Most active",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "Thursday",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(_dailyActives.length, (
                            index,
                          ) {
                            final dailyActiveData = _dailyActives[index];
                            final barHeight =
                                40 * (dailyActiveData.total / _maxTotal);
                            return Column(
                              children: [
                                Container(
                                  height: barHeight,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color:
                                        barHeight == 40 ? myOrange : myWhiteAA,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(dailyActiveData.day),
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Steps",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.titleLarge,
                                        ),
                                        ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            myBlue,
                                            BlendMode.srcIn,
                                          ),
                                          child: Image.asset(
                                            "assets/imgs/icons/footprint.png",
                                            width: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: List.generate(
                                        _dailyActives.length,
                                        (index) {
                                          final dailyActiveData =
                                              _dailyActives[index];
                                          final barHeight =
                                              100 *
                                              (dailyActiveData.total /
                                                  _maxTotal);
                                          return Container(
                                            height: barHeight,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              color: myWhiteAA,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "1,660 ",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.headlineMedium,
                                            ),
                                            TextSpan(
                                              text: "total",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Exercice",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.titleLarge,
                                        ),
                                        Image.asset(
                                          "assets/imgs/icons/fire.png",
                                          width: 25,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: List.generate(
                                        _dailyActives.length,
                                        (index) {
                                          final dailyActiveData =
                                              _dailyActives[index];
                                          final barHeight =
                                              100 *
                                              (dailyActiveData.total /
                                                  _maxTotal);
                                          return Container(
                                            height: barHeight,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              color: myWhiteAA,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "1,660 ",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.headlineMedium,
                                            ),
                                            TextSpan(
                                              text: "total",
                                              style:
                                                  Theme.of(
                                                    context,
                                                  ).textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Weight",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                IconButton(
                                  style: IconButton.styleFrom(
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: myGreen,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  icon: Icon(Icons.add, color: myGreen),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "1,660 ",
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.headlineMedium,
                                    ),
                                    TextSpan(
                                      text: "total",
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
