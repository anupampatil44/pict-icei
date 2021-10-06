import 'package:flutter/material.dart';
import 'package:pict_icei/models/committee_member.dart';

class Committee extends StatelessWidget {
  const Committee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Committee",
            style: TextStyle(
              fontFamily: 'Raleway',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          children: [
            Center(
              child: Text(
                "International Advisory Committee",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.lightBlue,
                  decorationThickness: 3,
                  fontFamily: 'Raleway',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                            child: Image.network(
                              internationalAdvisoryCommittee[index].imageUrl,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          internationalAdvisoryCommittee[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          internationalAdvisoryCommittee[index].designation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: internationalAdvisoryCommittee.length,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "National Advisory Committee",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.lightBlue,
                  decorationThickness: 3,
                  fontFamily: 'Raleway',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                            child: Image.network(
                              nationalAdvisoryCommittee[index].imageUrl,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          nationalAdvisoryCommittee[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          nationalAdvisoryCommittee[index].designation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: nationalAdvisoryCommittee.length,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}

List<CommitteeMember> internationalAdvisoryCommittee = [
  CommitteeMember(
    name: "Dr. Sameer Antani",
    designation: "Staff Scientist, Biomedical Informatics Branch, LHNCBC, USA",
    imageUrl: "https://committee.s3.filebase.com/sameerantani.png",
  ),
  CommitteeMember(
    name: "Mr. Altaf Shaikh",
    designation: "Founder & CEO ListEngage, Greater Boston, USA",
    imageUrl: "https://committee.s3.filebase.com/altafshaikh.jpg",
  ),
  CommitteeMember(
    name: "Prof. Sunil Vadera",
    designation:
        "Professor of Computer Science University of Salford, Greater Manchester, United Kingdom",
    imageUrl: "https://committee.s3.filebase.com/sunilvadera.jpg",
  ),
  CommitteeMember(
    name: "Dr. Sangram Ganguly",
    designation:
        "Chief Technology Officer at Rhombus Power Inc. Milpitas, California, United States",
    imageUrl: "https://committee.s3.filebase.com/sangramganguly.png",
  ),
  CommitteeMember(
    name: "Dr. Alefiya Hussain",
    designation: "Sr. Computer Scientist, USC/Information Sciences Institute, USA",
    imageUrl: "https://committee.s3.filebase.com/alefiyahussian.png",
  ),
  CommitteeMember(
    name: "Prof. Satya Prasad Majumder",
    designation:
        "Vice-chancellor, Bangladesh University of Engineering and Technology (BUET) Dhaka, Bangladesh",
    imageUrl: "https://committee.s3.filebase.com/satyaprasadmajumdar.png",
  ),
  CommitteeMember(
    name: "Dr. Gary Ushaw",
    designation:
        "Director of Business and Engagement School of Computing Urban Science Building Newcastle University",
    imageUrl: "https://committee.s3.filebase.com/garyushaw.png",
  ),
  CommitteeMember(
    name: "Dr. Nicola Calabretta",
    designation:
        "Associate Professor at Technical University of Eindhoven, North Brabant, Netherland",
    imageUrl: "https://committee.s3.filebase.com/nicolacalabretta.png",
  ),
  CommitteeMember(
    name: "Dr. Ravishankar Dudhe",
    designation:
        "Associate Professor Senior Scale, School of Engineering and IT, Manipal Academy of Higher Education, Dubai",
    imageUrl: "https://committee.s3.filebase.com/ravishankardudhe.png",
  ),
  CommitteeMember(
    name: "Prof. Krishna Vedula",
    designation:
        "Professor and Dean Emeritus at University of Massachusetts Lowell Westford, Massachusetts, United States",
    imageUrl: "https://committee.s3.filebase.com/krishnavedula.png",
  ),
  CommitteeMember(
    name: "Dr. Azlan Mohd Zain",
    designation: "Universiti Teknologi Malaysia Johore, Malaysia",
    imageUrl: "https://committee.s3.filebase.com/azlanmohdzain.png",
  ),
];

List<CommitteeMember> nationalAdvisoryCommittee = [
  CommitteeMember(
    name: "Prof. Ranjan Gangopadhyay",
    designation: "Professor, The LNM Institute of Information Technology, Jaipur, India",
    imageUrl: "https://committee.s3.filebase.com/ranjangangopadhyay.png",
  ),
  CommitteeMember(
    name: "Dr. Sachin Lodha",
    designation: "Principal Scientist, Tata Research Development and Design Centre (TRDDC) Pune",
    imageUrl: "https://committee.s3.filebase.com/sachinlodha.png",
  ),
  CommitteeMember(
    name: "Dr. R. Venkateswaran",
    designation: "Chief Information Officer, Persistent System",
    imageUrl: "https://committee.s3.filebase.com/rvenkateswaran.png",
  ),
  CommitteeMember(
    name: "Dr. L. M. Patnaik",
    designation:
        "Adjunct Professor and NASI Senior Scientist, National Institute of Advanced Studies, Indian Institute of Science Campus, Bangalore 560012",
    imageUrl: "https://committee.s3.filebase.com/lmpatnik.png",
  ),
  CommitteeMember(
    name: "Prof. Debabrata Das",
    designation: "Director and Professor, IIIT Bangalore",
    imageUrl: "https://committee.s3.filebase.com/debabratadas.jpg",
  ),
  CommitteeMember(
    name: "Dr. Saradindu Panda",
    designation: "Academician at Narula Institute of Technology Kolkata, West Bengal",
    imageUrl: "https://committee.s3.filebase.com/saradindupanda.jpg",
  ),
  CommitteeMember(
    name: "Prof. Sibaram Khara",
    designation: "Vice Chancellor, Sharda University",
    imageUrl: "https://committee.s3.filebase.com/sibaramkhara.jpeg",
  ),
  CommitteeMember(
    name: "Dr. Salil Kumar Sanyal",
    designation:
        "Retd. Professor, Electronics & Telecommunication Engineering, Jadhavpur University",
    imageUrl: "https://committee.s3.filebase.com/salilkumarsanyal.jpg",
  ),
  CommitteeMember(
    name: "Prof. Shiv Kumar Katiyar",
    designation:
        "Dean, Institute of Engineering & Technology at Bundelkhand University Jhansi, Uttar Pradesh, India",
    imageUrl: "https://committee.s3.filebase.com/shivkumarkatiyar.jpeg",
  ),
  CommitteeMember(
    name: "Dr. Prithiviraj Venkatapathy",
    designation: "Adjunct Professor, ECE Dept, at VIGNAN UNIVERSITY Puducherry",
    imageUrl: "https://committee.s3.filebase.com/prithivirajvenkatapathy.jpeg",
  ),
  CommitteeMember(
    name: "Dr. Sajal Saha",
    designation:
        "Dean School of Computing Sciences & Dean Research at Kaziranga University Golaghat, Assam",
    imageUrl: "https://committee.s3.filebase.com/sajalsaha.jpeg",
  ),
];
