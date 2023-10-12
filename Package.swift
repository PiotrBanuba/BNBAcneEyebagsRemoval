// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-7"

let package = Package(
    name: "BNBAcneEyebagsRemoval",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBAcneEyebagsRemoval",
            targets: [
                "BNBAcneEyebagsRemovalBNBAcneEyebagsRemovalTarget",
                "BNBAcneEyebagsRemovalBNBSdkCoreTarget",
                "BNBAcneEyebagsRemovalBNBEffectPlayerTarget",
                "BNBAcneEyebagsRemovalBNBScriptingTarget",
                "BNBAcneEyebagsRemovalBNBFaceTrackerTarget"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBAcneEyebagsRemoval",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBAcneEyebagsRemoval.zip",
            checksum: "0559658787637a1e42b41e1927468faabe06f62fc10fe51e5cf7b09f21d21f09"
        ),
        .target(
            name: "BNBAcneEyebagsRemovalBNBSdkCoreTarget",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemovalBNBEffectPlayerTarget",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemovalBNBScriptingTarget",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemovalBNBFaceTrackerTarget",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
