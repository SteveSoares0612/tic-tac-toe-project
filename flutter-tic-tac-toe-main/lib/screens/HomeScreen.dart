import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/screens/game.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool musicOn = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: const Color.fromARGB(208, 220, 26, 32),
            color: Colors.white,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 95,
                    backgroundColor: const Color.fromRGBO(22, 215, 191, 1),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: const Color.fromRGBO(255, 147, 138, 1),
                      child: CircleAvatar(
                        radius: 85,
                        backgroundColor: Colors.white,
                        // backgroundImage: AssetImage(
                        //   "assets/images/TicTacLogo.png",
                        // ),
                        child: Image.asset(
                          "assets/images/TicTacLogo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const GameScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        // backgroundColor: const Color.fromRGBO(220, 26, 34, 1),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: const BorderSide(
                          width: 4,
                          color: Color.fromRGBO(255, 147, 138, 1),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.play,
                            color: Color.fromRGBO(22, 215, 191, 1),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 215, 191, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
