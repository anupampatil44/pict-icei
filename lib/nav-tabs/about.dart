import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(top: 20,bottom: 20,left:15,right:15),
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: <Widget>[Center(
            child: Text(
              "About ICEI-2022",
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.lightBlue,
                decorationThickness: 3,
                fontFamily: 'Raleway',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "Title of Conference:\n\“International conference on Emerging trends and Innovations in ICT (ICEI)\”",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: InteractiveViewer(
                  child: new Image.asset('./assets/about_pict.jpg'),
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        child: Center(
          child: Text(
              "The conference will provide an online platform to the participants with opportunities to present and explore emerging trends in the interdisciplinary areas along with practical challenges encountered and possible solutions of high impact adopted.",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
          ),
        ),
      ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "The conference will provide an online platform promoting and inculcating research culture to bring forth significant research and innovations to share and exchange knowledge across all aspects of Computing, Communication engineering and Information Science and technology for sustainable development by leading academicians, industry experts, researchers, and research scholars.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
          child: Center(
            child: Text(
              "The conference will provide online workshops within scope facilitating interaction with leading experts to share their insights, provide guidance and address participant's questions and concerns.",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
            Center(
              child: Text(
                "About PICT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.lightBlue,
                  decorationThickness: 3,
                  fontFamily: 'Raleway',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  const url = 'https://pict.edu/';
                  launchURL(url);
                },
                child: Text('Visit PICT Website'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  padding: const EdgeInsets.all(10),
                ),
            )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "Pune Institute of Computer Technology (PICT), an elite academic Institute located in Pune (India), which is rightly known as “The Oxford of the East”, playing an inspiring role in the education sector since its establishment in 1983.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: InteractiveViewer(
                  child: new Image.asset('./assets/about_pict2.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "PICT believes in value-based quality education in the field of Information and Communication Technology (ICT) and we are constantly endeavouring to achieve higher levels of technical excellence by offering under-graduate (UG) programmes in Computer Engineering (CE), Electronics & Telecommunication Engineering (E&TC), and Information Technology (IT); and post-graduate (PG) programmes in Computer Engineering, Data Science, Electronics & Communication (Wireless Communication Technology), and Information Technology. It is also Savitribai Phule Pune University (SPPU) recognized Research Center in Computer Engineering and Electronics & Telecommunication Engineering.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "Institute is UGC Approved, ISO 9001:2015 Certified, and is NAAC Accredited (3rd Cycle). All UG programmes of PICT are NBA Accredited (CE and E&TC – 6 times, IT – 4 times). PICT is Ranked 8th among private Engineering Institutions in India, 1st among all private Engineering Institutions in Maharashtra, and 4th among all Engineering Institutions including IITs, NITs, and Govt. Colleges in Maharashtra (as per the EDU-RAND ranking- 2015). As per the NIRF 2020 Ranking, PICT is in rank band of 201 to 250.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "To stay ahead in the competition, PICT students are always involved in creating and sustaining cutting-edge technology with the help of specialized laboratories/centers with industry support; like Virtual FinTech Lab, SAS Language Lab, e-yantra IIT Bombay, National Instruments LabVIEW, AICTE funded Center for Wireless Communication, Alumni funded 3D Printer Laboratory, etc.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "PICT has a well-established Research & Development (R&D) center. The faculty members have undertaken research projects funded by Department of Science & Technology (DST), All India Council for Technical Education (AICTE), Defence Research and Development Organisation (DRDO), Rajiv Gandhi Science and Technology Commission (RGSTC), Govt. of Maharashtra, and SPPU. There are various research labs established with all equipped facilities to carryout research in the latest emerging trends.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "In an endeavour to generate opportunities for the students to realize their dream of starting up their own business/enterprise, and to empower the young talented students to transform their research/findings/innovative ideas into a successful product or service that creates values, PICT has established Entrepreneurship Development Cell (EDC) and Start-up & Innovation Cell (SIC). So, this way our objective of creating more job provider than job seekers is mate, in line with Make in India, AatmaNirbhar Bharat Abhiyan, etc.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Center(
                child: Text(
                  "A serene and charming enclave spread over 5 acres, PICT is home to 348 hostelers, 3406-day scholars, and 220+ staff. A 24x7 medical facility and security is available in the campus. A canteen is functioning to cater to the needs of students, staff, parents, and visitors. Rejuvenating facilities like Basketball, Volleyball, Gymnasium, Table Tennis, Chess, Carom, etc. are available within the campus. PICT is not only recognized for excellence in academics but also in the sports at intercollegiate, university, and zonal level. We encourage sports as a tool to engage the energies of the youth and provide a vital avenue for their self-actualization and the expression of their capabilities.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]
    )
      )
    );
  }
}
