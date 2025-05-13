import 'dart:ffi';

import '../platform.dart';
import 'bionic.dart';

mixin BionicErrnoMixin on PlatformLibC {
  @override
  int get errno => bionic.errno().value;

  @override
  set errno(int errno) => bionic.errno().value = errno;
}
