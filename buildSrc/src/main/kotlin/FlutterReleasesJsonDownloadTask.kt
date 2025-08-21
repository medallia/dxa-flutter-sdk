import org.gradle.api.file.RegularFileProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.AbstractExecTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.OutputFile

/**
 * Downloads the Flutter releases JSON file from the specified URL [releasesJsonUrl].
 * The JSON file is saved to the specified output file [outputFile].
 * @param releasesJsonUrl The URL to download the Flutter releases JSON file from.
 * @param outputFile The output file where the downloaded JSON file will be saved.
 */
public abstract class FlutterReleasesJsonDownloadTask : AbstractExecTask<FlutterReleasesJsonDownloadTask>(
    FlutterReleasesJsonDownloadTask::class.java
) {
    @get:Input
    public abstract val releasesJsonUrl: Property<String>

    @get:OutputFile
    abstract val outputFile: RegularFileProperty

    override fun exec() {
        require(releasesJsonUrl.isPresent) {
            "Releases JSON URL cannot be null"
        }

        val file = outputFile.orNull?.asFile
        require(file != null) {
            "Output file cannot be null"
        }
        file.parentFile.mkdirs()

        val jsonFilePath = "${file.path}"
        commandLine = listOf(
            "sh", "-c", """
            curl -o $jsonFilePath ${releasesJsonUrl.get()}
        """.trimIndent()
        )

        super.exec()
    }
}
