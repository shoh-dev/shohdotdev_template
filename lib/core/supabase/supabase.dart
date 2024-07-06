import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/utils/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupaClient {
  late final Supabase supabase;
  SupaClient(this.env);

  final Env env;

  Future<void> initialize() async {
    final sb = await Supabase.initialize(
      url: env.supabaseUrl,
      anonKey: env.supabaseAnonKey,
      debug: kDebugMode,
    );
    supabase = sb;
    logger("Supabase initialized");
  }
}
