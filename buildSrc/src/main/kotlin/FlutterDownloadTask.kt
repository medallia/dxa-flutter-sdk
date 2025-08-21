import org.gradle.api.file.DirectoryProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.AbstractExecTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.OutputDirectory

/**
 * Downloads the Flutter SDK:
 * 1. Removes the existing Flutter SDK directory [flutterDownloadDirectory].
 * 2. Creates a new directory for the Flutter SDK in [flutterDownloadDirectory].
 * 3. Downloads the Flutter SDK from the specified URL [flutterDownloadUrl] plus the archive name [flutterArchive].
 * 4. Unzips the downloaded file into the new directory. [flutterDownloadDirectory].
 * @param flutterVersion The version of the Flutter SDK to download.
 * @param flutterArchive The archive file name of the Flutter SDK to download, it's concatenated with the
 * [flutterDownloadUrl] in order to get the full URL path where the zipped Flutter version is located.
 * @param flutterDownloadUrl The base URL to download the Flutter SDKs.
 * @param flutterDownloadDirectory The directory where the Flutter SDK will be downloaded.
 */
public abstract class FlutterDownloadTask : AbstractExecTask<FlutterDownloadTask>(
    FlutterDownloadTask::class.java
) {
    @get:Input
    public abstract val flutterVersion: Property<String>

    @get:Input
    public abstract val flutterArchive: Property<String>

    @get:Input
    public abstract val flutterDownloadUrl: Property<String>

    @get:OutputDirectory
    public abstract val flutterDownloadDirectory: DirectoryProperty

    override fun exec() {
        commandLine = listOf(
            "sh", "-c",
            """
                rm -rf ${flutterDownloadDirectory.asFile.get().absolutePath}
                mkdir -p ${flutterDownloadDirectory.asFile.get().absolutePath}
                curl -o ${flutterDownloadDirectory.asFile.get().absolutePath}/${flutterVersion.get()}.zip ${flutterDownloadUrl.get()}/${flutterArchive.get()}
                unzip ${flutterDownloadDirectory.asFile.get().absolutePath}/${flutterVersion.get()}.zip -d ${flutterDownloadDirectory.asFile.get().absolutePath}
            """.trimIndent()
        )

        super.exec()
    }
}
