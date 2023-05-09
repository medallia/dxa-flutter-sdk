enum DecibelCustomerConsentType {
  recordingAndTracking,
  tracking,
  none,
}

extension ConsentConversion on DecibelCustomerConsentType {
  int integerValue() {
    switch (this) {
      case DecibelCustomerConsentType.none:
        return 0;

      case DecibelCustomerConsentType.tracking:
        return 1;

      case DecibelCustomerConsentType.recordingAndTracking:
        return 2;

      default:
        return 0;
    }
  }
}
