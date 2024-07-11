import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shohdotdev_template/core/env/env_repo.dart';

class Env implements EnvRepository {
  Env({required this.env});

  final DotEnv env;

  //Can forucefully set
  final bool _isDebug = kDebugMode;

  String? _get(String key) {
    String k = key;
    if (_isDebug) {
      k += "_DEV";
    }

    final value = env.env[k];
    if (value == null) {
      throw Exception("Env key $key not found");
    }
    return value;
  }

  @override
  Future<void> load() async {
    await env.load();
  }

  @override
  String get apiBaseUrl => _get("API_BASE_URL")!;

  @override
  String get supabaseUrl => _get("SUPABASE_URL")!;

  @override
  String get supabaseAnonKey => _get("SUPABASE_ANON_KEY")!;
}
