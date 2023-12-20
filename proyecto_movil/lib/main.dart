import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AppMovil());
}

class AppMovil extends StatelessWidget {
  const AppMovil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            TopBar(),
            LogIn(),
          ],
      ),
    ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            SignUpForm(),
          ],
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            TopBar(),
            PagInicio(),
          ],
      ),
    );
  }
}

class Publi extends StatelessWidget {
  const Publi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            TopBar(),
            PagPubli(),
          ],
      ),
    );
  }
}



class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: SizedBox(
        child: IconLogo(),
        ),
        backgroundColor: Color(0xFF00241B),
        toolbarHeight: 150,
        actions: <Widget>[
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const Text(
            'Redes Sociales:',
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Netflix Sans',
            ),
            ),
          const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconEmail(),
                  IconFacebook(),
                  IconInsta(),
                ],
              ),
            ],
          ),
        ],
      );
  }
}


class IconLogo extends StatefulWidget {
  const IconLogo({super.key});

  @override
  State<IconLogo> createState() => _IconLogoState();
}

class _IconLogoState extends State<IconLogo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Image.asset(
                'no-logo.png',
                height: 130, // Tamaño de la imágen
                width: 130, // Tamaño de la imágen
                fit: BoxFit.contain,
              ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Inicio()),
            );
          },
        ),
      ],
    );
  }
}




class IconEmail extends StatefulWidget {
  const IconEmail({super.key});

  @override
  State<IconEmail> createState() => _IconEmailState();
}

class _IconEmailState extends State<IconEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.email),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

class IconFacebook extends StatefulWidget {
  const IconFacebook({super.key});

  @override
  State<IconFacebook> createState() => _IconFacebookState();
}

class _IconFacebookState extends State<IconFacebook> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.facebook),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

class IconInsta extends StatefulWidget {
  const IconInsta({super.key});

  @override
  State<IconInsta> createState() => _IconInstaState();
}

class _IconInstaState extends State<IconInsta> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: FaIcon(FontAwesomeIcons.instagram),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            // Pressing space in the field will now move to the next field.
            SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
          },
          child: FocusTraversalGroup(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!).save();
              },
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                      height: 130,
                      child: Center(
                      child: Text(
                        '¡Bienvenido!',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 35,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                      width: 300,
                      height: 20,
                      child: Center(
                      child: Text(
                        'Ingrese sus datos para acceder a su cuenta.',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Correo electrónico',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                      width: 300,
                      height: 20,
                      child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "¿Olvidó su contraseña? ",
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      TextSpan(
                        text: "Presione aquí",
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  ),
                ),
                  ),
                  SizedBox(
                      width: 150,
                      height: 120,
                      child: Center(
                    child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                   // Aquí puedes definir el estilo general del botón
                   backgroundColor: Color(0xFF00241B), 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),// Color de fondo del botón
                 ),
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Inicio()),
                  );
                 },
                 child: Text(
                   'Iniciar Sesión',
                   style: TextStyle(
                     // Aquí puedes definir el estilo específico del texto dentro del botón
                     color: Colors.white, // Color del texto
                     fontSize: 16,
                    fontFamily: 'Netflix Sans',
                   ),
                 ),
               ),
                  ),
                  ),
                  SizedBox(
                      width: 300,
                      //height: 40,
                      child: Center(
                      child: Column(
                      children: <Widget>[
                        Center(
                        child: Text(
                        "¿No posee una cuenta?",
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      Center(
                        child: Text(
                        "Regístrese aquí para crear una",
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                    ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                   // Aquí puedes definir el estilo general del botón
                   backgroundColor: Color(0xFF00241B), 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),// Color de fondo del botón
                 ),
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                 },
                 child: Text(
                   'Registrarse',
                   style: TextStyle(
                     // Aquí puedes definir el estilo específico del texto dentro del botón
                     color: Colors.white, // Color del texto
                     fontSize: 16,
                    fontFamily: 'Netflix Sans',
                   ),
                 ),
               ),
                      ],
                        ),
                      ),
                  ),
                    ],
                  ),
                ],
                  ),
            ),
            ),
        ),
      ),
    );
}}


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            // Pressing space in the field will now move to the next field.
            SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
          },
          child: FocusTraversalGroup(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!).save();
              },
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                      height: 130,
                      child: Center(
                      child: Text(
                        'Creación de Cuenta',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 35,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                      width: 300,
                      height: 20,
                      child: Center(
                      child: Text(
                        'Ingrese sus datos para crear una cuenta.',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Correo electrónico*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Contraseña*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Confirmar contraseña*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Región*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Ciudad*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Dirección*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Nombre de Usuario',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Center(
                    child: ElevatedButton(
                   
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                   // Aquí puedes definir el estilo general del botón
                   backgroundColor: Color(0xFF00241B), 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),// Color de fondo del botón
                 ),
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Inicio()),
                  );
                 },
                 child: Text(
                   'Crear Cuenta',
                   style: TextStyle(
                     // Aquí puedes definir el estilo específico del texto dentro del botón
                     color: Colors.white, // Color del texto
                     fontSize: 16,
                    fontFamily: 'Netflix Sans',
                   ),
                 ),
               ),
              ),
              ),
               SizedBox(
                    height: 60,
                    child: Center(
                    child: ElevatedButton(
                   
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                   // Aquí puedes definir el estilo general del botón
                   backgroundColor: Color(0xFF00241B), 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),// Color de fondo del botón
                 ),
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppMovil()),
                  );
                 },
                 child: Text(
                   'Volver',
                   style: TextStyle(
                     // Aquí puedes definir el estilo específico del texto dentro del botón
                     color: Colors.white, // Color del texto
                     fontSize: 16,
                    fontFamily: 'Netflix Sans',
                   ),
                 ),
               ),
                    ),
               ),
                      ],
                  ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}}




