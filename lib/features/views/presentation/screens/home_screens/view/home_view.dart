import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/carts.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/home_page.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/payment_way_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/personal_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/shopping_list.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/bottom_nav_bar.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/bottom_nav_bar/home_page_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  List<Widget> pages = [
    HomePage(),
    ShoppingList(),
    CartPageView(),
    PayMentWayView(),
    PersonalView(),


  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: BlocBuilder<HomePageBloc, BottomNavBarState>(
        builder: (context, state) {
          return Scaffold(

            bottomNavigationBar: BottomNavBarItems(),
            body: pages[state.index],


          );
        },
      ),
    );
  }
}
