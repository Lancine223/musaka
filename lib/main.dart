import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ika_musaka/provider/UtilisateurProvider.dart';
import 'package:ika_musaka/screens/ConnexionScreen.dart';
<<<<<<< HEAD
import 'package:ika_musaka/screens/ProfilUtilisateur.dart';
import 'package:provider/provider.dart';
import 'package:ika_musaka/screens/bottomNavigatorBar.dart';
import 'package:ika_musaka/services/BottomNavigationService.dart';
import 'package:ika_musaka/services/budgetService.dart';

=======
import 'package:ika_musaka/screens/Pages/Statistiques.dart';
    
>>>>>>> 2db2b62ac87084225b7948bc08045295f7e9aea7
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(47, 144, 98, 1),
  ));
  runApp(
     MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context) => BottomNavigationService()),
         ChangeNotifierProvider(create: (context) => UtilisateurProvider()),
         ChangeNotifierProvider(create: (context) => BudgetService())
       ],
       child:  const MyApp()),
     );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        routes: {
          '/profilUtilisateur': (context) => ProfilUtilisateur(),
          '/BottomNavigationPage':(context) => const BottomNavigationPage(),
          // Autres routes...
        },
      // title: "LogIn Screen",
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      // home: BottomNavigationPage(),
      home:const Connexion(),
    );//Place SignUp function here to Observe SignUp Screen.
  }
  //adama
=======
      home: Statistiques());//Place SignUp function here to Observe SignUp Screen.
  }
  //amma
>>>>>>> 2db2b62ac87084225b7948bc08045295f7e9aea7
}


