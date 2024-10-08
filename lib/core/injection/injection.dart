import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/features/features.dart';

class Injection {
  static final _getIt = GetIt.instance;

  static final supabase = _getIt<SupaClient>();

  static final restApiClient = _getIt<RestApiClient>();

  static final env = _getIt<Env>();

  static final ipService = _getIt<IpService>();

  static final locationService = _getIt<LocationService>();

  ///[isSkipSupabase] is used to skip the initialization of Supabase
  ///(can be used for testing purposes or when Supabase is not needed)
  static Future<void> setup({bool useSupabase = false}) async {
    //Must always be registered first
    //because other classes depend on it
    final env = Env(env: dotenv);
    await env.load();
    _getIt.registerSingleton(env);

    final restApiClient = RestApiClient(_getIt.get());
    restApiClient.init();
    _getIt.registerSingleton(restApiClient);

    if (useSupabase) {
      final supabase = SupaClient(_getIt.get());
      await supabase.initialize();
      _getIt.registerSingleton(supabase);
    }

    _getIt.registerLazySingleton(() => IpService(_getIt.get()));

    _getIt.registerLazySingleton(() => LocationService());
  }
}
