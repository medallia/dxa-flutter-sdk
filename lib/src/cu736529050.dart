enum MedalliaDxaCustomerConsentType {
  analyticsAndRecording,
  analytics,
  none,
}

extension Fnx403348895 on MedalliaDxaCustomerConsentType {
  int si273667204() {
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
