// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-13"

let package = Package(
    name: "BNBAcneEyebagsRemoval",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBAcneEyebagsRemoval",
            targets: [
                "BNBAcneEyebagsRemoval_Target",
                "BNBAcneEyebagsRemoval_BNBAcneEyebagsRemoval_Target",
                "BNBAcneEyebagsRemoval_BNBAcneEyebagsRemoval_Target",
                "BNBAcneEyebagsRemoval_BNBAcneEyebagsRemoval_Target",
                "BNBAcneEyebagsRemoval_BNBAcneEyebagsRemoval_Target"
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
            name: "BNBAcneEyebagsRemoval_Target",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBAcneEyebagsRemoval.zip",
            checksum: "0559658787637a1e42b41e1927468faabe06f62fc10fe51e5cf7b09f21d21f09"
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBSdkCore_Target",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBEffectPlayer_Target",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBScripting_Target",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBFaceTracker_Target",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
