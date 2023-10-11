const String baseImagePath = 'assets/images';

// Svgs in the application
final icArrow = 'ic_test_arrow'.svg;
final icBell = 'ic_bell'.svg;
final icCheck = 'ic_test_check'.svg;
final icHeart = 'ic_heart'.svg;
final icChat = 'ic_chat'.svg;
final icBookMark = 'ic_bookmark'.svg;
final icImageIcon = 'ic_test_image'.svg;

// Pngs in the application
final icProfileImageI = 'ic_test_profile_image1'.png;
final icProfileImage2 = 'ic_test_profile_image2'.png;
final icHeartPng = 'ic_heart'.png;

extension ImageExtension on String {
  String get png => '$baseImagePath/pngs/$this.png';
  String get svg => '$baseImagePath/svgs/$this.svg';
}
