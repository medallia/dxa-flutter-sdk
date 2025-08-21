import groovy.json.JsonSlurper
import java.io.File
import kotlin.collections.get

/**
 * Data class representing a Flutter release.
 *
 * @property version The version of the Flutter release.
 * @property hash The hash of the Flutter release.
 * @property archive The archive file name of the Flutter release.
 */
data class FlutterRelease(val version: String, val hash: String, val archive: String) {
    companion object {

        /**
         * Gets the latest stable Flutter release.
         * Parses [jsonFile], gets the data of the latest flutter releases, and returns as a [FlutterRelease] object.
         * Example JSON:
         * {
         *   "current_release": {
         *     "stable": "c23637390482d4cf9598c3ce3f2be31aa7332daf", <-- first get the hash of the stable release
         *      ...
         *   },
         *   "releases": [
         *     {
         *       "hash": "c23637390482d4cf9598c3ce3f2be31aa7332daf", <-- find the release with the same hash
         *       "version": "3.29.2",
         *       "dart_sdk_arch": "x64",
         *       "archive": "stable/macos/flutter_macos_3.10.0-stable.zip"
         *     },
         *     ...
         *   ]
         * }
         * @param jsonFile The JSON file containing the Flutter releases data.
         * @param arch The architecture of the Flutter release. Default is "x64".
         * @return The latest stable Flutter release as [FlutterRelease].
         * @throws Exception if no stable release is found.
         */
        fun getLatestFlutterRelease(jsonFile: File, arch: String = "x64"): FlutterRelease {
            val json = JsonSlurper().parseText((jsonFile.readText())) as Map<*, *>
            val stableHash = json["current_release"].let {
                if (it is Map<*, *>) it["stable"] as? String else null
            }
            val releases = json["releases"]

            val stableReleaseMap = if (releases is List<*>) {
                releases.filterIsInstance<Map<*, *>>().find { it["hash"] == stableHash && it["dart_sdk_arch"] == arch }
            } else {
                null
            }

            require(stableReleaseMap != null) {
                throw Exception("No stable release found")
            }

            val flutterVersion: String = stableReleaseMap["version"] as String
            val flutterHash: String = stableReleaseMap["hash"] as String
            val flutterArchive: String = stableReleaseMap["archive"] as String

            return FlutterRelease(flutterVersion, flutterHash, flutterArchive)
        }

        /**
         * Gets a specific version of the Flutter SDK.
         * Parses [jsonFile], gets the data of the specific flutter release, and returns as a [FlutterRelease] object.
         * Example JSON:
         * {
         *   "current_release": {
         *     ...
         *   },
         *   "releases": [
         *     {
         *       "hash": "c23637390482d4cf9598c3ce3f2be31aa7332daf",
         *       "version": "3.29.2",  <-- find the release with the same version
         *       "dart_sdk_arch": "x64",
         *       "archive": "stable/macos/flutter_macos_3.10.0-stable.zip"
         *     },
         *     ...
         *   ]
         * }
         *
         * @param version The version of the Flutter release.
         * @param arch The architecture of the Flutter release. Default is "x64".
         * @return The specified Flutter release as [FlutterRelease].
         * @throws Exception if the specified release is not found.
         */
        fun getFlutterSpecificRelease(version: String, jsonFile: File, arch: String = "x64"): FlutterRelease {
            val json = JsonSlurper().parseText((jsonFile.readText())) as Map<*, *>
            val flutterReleaseMap = json["releases"].let { releases ->
                if (releases is List<*>) {
                    releases.filterIsInstance<Map<*, *>>()
                        .find { it["version"] == version && it["dart_sdk_arch"] == arch }
                } else {
                    null
                }
            }
            require(flutterReleaseMap != null) {
                throw Exception("Release version $version not found")
            }

            val flutterVersion: String = flutterReleaseMap["version"] as String
            val flutterHash: String = flutterReleaseMap["hash"] as String
            val flutterArchive: String = flutterReleaseMap["archive"] as String

            return FlutterRelease(flutterVersion, flutterHash, flutterArchive)
        }
    }
}
