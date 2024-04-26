enum MedalliaDxaCustomerConsentType {
  recordingAndTracking,
  tracking,
  none,
}

extension Itw403348669 on MedalliaDxaCustomerConsentType {
  int m273667494() {
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
