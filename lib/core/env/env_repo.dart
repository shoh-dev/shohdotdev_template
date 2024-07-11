abstract class EnvRepository {
  Future<void> load();
  String get apiBaseUrl;
  String get supabaseUrl;
  String get supabaseAnonKey;
}
