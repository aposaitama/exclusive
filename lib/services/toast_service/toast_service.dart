import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

class ToastService {
  static void showError(String message) {
    BotToast.showCustomText(
      toastBuilder: (_) => Padding(
        padding: const EdgeInsets.only(
          top: 100,
          right: 100,
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
      onlyOne: true,
    );
  }
}
