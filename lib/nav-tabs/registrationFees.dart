import 'package:flutter/material.dart';

class RegistrationFees extends StatelessWidget {
  const RegistrationFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration Fees",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "Conferences and Workshop",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(child: Image.asset('assets/sponsors/reg_fees.png')),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "Important Author Information",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "ICEI Conference is seeking original unpublished technical papers not currently under review by any other journal, magazine, or conference.All accepted and presented papers will be published in Scopus indexed Springer LNNS, Springer LNCS Transaction in Computer Science, Scopus indexed journal after another round of review.",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "The participation certificate will be given to only registered authors and presentation certificates will be given to the author who has registered and presented the paper.To ensure publication of paper at least one author should register and present paper in the conference.",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
