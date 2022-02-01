import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
//import 'package:pict_icei/models/committee_member.dart';
import 'commiteeLists.dart';

class Committee extends StatelessWidget {
  const Committee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text(
          //   "Committee",
          //   style: TextStyle(
          //     fontFamily: 'Raleway',
          //   ),
          // ),
          // centerTitle: true,
          // backgroundColor: Colors.black54,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: AssetImage('assets/pict_3.jpg'),
              fit: BoxFit.cover),
        ),
          margin: EdgeInsets.fromLTRB(10,0,10,0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: ListView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,20),
                  child: Center(
                    child: Text(
                      'Committee',
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "International Advisory Committee",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  height: 20.0,
                  thickness: 3.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.005,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: internationalAdvisoryCommittee[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.005,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                internationalAdvisoryCommittee[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ),
                            Text(
                              internationalAdvisoryCommittee[index].designation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: internationalAdvisoryCommittee.length,
                ),
          
                /************************* 
                END OF INTERNATIONAL ADVISORY COMMITTEE
                ***************************/
          
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "National Advisory Committee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.005,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  //fit: BoxFit.cover,
                                  imageUrl: nationalAdvisoryCommittee[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.005,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                nationalAdvisoryCommittee[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ),
                            Text(
                              nationalAdvisoryCommittee[index].designation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: nationalAdvisoryCommittee.length,
                ),
                /********************
                 * END OF NATIONAL ADVISORY COMMITTEE
                 *******************/
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Organizing committee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Patron',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  organisingCommitee[index].title,
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: organisingCommitee[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.005,
                            ),
                            Text(
                              organisingCommitee[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                organisingCommitee[index].designation,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: organisingCommitee.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Program Advisory committee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: programAdvisoryCommitee[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              programAdvisoryCommitee[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              programAdvisoryCommitee[index].designation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: programAdvisoryCommitee.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Publicity chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: publicityChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.005,
                            ),
                            Text(
                              publicityChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                publicityChairs[index].designation,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: publicityChairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Sponsor Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: sponsorChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.005,
                            ),
                            Text(
                              sponsorChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: sponsorChairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Web Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl: webChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              webChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: webChairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Special Session Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl:specialSessionChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              specialSessionChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount:specialSessionChairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Finance Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl:financeChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              financeChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount:financeChairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Registration Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl:registrationChairs[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              registrationChairs[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount:registrationChairs.length,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Local Organizing Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              localOrganisingchairs[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount:localOrganisingchairs.length,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Technical Program Committee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        // decorationStyle: TextDecorationStyle.solid,
                        // decorationColor: Colors.lightBlue,
                        // decorationThickness: 3,
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Conveners and TPC Chairs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: CircleAvatar(
                                radius: 100,
                                child: CachedNetworkImage(
                                  imageUrl:technicalProgramCommitee[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              technicalProgramCommitee[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              technicalProgramCommitee[index].designation,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount:technicalProgramCommitee.length,
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "TPC Members",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.white,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  tpcMembers[index].name,
                                  style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Raleway',
                              ),
                              textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  tpcMembers[index].designation,
                                  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Raleway',
                              ),
                              textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount:tpcMembers.length,
                ),
              ],
            ),
          ),
        )
        );
  }
}
