import 'package:flutter/material.dart';
import 'package:fvm_go_router_builder/provider/bool_future.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fvm_go_router_builder/presentation/pages/admin_page.dart';
import 'package:fvm_go_router_builder/presentation/pages/home_page.dart';
import 'package:fvm_go_router_builder/presentation/pages/next_page.dart';

part 'router.g.dart';// ファイル名と同じ名前にして、.g.dartとつける
part 'home/home.dart';
part 'next/next.dart';
part 'admin/admin.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
      debugLogDiagnostics: true,
      routes: $appRoutes,// 自動生成されたファイルからパスを読み込む
      redirect: (context, state) {
        final isTrue = ref.watch(boolFutureProvider).value ?? false;
        // ログインしていない場合
        if(!isTrue) {
          return const HomeRoute().location;
        }

        // ログインしている場合。期待値がtrueだとNextPageに遷移
        return const AdminRoute().location;
      },
      // 404ページを指定
      errorPageBuilder: (context, state) {
        return const MaterialPage(
            child: Scaffold(
              body: Center(
                child: Text('Page not found'),
              ),
            ));
      });
}