import 'package:decibel_sdk/src/features/autoMasking/auto_masking_widgets.dart';

enum DecibelCustomerConsentType {
  all,
  recordingAndTracking,
  tracking,
  none,
}

enum AutoMaskingType<T extends AutoMaskWidgets> {
  button(ButtonAutomaskWidgets()),
  dialog(DialogAutomaskWidgets()),
  image(ImageAutomaskWidgets()),
  inputText(InputTextAutomaskWidgets()),
  text(TextAutomaskWidgets()),
  icons(IconAutomaskWidgets()),
  webView(WebviewAutomaskWidgets()),

  all(AllAutomaskWidgets()),
  none(NoAutomaskWidgets());

  final AutoMaskWidgets autoMaskWidgets;
  const AutoMaskingType(this.autoMaskWidgets);
}
