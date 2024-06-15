extension AssetExtension on String {
  String get pngIcon => 'assets/images/$this.png';

  String get jpgIcon => 'assets/images/$this.jpg';

  String get svgIcon => 'assets/images/$this.svg';
}
