import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/core.dart';

void main() async {
  final Env env = Env(env: dotenv);

  setUpAll(() async {
    return await env.load();
  });

  group("should load '.env' strings", () {
    test(
      "should load supabase url",
      () async {
        expect(env.supabaseUrl, "http://127.0.0.1:54321");
      },
    );

    test(
      "should load supabase anon key",
      () async {
        expect(env.supabaseAnonKey,
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0");
      },
    );

    test(
      "should load api base url",
      () async {
        expect(env.apiBaseUrl, "http://localhost:3000");
      },
    );
  });
}
