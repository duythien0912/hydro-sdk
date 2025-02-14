import 'package:code_builder/code_builder.dart'
    show DartEmitter, Parameter, refer, literalString, Method, Code;

import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartClassTranslationUnit.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class DartBarrelLoadNamespaceSymbolDeclaration {
  final BarrelSpec barrelSpec;

  DartBarrelLoadNamespaceSymbolDeclaration({@required this.barrelSpec});
  String toDartSource() => DartFormatter().format(Method((m) => m
    ..name = "load${barrelSpec.name}"
    ..returns = refer("void")
    ..optionalParameters.addAll([
      Parameter((p) => p
        ..annotations.add(refer("required"))
        ..named = true
        ..name = "hydroState"
        ..type = refer("HydroState")),
      barrelSpec.isTopLevel()
          ? Parameter((p) => p
            ..annotations.add(refer("required"))
            ..named = true
            ..name = "context"
            ..type = refer("Context"))
          : Parameter((p) => p
            ..annotations.add(refer("required"))
            ..named = true
            ..name = "table"
            ..type = refer("HydroTable")),
    ])
    ..body = Code([
      refer("HydroTable")
          .call([])
          .assignFinal(barrelSpec.name)
          .statement
          .accept(DartEmitter())
          .toString(),
      barrelSpec.isTopLevel()
          ? refer("context")
              .property("env")
              .index(literalString(barrelSpec.name))
              .assign(refer(barrelSpec.name))
              .statement
              .accept(DartEmitter())
              .toString()
          : refer("table")
              .index(literalString(barrelSpec.name))
              .assign(refer(barrelSpec.name))
              .statement
              .accept(DartEmitter())
              .toString(),
      ...barrelSpec.members
          .where((x) => x.name != "_internal")
          .where((x) => x.when(
                fromSwidClass: (val) =>
                    requiresDartClassTranslationUnit(swidClass: val),
                fromSwidEnum: (_) => true,
                fromBarrelSpec: (_) => true,
              ))
          .map((x) => refer(x.when(
                fromSwidClass: (val) =>
                    "load${transformToPascalCase(str: val.name)}",
                fromSwidEnum: (val) =>
                    "load${transformToPascalCase(str: val.identifier)}",
                fromBarrelSpec: (val) => "load${val.name}",
              ))
                  .call([], {
                    "table": refer(barrelSpec.name),
                    "hydroState": refer("hydroState"),
                  })
                  .statement
                  .accept(DartEmitter())
                  .toString())
          .toList()
    ].join("\n"))).accept(DartEmitter()).toString());
}
