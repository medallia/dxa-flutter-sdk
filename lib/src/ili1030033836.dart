enum ImageQuality { poor, low, average, high, ultra }

class H720223284 {
  static ImageQuality npz844448119(int li84460949) {
    switch (li84460949) {
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

extension G475565369 on ImageQuality {
  int dd273667574() {
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
