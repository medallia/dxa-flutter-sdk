enum ImageQuality { poor, low, average, high, ultra }

class O720224050 {
  static ImageQuality y844448369(int bx84461203) {
    switch (bx84461203) {
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

extension Xcw475565631 on ImageQuality {
  int ypt273667824() {
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
