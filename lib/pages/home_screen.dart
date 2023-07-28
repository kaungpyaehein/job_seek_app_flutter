import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Sofia Sofia",
                        style: GoogleFonts.openSans(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/beautiful-woman-portrait_144627-27923.jpg?w=1060&t=st=1690480346~exp=1690480946~hmac=201590d8abe3b0a94669c0147f7a92dd0e2d848d99d971cae865982b1920ca4d"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(9, 36, 78, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Text(
                        "Find and land your next job",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Daily job postings at your fingertips - never miss out your next career move.",
                        style: GoogleFonts.openSans(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: const Icon(
                                Icons.search), // Icon at the start (prefix)
                            suffixIcon: const Icon(Icons
                                .sort_outlined), // Icon at the end (suffix)
                            hintText: 'Search by job title or keyword',
                            hintStyle: GoogleFonts.openSans(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Customize the radius here
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Recent Activity",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  style:  ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blueAccent),
                                  ),
                                    onPressed: () {},
                                    icon: const Icon(CupertinoIcons.mail)),
                                Text("3 new messages",
                                    style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Text("Check your inbox",
                                    style: GoogleFonts.openSans()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 10, ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      IconButton(
                                          style:  ButtonStyle(
                                            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.redAccent.shade200),
                                          ),
                                          onPressed: () {},
                                          icon: const Icon(CupertinoIcons.mail)),
                                      Text("3 new messages",
                                          style: GoogleFonts.openSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text("Check your inbox",
                                          style: GoogleFonts.openSans()),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      IconButton(
                                          style:  ButtonStyle(
                                            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.orange.shade200),
                                          ),
                                          onPressed: () {},
                                          icon: const Icon(CupertinoIcons.mail)),
                                      Text("3 new messages",
                                          style: GoogleFonts.openSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text("Check your inbox",
                                          style: GoogleFonts.openSans()),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
