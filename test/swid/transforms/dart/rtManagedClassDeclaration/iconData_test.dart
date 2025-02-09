import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        DartRTManagedClassDeclaration(swidClass: iconDataClass).toDartSource(),
        """
class RTManagedIconData extends IconData implements Box<IconData> {
  RTManagedIconData(int codePoint,
      {String fontFamily,
      String fontPackage,
      bool matchTextDirection,
      @required this.table,
      @required this.hydroState})
      : super(codePoint,
            fontFamily: fontFamily,
            fontPackage: fontPackage,
            matchTextDirection: matchTextDirection) {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table[\'codePoint\'] = codePoint;
    table[\'fontFamily\'] = fontFamily;
    table[\'fontPackage\'] = fontPackage;
    table[\'matchTextDirection\'] = matchTextDirection;
    table[\'_dart_getHashCode\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table[\'_dart_toString\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  IconData unwrap() => this;
  IconData get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
