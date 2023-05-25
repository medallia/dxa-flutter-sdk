import 'package:decibel_sdk/src/features/event_channel/classes/live_configuration.dart';
import 'package:flutter/material.dart';

class GlobalSettings {
  GlobalSettings({
    required this.liveConfiguration,
    required this.defaultGlobalSettings,
  });
  final LiveConfiguration liveConfiguration;
  final DefaultGlobalSettings defaultGlobalSettings;

  Duration? userMaxReplayDurationPerScreen;
  Duration get maxReplayDurationPerScreen {
    return returnCorrectConfig<Duration>(
      overrideUserConfig: liveConfiguration.overrideUserConfig,
      userConfig: userMaxReplayDurationPerScreen,
      liveConfig: liveConfiguration.maxScreenDuration,
      defaultConfig: defaultGlobalSettings.maxReplayDurationPerScreen,
    );
  }

  int? userMaxScreenshotCount;
  int get maxScreenshotCount {
    return returnCorrectConfig<int>(
      overrideUserConfig: liveConfiguration.overrideUserConfig,
      userConfig: userMaxScreenshotCount,
      liveConfig: liveConfiguration.maxScreenshots,
      defaultConfig: defaultGlobalSettings.maxScreenshotCount,
    );
  }

  Color? userMaskColor;
  Color get maskColor {
    return returnCorrectConfig<Color>(
      overrideUserConfig: liveConfiguration.overrideUserConfig,
      userConfig: userMaskColor,
      liveConfig: liveConfiguration.maskingColor,
      defaultConfig: defaultGlobalSettings.maskColor,
    );
  }

  Duration? userFrameRateInMiliseconds;
  Duration get frameRateInMiliseconds {
    return returnCorrectConfig<Duration>(
      overrideUserConfig: liveConfiguration.overrideUserConfig,
      liveConfig: liveConfiguration.videoQualityType,
      userConfig: userFrameRateInMiliseconds,
      defaultConfig: defaultGlobalSettings.frameRateInMiliseconds,
    );
  }

  ///Returns either the User config, Live config or Default config depending
  ///on the overrideUserConfig parameter and the potential null values
  T returnCorrectConfig<T>({
    required bool overrideUserConfig,
    required T? userConfig,
    required T? liveConfig,
    required T defaultConfig,
  }) {
    if (overrideUserConfig == true) {
      return liveConfig ?? userConfig ?? defaultConfig;
    }
    return userConfig ?? liveConfig ?? defaultConfig;
  }
}

class DefaultGlobalSettings {
  final Duration maxReplayDurationPerScreen = const Duration(minutes: 5);
  final int maxScreenshotCount = 1200;
  final Duration frameRateInMiliseconds = const Duration(milliseconds: 250);
  final Color maskColor = Colors.grey;
}
