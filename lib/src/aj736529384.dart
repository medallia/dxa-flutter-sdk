enum MedalliaDxaCustomerConsentType {
  analyticsAndRecording,
  analytics,
  none,
}

extension Ng403348717 on MedalliaDxaCustomerConsentType {
  int dd273667574() {
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
