import 'package:go_router/go_router.dart';

void customNavigation(context, String path) {
  GoRouter.of(context).push(path);
}

void customReplacementNavigation(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}


// الpush بتبني الscreen فوق الscreen لكن مش بتدمر على عكس الpush replacement فاحنا هنستخدمها عشان لما اجي اخرج من التطبيق مش يرجع على كل اللي فات لا يخرج على طول 