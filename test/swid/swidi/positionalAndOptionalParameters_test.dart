import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'lib/parserTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo(
      int bar, [
      int baz,
      int? qux,
    ]);
  }
    """,
        """
  class IconData {
    void foo(
      int bar, [
      int baz,
      int? qux
    ]);
  }
    """,
        """
  class IconData {
    void foo(int bar, [int baz, int? qux]);
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "qux",
                          type: SwidiInterface(
                            name: "int?",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.question,
                          )))
                ],
                positionalParameters: [
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                ],
                namedParameters: [],
              )
            ]),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo(
      int bar, [
      int baz,
      int? qux,
      int quux,
    ]);
  }
    """,
        """
  class IconData {
    void foo(int bar, [int baz, int? qux, int quux]);
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "qux",
                          type: SwidiInterface(
                            name: "int?",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.question,
                          ))),
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "quux",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          )))
                ],
                positionalParameters: [
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                ],
                namedParameters: [],
              )
            ]),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo(
      int bar, 
      int baz,
      int? qux,[
      int quux
    ]);
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "quux",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          )))
                ],
                positionalParameters: [
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "qux",
                          type: SwidiInterface(
                            name: "int?",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.question,
                          ))),
                ],
                namedParameters: [],
              )
            ]),
      ],
    );

    parserTestHarness(
      input: const ParserTestHarnessInput.fromList(inputs: [
        """
  class IconData {
    void foo(
      int bar, [
      int baz,
    ]);
  }
    """,
        """
  class IconData {
    void foo(int bar, [int baz]);
  }
    """,
      ]),
      parser: const SwidiParser().build(),
      result: [
        const SwidiClass(
            name: "IconData",
            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
            methods: [
              SwidiFunctionDeclaration(
                name: "foo",
                returnType: SwidiInterface(
                  name: "void",
                  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                  referenceDeclarationPrefix:
                      SwidiReferenceDeclarationPrefix.empty,
                  nullabilitySuffix: SwidiNullabilitySuffix.none,
                ),
                optionalParameters: [
                  SwidiOptionalParameter(
                      declaration: SwidiDeclaration(
                          name: "baz",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                ],
                positionalParameters: [
                  SwidiPositionalParameter(
                      declaration: SwidiDeclaration(
                          name: "bar",
                          type: SwidiInterface(
                            name: "int",
                            libraryScopePrefix: SwidiLibraryScopePrefix.empty,
                            referenceDeclarationPrefix:
                                SwidiReferenceDeclarationPrefix.empty,
                            nullabilitySuffix: SwidiNullabilitySuffix.none,
                          ))),
                ],
                namedParameters: [],
              )
            ]),
      ],
    );
  }, tags: "swid");
}
