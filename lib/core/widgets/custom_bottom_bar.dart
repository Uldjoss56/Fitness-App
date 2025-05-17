import 'package:fitness_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.onChangingScreen});
  final Function(int currentPageIndex) onChangingScreen;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  final icons = [
    Image.asset("assets/imgs/icons/dashboard.png", width: 25),
    Image.asset("assets/imgs/icons/notebook_02.png", width: 25),
    Image.asset("assets/imgs/icons/search.png", width: 25),
    Image.asset("assets/imgs/icons/sheet.png", width: 25),
    Image.asset("assets/imgs/icons/user_01.png", width: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: myOrange,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final isSelected = index == selectedIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  widget.onChangingScreen(selectedIndex);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isSelected ? myBlack : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    isSelected ? myWhite : myBlueBackground,
                    BlendMode.srcIn,
                  ),
                  child: icons[index],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
