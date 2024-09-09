enum MedalliaDxaCustomerConsentType {
  analyticsAndRecording,
  analytics,
  none,
}

extension E403348674 on MedalliaDxaCustomerConsentType {
  int e273667545() {
    switch (this) {
      case MedalliaDxaCustomerConsentType.none:
        return 0;

      case MedalliaDxaCustomerConsentType.analytics:
        return 1;

      case MedalliaDxaCustomerConsentType.analyticsAndRecording:
        return 2;

      default:
        return 0;
    }
  }
}
