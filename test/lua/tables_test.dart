import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state = HydroState();

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state).toString())
          .join("\t"));
    };

    List<String> expectedOutLines = [
      "1	12	123	1234	12345",
      "42",
      "420",
      "nil",
      "420",
      "69",
    ];

    var res = await state.doFile("lua/tables.hc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  }, tags: "lua");
}
