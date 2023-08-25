import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:multi_purpose_app/Quick%20Screens/QuickScreen2.dart';
import 'package:multi_purpose_app/Screen/Login/LoginScreen.dart';

import 'ButtomSheet.dart';
import 'ItemsScreen/AddItem.dart';
import 'ItemsScreen/CategoryScreen.dart';
import 'ItemsScreen/IngredientScreen.dart';
import 'ItemsScreen/MofifierScreen.dart';
import 'Quick Screens/QuickScreen1.dart';
import 'Screen/AddCustomer.dart';
import 'Screen/AttendanceScreen.dart';
import 'Screen/CustomerScreen.dart';
import 'Screen/HomeScreens/DrawerComponenets/CheckoutScreen.dart';
import 'Screen/HomeScreens/DrawerComponenets/DashboardScreen.dart';
import 'Screen/HomeScreens/DrawerScreens.dart';
import 'Screen/HomeScreens/paymentSetupScreen.dart';
import 'Screen/InventoryScreen.dart';
import 'Screen/Login/RegisterScreen.dart';
import 'Screen/Login/VerifyScreen.dart';
import 'Screen/ManagePayrollScreen.dart';
import 'Screen/QuickScreen.dart';
import 'Screen/Splashscreen.dart';
import 'Screen/on bording 1/OnBordingScreen1.dart';
import 'buttom screen/Item.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/OnBording': (context) => const OnBordingScreen(),
        '/Register': (context) => const RegisterScreen(),
        '/Login': (context) => const LoginScreen(),
        '/Verify': (context) => const VerifyScreen(),
        '/QuickScreen': (context) => const QuickScreen(),
        '/QuickScreen2': (context) => const QuickScreen2(),
        '/DrawerScreen': (context) => const DrawerScreen(),
        '/CheckoutScreen': (context) => const CheckoutScreen(),
        '/DashboardScreen': (context) => const DashboardScreen(),
        '/SetUpScreen': (context) => const SetUpScreen(),
        '/BottomScreen': (context) => const BottomNavigation(),
        '/QuickAddScreen': (context) => const QuickAddScreen(),
        '/InventoryScreen': (context) => const InventoryScreen(),
        '/AddItemScreen': (context) => const AddItemScreen(),
        '/CategoryScreen': (context) => const CategoryScreen(),
        '/ModifierScreen': (context) => const ModifierScreen(),
        '/IngredientScreen': (context) => const IngredientScreen(),
        '/ItemScreen': (context) => const ItemScreen(),
        '/AttendanceScreen': (context) => const AttendanceScreen(),
        '/CustomerScreen': (context) => const CustomerScreen(),
        '/AddCustomer': (context) => const AddCustomer(),
        '/ManagePayroll': (context) => const ManagePayroll(),
      },
    ),
  );
}
