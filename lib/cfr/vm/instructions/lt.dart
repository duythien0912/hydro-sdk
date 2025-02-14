import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void lt(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  if (Context.checkLT(frame.RK(B), frame.RK(C),
          hydroState: frame.context.hydroState) ==
      (A != 0)) {
    frame.programCounter += frame.getNextJump() + 1;
  } else {
    frame.programCounter++;
  }
}
