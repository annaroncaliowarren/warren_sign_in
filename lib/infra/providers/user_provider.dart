
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final nameControllerProvider = StateProvider<TextEditingController>((ref) => TextEditingController());
final emailControllerProvider = StateProvider<TextEditingController>((ref) => TextEditingController());
final passwordControllerProvider = StateProvider<TextEditingController>((ref) => TextEditingController());
final confirmPasswordControllerProvider = StateProvider<TextEditingController>((ref) => TextEditingController());