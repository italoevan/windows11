
import 'package:windows_11/routes/app_routes.dart';
import 'package:windows_11/ui/pages/workspace.dart';
import 'package:windows_11/ui/theme/app_theme.dart';
import 'package:get/get.dart';

class Settings {
  static GetMaterialApp materialApp = GetMaterialApp(
    initialRoute: Routes.home,
    home: Workspace(),
    theme: AppThemes.basicTheme,
  );
}
