part of hydro_sdk.run_component;

mixin ReloadableMountableChunk<T extends StatefulWidget> on State<T>
    implements HotReloadable<T> {
  Future<void> maybeReloadMountableChunk({
    @required Uint8List rawPackage,
    @required String component,
    @required
        Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
            thunks,
  }) async {
    final decodedBzip2 = BZip2Decoder().decodeBytes(rawPackage);
    final decodedTar = TarDecoder().decodeBytes(decodedBzip2);

    final manifest = PackageManifest.fromJson(jsonDecode(
        _getFileContentFromArchiveAsString(
            fileName: "${component}/manifest.json", archive: decodedTar)));

    final debugInfo = jsonDecode(_getFileContentFromArchiveAsString(
            fileName: "${component}/${manifest.mountableChunk}.hc.symbols",
            archive: decodedTar))
        .map((x) => ModuleDebugInfo.fromJson(x))
        .toList()
        .cast<ModuleDebugInfo>();

    final mountableChunk = _getFileContentFromArchive(
        fileName: "${component}/${manifest.mountableChunk}.hc",
        archive: decodedTar);

    if (res == null) {
      await fullRestart(
        bytecodeImage: Uint8List.fromList(mountableChunk),
        baseUrl: manifest.mountableChunk,
        symbols: debugInfo,
        thunks: thunks,
      );
    } else {
      var status = await hotReload(
        bytecodeImage: Uint8List.fromList(mountableChunk),
        baseUrl: manifest.mountableChunk,
        symbols: debugInfo,
        thunks: thunks,
      );
      if (!status) {
        await fullRestart(
          bytecodeImage: Uint8List.fromList(mountableChunk),
          baseUrl: manifest.mountableChunk,
          symbols: debugInfo,
          thunks: thunks,
        );
      }
    }
  }
}
