import org.gradle.api.file.DirectoryProperty
import org.gradle.api.provider.ListProperty
import org.gradle.api.tasks.AbstractExecTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.InputDirectory
import org.gradle.api.tasks.Optional
import org.gradle.api.tasks.OutputDirectory

/**
 * Runs multiple "flutter" commands with the specified arguments.
 * Makes sure that PATH is updated so that the "flutter" commands can be run. Every command passed is preceded by the
 * "flutter" keyword.
 * Example: flutterCommand("pub get") will run "flutter pub get".
 * @param flutterArgs The Flutter commands to run. Each command is a string.
 * @param flutterDownloadDirectory The directory where the Flutter SDK is downloaded.
 * @param flutterOutputDirectory Optional. The directory where the output of the Flutter commands will be stored.
 */
public abstract class FlutterTask : AbstractExecTask<FlutterTask>(
    FlutterTask::class.java
) {
    @get:Input
    public abstract val flutterArgs: ListProperty<String>

    @get:InputDirectory
    public abstract val flutterDownloadDirectory: DirectoryProperty

    /**
     * Optional. The directory where the output of the Flutter commands will be stored.
     * Whenever this directory is changed, the task will be no longer UP-TO-DATE.
     * E.g. This task runs a command to store the mocks for unit tests, so any change to the mocks should force the task
     * to be re-run.
     */
    @get:Optional
    @get:OutputDirectory
    public abstract val flutterOutputDirectory: DirectoryProperty

    override fun exec() {
        val flutterCommand = flutterArgs.orNull.orEmpty().joinToString(" && ") { "flutter $it" }.trimIndent()
        require(flutterCommand.isNotEmpty()) {
            "Flutter command cannot be empty"
        }

        val flutterDownloadDirectory = flutterDownloadDirectory.orNull?.asFile?.absolutePath
        require(!flutterDownloadDirectory.isNullOrEmpty()) {
            "Flutter download directory cannot be null or empty"
        }

        this.commandLine = listOf(
            "sh", "-c", "export PATH=$flutterDownloadDirectory/flutter/bin:\$PATH && $flutterCommand"
        )

        super.exec()
    }
}