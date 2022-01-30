class Galleryitems {
  final String networkurl;
  String imgdesc;
  String tag;

  Galleryitems({
    required this.networkurl,
    required this.imgdesc,
    required this.tag,
  });

}
List<Galleryitems> aboutPune=[
  Galleryitems(
    networkurl:'https://icei-app.s3.filebase.com/1-Dagadusheth_Ganpati.jpg',
    imgdesc: 'Dagadusheth Halwai Ganapati',
    tag: 'image1',
  ),
  Galleryitems(
    networkurl: 'https://icei-app.s3.filebase.com/2-Savitribai_Phule_University_Main_Building.jpg',
    imgdesc: 'SPPU Main Building',
    tag: 'image2',
  ),
  Galleryitems(
    networkurl: 'https://icei-app.s3.filebase.com/3-sinhagad-fort-pune-tourism-entry-fee-timings-holidays-reviews-header.jpg',
    imgdesc: 'Sinhagad Fort',
    tag: 'image3',
  ),
  Galleryitems(
    networkurl: 'https://icei-app.s3.filebase.com/4-shaniwar-wada-pune-tourism-entry-fee-timings-holidays-reviews-header.jpg',
    imgdesc: 'Shaniwar Wada',
    tag: 'image4',
  ),
  Galleryitems(
    networkurl: 'https://icei-app.s3.filebase.com/5-pune-okayama-friendship-garden-india-tourism-history.jpg',
    imgdesc: 'Pu La Deshpande Garden',
    tag: 'image5',
  ),
  Galleryitems(
    networkurl: 'https://icei-app.s3.filebase.com/6-shree-swaminarayan-mandir-pune-tourism-holidays-closed-on-timings.jpg',
    imgdesc: 'Swaminarayan Temple',
    tag: 'image6',
  ),
];