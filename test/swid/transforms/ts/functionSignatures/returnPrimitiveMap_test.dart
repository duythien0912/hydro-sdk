import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var functionType = SwidFunctionType(
      isFactory: false,
      name: "foo",
      typeFormals: [],
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
              name: "Map<String, Object>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              originalPackagePath: "dart:core",
              typeArguments: [
            SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
              name: "String",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            )),
            SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
              name: "Object",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            )),
          ])),
    );

    expect(
        transformTypeDeclarationToTs(
            swidType:
                SwidType.fromSwidFunctionType(swidFunctionType: functionType)),
        "() => {[index: string]: Object}");
  }, tags: "swid");
}
