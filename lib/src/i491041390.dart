enum MedalliaDxaCustomerConsentType {
  recordingAndTracking,
  tracking,
  none,
}

extension ConsentConversion on MedalliaDxaCustomerConsentType {
  int fi273667905() {
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
