enum ImageQuality { poor, low, average, high, ultra }

class Sq720223745 {
  static ImageQuality nes844448578(int vzl84461472) {
    switch (vzl84461472) {
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

extension Dmz475565836 on ImageQuality {
  int g273668035() {
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
