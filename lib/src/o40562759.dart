enum ImageQuality { poor, low, average, high, ultra }

class Eiy720223875 {
  static ImageQuality lyv844448704(int kcy84461346) {
    switch (kcy84461346) {
      case 0:
        return ImageQuality.poor;
      case 1:
        return ImageQuality.low;
      case 2:
        return ImageQuality.average;
      case 3:
        return ImageQuality.high;
      case 4:
        return ImageQuality.ultra;
      default:
        return ImageQuality.average;
    }
  }
}

extension ImageQualityConversion on ImageQuality {
  int fi273667905() {
    switch (this) {
      case ImageQuality.poor:
        return 0;
      case ImageQuality.low:
        return 1;
      case ImageQuality.average:
        return 2;
      case ImageQuality.high:
        return 3;
      case ImageQuality.ultra:
        return 4;
      default:
        return 2;
    }
  }
}
