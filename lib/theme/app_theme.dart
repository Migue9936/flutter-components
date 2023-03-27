import 'package:fl_components/screens/screens.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  //Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
      // Primary Color
     primaryColor: primary,
      // App Bar Theme
    appBarTheme:
          const AppBarTheme(color: primary, elevation: 10, centerTitle: true),
      //Text Button Theme
    textButtonTheme: TextButtonThemeData(style:  TextButton.styleFrom(foregroundColor:  primary)),
      
    //Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary),

    //Elevated Button

    elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary,shape: const StadiumBorder())
      ),
    
    //Input Decoration
    inputDecorationTheme:  const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color:  primary),
      
      enabledBorder: OutlineInputBorder( 
        borderSide:  BorderSide( color:primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10) )),
      
      focusedBorder: OutlineInputBorder( 
        borderSide:  BorderSide( color:primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10) )),

        border: OutlineInputBorder( 
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10) )),
    )

    );
      
  // Dark Theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Primary Color
      primaryColor: primary,
     
     
     textButtonTheme: TextButtonThemeData(style:  TextButton.styleFrom(foregroundColor:  Colors.blueAccent,)),

      // App Bar Theme
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 10, centerTitle: true),
      scaffoldBackgroundColor: Colors.black

      
      

      
    );
}
