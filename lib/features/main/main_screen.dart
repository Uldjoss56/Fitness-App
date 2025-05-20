import 'package:fitness_app/core/constants/colors.dart';
import 'package:fitness_app/core/widgets/custom_bottom_bar.dart';
import 'package:fitness_app/core/widgets/custom_circle_progress_bar.dart';
import 'package:fitness_app/features/main/dashboard/data/dashboard_screen_data.dart';
import 'package:fitness_app/features/main/profile/data/profile_sreen_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'dashboard/dashboard_screen.dart';
part 'profile/profile_sreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pagesScreen = [
      DashboardScreen(),
      Text("NoteBook"),
      Text("Search"),
      Text("File"),
      ProfileSreen(),
    ];
    final _currentPageContent = pagesScreen[_currentPageIndex];
    return KeyboardVisibilityBuilder(
      builder: (p0, isKeyboardVisible) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 60),
                    Expanded(child: _currentPageContent),
                  ],
                ),
                if (!isKeyboardVisible)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomBottomNavBar(
                      onChangingScreen: (currentPageIndex) {
                        setState(() {
                          _currentPageIndex = currentPageIndex;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
