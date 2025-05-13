import 'dart:ffi' as ffi;

import '../std/std.dart';
import 'errno.dart';
import 'ffigen.dart' as ffi;
import 'stat.dart';

final dylib = ffi.DynamicLibrary.process();
final bionic = ffi.BionicLibC(dylib);

class BionicLibC extends StdLibC
    with
        BionicErrnoMixin,
//        GnuGlobMixin,
        //       GnuFcntlMixin,
        //      GnuMacroMixin,
        //     GnuMmanMixin,
        //    GnuPwdMixin,
        BionicStatMixin
//    GnuSysinfoMixin,
//   GnuUnameMixin,
//  GnuUtmpxMixin {}
{
  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}
