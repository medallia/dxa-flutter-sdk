pluginManagement {
    repositories {
        mavenCentral()
        gradlePluginPortal()
        maven {
            name = "MedalliaArtifactoryVirtualMvn"
            url = uri("https://artifactory.eng.medallia.com/artifactory/virtual-mvn/")
            credentials {
                username = extra["mArtifactoryUser"].toString()
                password = extra["mArtifactoryPassword"].toString()
            }
        }
    }
}

rootProject.name = "buildSrc"

dependencyResolutionManagement {
    repositories {
        mavenCentral()
    }
}