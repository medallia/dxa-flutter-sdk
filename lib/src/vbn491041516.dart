enum MedalliaDxaCustomerConsentType {
  analyticsAndRecording,
  analytics,
  none,
}

extension P403349208 on MedalliaDxaCustomerConsentType {
  int g273668035() {
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