class PagInicio extends StatefulWidget {
  const PagInicio({super.key});

  @override
  State<PagInicio> createState() => _PagInicioState();
}

class _PagInicioState extends State<PagInicio> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            // Pressing space in the field will now move to the next field.
            SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
          },
          child: FocusTraversalGroup(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!).save();
              },
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                    width: 270,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Buscar',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                    child: AddPub(),
                  ),
                  ),
                  SizedBox(
                      width: 300,
                      height: 20,
                      child: Center(
                      child: Text(
                        'Realizar publicación Mascota',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                      //width: 300,
                      height: 100,
                      ),
                      SizedBox(
                      width: 370,
                      height: 20,
                      child: Text(
                        'Mascotas cerca de ti:',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),

                      Row(
                        children: [
                          Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc1.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Firulais'),
                              const Text('Perro.'),
                              const Text('Calle César Ercilla'),
                            ],
                          ),
                        ),
                        ),
                        Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc2.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Pelusa'),
                              const Text('Gato.'),
                              const Text('Calle Ánibal Pinto'),
                            ],
                          ),
                        ),
                        ),
                        Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc3.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Pedro'),
                              const Text('Perro.'),
                              const Text('Calle Gabriela Mistral'),
                            ],
                          ),
                        ),
                        ),
                        
                        
                        ],
                        ),

                        Row(
                        children: [
                          Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc4.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Max'),
                              const Text('Perro.'),
                              const Text('Calle Chacabuco'),
                            ],
                          ),
                        ),
                        ),
                        Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc5.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Peludo'),
                              const Text('Gato.'),
                              const Text('Calle Sta. María'),
                            ],
                          ),
                        ),
                        ),
                        Card(
                          clipBehavior: Clip.hardEdge,

                          child: SizedBox(
                              width: 120,
                              height: 200,

                          child: Column(
                            mainAxisAlignment : MainAxisAlignment.center,
                            children: <Widget>[Image.asset(
                                  'masc6.png',
                                  width: 100,
                                  height: 100,
                                ), // Añade la imágen
         
                              const Text('Bicho'),
                              const Text('Ratón.'),
                              const Text('Calle Los Carrera'),
                            ],
                          ),
                        ),
                        ),
                        
                        
                        ],
                        ),

                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}}


class AddPub extends StatefulWidget {
  const AddPub({super.key});

  @override
  State<AddPub> createState() => _AddPubState();
}

class _AddPubState extends State<AddPub> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Image.asset(
                'add-icon.png',
                height: 60, // Tamaño de la imágen
                width: 60, // Tamaño de la imágen
                fit: BoxFit.contain,
              ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PagPubli()),
                  );
          },
        ),
      ],
    );
  }
}



class PagPubli extends StatefulWidget {
  const PagPubli({super.key});

  @override
  State<PagPubli> createState() => _PagPubliState();
}

class _PagPubliState extends State<PagPubli> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            // Pressing space in the field will now move to the next field.
            SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
          },
          child: FocusTraversalGroup(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {
                Form.of(primaryFocus!.context!).save();
              },
              child: Wrap(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      
                      SizedBox(
                      width: 300,
                      height: 20,
                      child: Center(
                      child: Text(
                        'Ingrese los datos de la mascota',
                        style: const TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                          fontFamily: 'Netflix Sans',
                          ),
                      ),
                      ),
                      ),
                      SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Nombre',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Especie',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Raza',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Center(
                    child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Dirección*',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                         validator: (String? value) {
                          return (value == "")? 'El campo no puede quedar vacío.': null;
                  },
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                    child: TextFormField(
                        decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email, color: Color(0xFF4E878C)),
                        labelText: 'Información Complementaria',
                        labelStyle: TextStyle(color: Color(0xFF4E878C)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4E878C)),
                        ),
                        //focusedBorder: OutlineInputBorder(
                          //borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        //),
                      ),
                        onSaved: (String? value) {
                          debugPrint(
                              'Value for field  saved as "$value"');
                         },
                    ),
                  ),
                  ),
                  
                  SizedBox(
                    height: 60,
                    child: Center(
                    child: ElevatedButton(
                   
                   style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                   // Aquí puedes definir el estilo general del botón
                   backgroundColor: Color(0xFF00241B), 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),// Color de fondo del botón
                 ),
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Inicio()),
                  );
                 },
                 child: Text(
                   'Publicar',
                   style: TextStyle(
                     // Aquí puedes definir el estilo específico del texto dentro del botón
                     color: Colors.white, // Color del texto
                     fontSize: 16,
                    fontFamily: 'Netflix Sans',
                   ),
                 ),
               ),
              ),
              ),
               
                      ],
                  ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}}




