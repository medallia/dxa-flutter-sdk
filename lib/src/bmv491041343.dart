enum MedalliaDxaCustomerConsentType {
  analyticsAndRecording,
  analytics,
  none,
}

extension Dgv403349003 on MedalliaDxaCustomerConsentType {
  int g273667856() {
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
