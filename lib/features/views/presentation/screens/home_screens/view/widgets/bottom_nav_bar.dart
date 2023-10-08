import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/bottom_nav_bar/home_page_bloc.dart';

class  BottomNavBarItems extends StatelessWidget {
   BottomNavBarItems ({Key? key}) : super(key: key);
Color? selectedItemColor;
   Color? unselectedItemColor;

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomePageBloc, BottomNavBarState>(
  builder: (context, state) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      onTap: (index){
BlocProvider.of<HomePageBloc>(context).add(BottomNavEvent(index));
      },
      selectedItemColor: selectedItemColor=ColorManager.primary,
      unselectedItemColor:unselectedItemColor=ColorManager.grey ,



      selectedFontSize :25.0,
     unselectedFontSize : 12.0,


      showSelectedLabels:false,
     showUnselectedLabels:false,
currentIndex: state.index,
      items: [
BottomNavigationBarItem(icon:Image.asset("assets/images/home.png",color: ColorManager.grey,),label: "Home",
  activeIcon: Image.asset("assets/images/home.png",color: ColorManager.primary,)
   ),
        BottomNavigationBarItem(icon:Icon(Icons.list,color: ColorManager.grey,),label: "categories",
            activeIcon: Image.asset("assets/images/category.png",color: ColorManager.primary,)

        ),
    //Image.asset("assets/images/category.png"
        BottomNavigationBarItem(icon:Image.asset("assets/images/shop.png",color: ColorManager.grey,),
            activeIcon: Image.asset("assets/images/shop.png",color: ColorManager.primary,),
            label: "searching_categories" , ),
        BottomNavigationBarItem(icon:Icon(Icons.paypal_outlined,color: ColorManager.grey,),label: "shopping",
          activeIcon: Icon(Icons.paypal_outlined,color: ColorManager.primary,)


        ),
        BottomNavigationBarItem(icon:Image.asset("assets/images/user.png",color: ColorManager.grey,),
          activeIcon: Image.asset("assets/images/user.png",color: ColorManager.primary,),
          label: "personal_info",
       ),


      ],);
  },

);
  }
}
