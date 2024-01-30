flutter pub run pigeon \
  --input pigeons/messages.dart \
  --dart_out lib/src/messages.dart \
  --objc_header_out ios/Classes/messages.h \
  --objc_source_out ios/Classes/messages.m \
  --objc_prefix FLT \
  --java_out android/src/main/kotlin/com/medallia/medallia_dxa/Messages.java \
  --java_package "com.medallia.medallia_dxa"