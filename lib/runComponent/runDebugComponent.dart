part of hydro_sdk.run_component;

class _RunDebugComponent extends StatefulWidget {
  final String project;
  final String component;
  final int port;
  final Widget loading;
  final Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
      thunks;

  const _RunDebugComponent({
    @required this.project,
    @required this.component,
    @required this.thunks,
    this.port = 5000,
    this.loading = const Center(
      child: CircularProgressIndicator(),
    ),
  });

  @override
  _RunDebugComponentState createState() => _RunDebugComponentState();
}

class _RunDebugComponentState extends State<_RunDebugComponent>
    with HotReloadable, PreloadableCustomNamespaces, ReloadableMountableChunk {
  Timer timer;
  List<dynamic> args;

  _RunDebugComponentState() {
    maybeReload();
    timer = Timer.periodic(Duration(milliseconds: 500), (_) => maybeReload());
  }

  Future<void> maybeReload() async {
    if (kDebugMode) {
      if (mounted) {
        final newHash = await _downloadDebugPackageHash(
          port: widget.port,
          project: widget.project,
          component: widget.component,
        );

        if (newHash == null) {
          return;
        }

        if (newHash != null && newHash != lastHash) {
          setState(() {
            lastHash = newHash;
          });
          final rawPackage = await _downloadDebugPackage(
              port: widget.port,
              project: widget.project,
              component: widget.component);

          await maybeReloadMountableChunk(
            rawPackage: rawPackage,
            component: widget.component,
            thunks: widget.thunks,
          );
        }
      }
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      if (res == null) {
        return widget.loading;
      } else {
        if (!res.success) {
          print(res.values[0]);
        }
        return maybeUnBoxAndBuildArgument<Widget>(
            luaState.context.env["hydro"]["globalBuildResult"].dispatch(
                args != null ? [...args] : [],
                parentState: luaState)[0],
            parentState: luaState);
      }
    }
    return const SizedBox();
  }
}
