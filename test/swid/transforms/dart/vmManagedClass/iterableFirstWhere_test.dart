import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    /*
    class Iterable<E> {
     Iterable<E> Iterable();
     E firstWhere(bool test(E element), {E orElse()?})
    }
  */
    var iterable = SwidClass(
        name: "Iterable",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        implementedClasses: [],
        constructorType: SwidFunctionType(
          name: "",
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
              name: "Iterable<E>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                      name: "E",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.typeParameterType),
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [],
        ),
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          SwidFunctionType(
            name: "firstWhere",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {
              "orElse": SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                  name: "",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
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
                    name: "E",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                  )),
                  isFactory: false,
                  typeFormals: [],
                ),
              ),
            },
            namedDefaults: {},
            normalParameterNames: ["test"],
            normalParameterTypes: [
              SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                  name: "",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                  namedParameterTypes: {},
                  namedDefaults: {},
                  normalParameterNames: ["element"],
                  normalParameterTypes: [
                    SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "E",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.typeParameterType,
                      ),
                    ),
                  ],
                  optionalParameterNames: [],
                  optionalParameterTypes: [],
                  returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "bool",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                    ),
                  ),
                  isFactory: false,
                  typeFormals: [],
                ),
              ),
            ],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "E",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            ),
            isFactory: false,
            typeFormals: [],
          ),
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            value: SwidTypeFormalValue.fromString(string: "E"),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);
    expect(
        DartVMManagedClassDeclaration(
          swidClass: instantiateAllGenericsAs(
            swidType: SwidType.fromSwidClass(swidClass: iterable),
            instantiatedGeneric:
                SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
              swidInstantiableGeneric:
                  SwidInstantiableGeneric.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "dynamic",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.dynamicType,
                  typeArguments: [],
                ),
              ),
            ),
          ).when(
            fromSwidInterface: (_) => null,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
        ).toDartSource(),
        """
class VMManagedIterable extends VMManagedBox<Iterable<dynamic>> {
  VMManagedIterable(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'firstWhere\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure test = args[1];
      Closure orElse = args[2][\'orElse\'];
      return [
        vmObject.firstWhere(
            test != null
                ? (element) => test.dispatch(
                      [args[0], element],
                      parentState: hydroState,
                    )[0]
                : null,
            orElse: orElse != null
                ? () => orElse.dispatch(
                      [
                        args[0],
                      ],
                      parentState: hydroState,
                    )[0]
                : null)
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Iterable vmObject;
}
""");
  }, tags: "swid");
}
