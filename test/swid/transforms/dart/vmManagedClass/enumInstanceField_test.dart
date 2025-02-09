import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var ir = DartVMManagedClassDeclaration(
        swidClass: SwidClass(
      name: "fooClass",
      typeFormals: [],
      implementedClasses: [],
      isMixin: false,
      extendedClass: null,
      originalPackagePath: "",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      staticMethods: [],
      factoryConstructors: [],
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      instanceFieldDeclarations: {
        "barField": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "BarEnum",
          nullabilitySuffix: SwidNullabilitySuffix.question,
          originalPackagePath: "",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.enumElement,
        ))
      },
      constructorType: SwidFunctionType(
        name: "",
        isFactory: false,
        typeFormals: [],
        namedDefaults: {},
        namedParameterTypes: {},
        optionalParameterNames: [],
        normalParameterNames: [],
        normalParameterTypes: [],
        nullabilitySuffix: SwidNullabilitySuffix.none,
        optionalParameterTypes: [],
        originalPackagePath: "",
        returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
          name: "",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
          typeArguments: [],
        )),
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      ),
      staticConstFieldDeclarations: [],
      methods: [],
      mixedInClasses: [],
    ));

    expect(ir.toDartSource(), """
class VMManagedfooClass extends VMManagedBox<fooClass> {
  VMManagedfooClass(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'barField\'] = BarEnum.values.indexWhere((x) {
      return x == vmObject.barField;
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final fooClass vmObject;
}
""");
  }, tags: "swid");
}
