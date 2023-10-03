enum MedalliaDxaCustomerConsentType {
  recordingAndTracking,
  tracking,
  none,
}

extension ConsentConversion on MedalliaDxaCustomerConsentType {
  int integerValue() {
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
