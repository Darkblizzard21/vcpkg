# Header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO syoyo/tinygltf
    REF a2ce2fdcef9c6c3687d1def2c8bb07ba27f4d1ba
    SHA512 0
    HEAD_REF master
)

# Copy the tinyddsloader header file
file(INSTALL "${SOURCE_PATH}/tinyddsloader.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

# Put the licence file where vcpkg expects it
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
