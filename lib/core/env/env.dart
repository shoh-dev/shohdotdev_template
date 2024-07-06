import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
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

  Future<void> load() async {
    await env.load();
  }

  String get apiBaseUrl => _get("API_BASE_URL")!;

  String get supabaseUrl => _get("SUPABASE_URL")!;

  String get supabaseAnonKey => _get("SUPABASE_ANON_KEY")!;
}
