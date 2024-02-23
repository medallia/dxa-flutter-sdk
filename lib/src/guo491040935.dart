enum MedalliaDxaCustomerConsentType {
  recordingAndTracking,
  tracking,
  none,
}

extension Zeh403348627 on MedalliaDxaCustomerConsentType {
  int pt273667464() {
    switch (this) {
      case MedalliaDxaCustomerConsentType.none:
        return 0;

      case MedalliaDxaCustomerConsentType.tracking:
        return 1;

      case MedalliaDxaCustomerConsentType.recordingAndTracking:
        return 2;

      default:
        return 0;
    }
  }
}
