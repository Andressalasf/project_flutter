import 'package:demo/config/router/app_router.dart';
import 'package:demo/presentation/screens/screen.dart';
import 'package:flutter/material.dart';

class Routers{

static final List<AppRouter> pages = [
  AppRouter(patch: '/',
   title: 'Home',
    description: "Pantalla inicial",
    icon: Icons.home,
    context: (context) => const HomeScreen()),
    AppRouter(patch: 'button',
   title: 'Button',
    description: "Boton de carga",
    icon: Icons.radio_button_on_sharp,
    context:(context) => const ButtonScreen()),
    AppRouter(patch: 'card',
   title: 'Card',
    description: "Card",
    icon: Icons.card_membership_sharp,
    context:  (context) => const CardScreen()),
];


  static route() =>{ for (var page in pages) page.patch : page.context};
      
}