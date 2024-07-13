import 'package:flutter_test/flutter_test.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shohdotdev_template/core/env/env.dart';

import '../../dummy_data.dart';
@GenerateNiceMocks([MockSpec<Env>()])
import 'env_test.mocks.dart';

void main() async {
  late MockEnv env;

  setUpAll(() async {
    env = MockEnv();
  });

  group("should load '.env' strings", () {
    test(
      "must call load methdo and return void",
      () async {
        when(env.load()).thenAnswer((_) async {
          return await Future.value();
        });

        expect(env.load, returnsNormally);
      },
    );

    //load method fails
    test(
      "load method fails",
      () async {
        when(env.load()).thenThrow(Exception("Failed to load .env file"));

        expect(env.load, throwsException);
      },
    );

    //should load supabase url from .env
    test(
      "should load supabase url as 192.168.1.4",
      () async {
        when(env.supabaseUrl).thenReturn(DummyData.supabaseUrl);

        expect(env.supabaseUrl, DummyData.supabaseUrl);
      },
    );

    //should load supabase anon key from .env
    test(
      "should load supabase anon key as ejvdfiuyqkfhiouhf_23xjhi3hkj",
      () async {
        when(env.supabaseAnonKey).thenReturn(DummyData.supabaseAnonKey);

        expect(env.supabaseAnonKey, DummyData.supabaseAnonKey);
      },
    );

    //should load api base url
    test(
      "should load api base url as http://localhost:3000",
      () async {
        when(env.apiBaseUrl).thenReturn(DummyData.apiBaseUrl);

        expect(env.apiBaseUrl, DummyData.apiBaseUrl);
      },
    );
  });
}
