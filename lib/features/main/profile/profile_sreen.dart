part of '../main_screen.dart';

class ProfileSreen extends StatefulWidget {
  const ProfileSreen({super.key});

  @override
  State<ProfileSreen> createState() => _ProfileSreenState();
}

class _ProfileSreenState extends State<ProfileSreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 10,
              child: Text(
                "Profile",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                style: IconButton.styleFrom(
                  iconSize: 20,
                  minimumSize: Size.fromHeight(35),
                  maximumSize: Size.fromHeight(35),
                  shape: CircleBorder(
                    side: BorderSide(color: myWhite55, width: 2),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.settings_outlined),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: myWhite),
                      shape: BoxShape.circle,
                    ),
                    child: Hero(
                      tag: "user_photo",
                      child: CircleAvatar(
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
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: myOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Skeletonizer(
                  enabled: true,
                  child: Text(
                    "Djossou Ulrich",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 5),
                Skeletonizer(
                  enabled: false,
                  child: Text(
                    "uldjoss56@gmail.com",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: myOrange,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "21 h 43 m",
                                    style:
                                        Theme.of(
                                          context,
                                        ).textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Time Spending",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: myGreen,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "56.95 %",
                                    style:
                                        Theme.of(
                                          context,
                                        ).textTheme.headlineSmall,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Weight lost",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "General",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: List.generate(settingData.length, (index) {
                  final data = settingData[index];
                  return Container(
                    padding: EdgeInsets.only(top: index == 0 ? 0 : 10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: myWhiteAA)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        data["leading"] as Widget,
                                        SizedBox(width: 20),
                                        Text(
                                          data["label"] as String,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(data["note"] as String),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
