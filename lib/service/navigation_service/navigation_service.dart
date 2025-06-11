import 'package:go_router/go_router.dart';

class NavigationService {
  late StatefulNavigationShell _shell;

  void setShell(StatefulNavigationShell shell) {
    _shell = shell;
  }

  StatefulNavigationShell get shell => _shell;

  void goToBranch(int index) {
    _shell.goBranch(index);
  }
}
