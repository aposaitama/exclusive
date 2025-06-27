import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final authRepo = locator<AuthRepository>();

  AccountBloc() : super(AccountState()) {
    on<GetUserDataEvent>(_getUserData);
    on<AuthenticateUserEvent>(_authenticateUser);
    on<LogoutUserEvent>(_logoutUser);
  }

  Future<void> _getUserData(
    GetUserDataEvent event,
    Emitter<AccountState> emit,
  ) async {
    final authToken = await authRepo.getToken();
    bool isAuthenticated = false;
    if (authToken != null && authToken.isNotEmpty) {
      isAuthenticated = true;
    }
    try {
      emit(
        state.copyWith(
          isAuthenticated: isAuthenticated,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _logoutUser(
    LogoutUserEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      await authRepo.logout();
      emit(
        state.copyWith(
          isAuthenticated: false,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _authenticateUser(
    AuthenticateUserEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isAuthenticated: true,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  // Future<void> _onPickImage(
  //   PickNewAvatarEvent event,
  //   Emitter<AccountState> emit,
  // ) async {
  //   try {
  //     final permissionStatus = await Permission.photos.request();
  //     // final mediaLibraryStatus = await Permission.mediaLibrary.request();
  //     final picker = ImagePicker();
  //     if (permissionStatus.isGranted) {
  //       final pickedImage = await picker.pickImage(source: ImageSource.gallery);

  //       if (pickedImage != null) {
  //         final appDir = await getApplicationDocumentsDirectory();

  //         final String newPath = '${appDir.path}${pickedImage.name}';

  //         final File newFile = await File(pickedImage.path).copy(newPath);

  //         emit(
  //           state.copyWith(
  //             newAvatarPath: newFile.path,
  //           ),
  //         );
  //       }
  //     } else {
  //       openAppSettings();
  //     }
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> _onEditUserData(
  //   EditUserDataEvent event,
  //   Emitter<AccountState> emit,
  // ) async {
  //   try {
  //     await userRepository.editUserData(
  //       avatarPath: state.newAvatarPath,
  //       username: state.newUsername,
  //     );

  //     add(
  //       const GetUserDataEvent(),
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // void _enterUsername(
  //   EnterNewUsernameEvent event,
  //   Emitter<AccountState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       newUsername: event.newUsername,
  //     ),
  //   );
  // }

  // void _clearState(
  //   ClearAccountStateEvent event,
  //   Emitter<AccountState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       newUsername: null,
  //       newAvatarPath: null,
  //     ),
  //   );
  // }

  // Future<void> _onToggleNotif(
  //   ToggleNotificationsEvent event,
  //   Emitter<AccountState> emit,
  // ) async {
  //   await _sharedPrefs.saveEnableNotificationsStatus(
  //     enableNotifications: !state.enableNotifications,
  //   );

  //   final currentNotifStatus =
  //       await _sharedPrefs.getEnableNotificationsStatus();

  //   emit(
  //     state.copyWith(
  //       enableNotifications: currentNotifStatus!,
  //     ),
  //   );
  // }

  // Future<void> _onToggleNotifSound(
  //   ToggleNotificationsSoundEvent event,
  //   Emitter<AccountState> emit,
  // ) async {
  //   await _sharedPrefs.saveSoundNotificationsStatus(
  //     enableNotificationsSound: !state.enableNotificationsSound,
  //   );

  //   final currentNotifSoundStatus =
  //       await _sharedPrefs.getSoundNotificationsStatus();

  //   emit(
  //     state.copyWith(
  //       enableNotificationsSound: currentNotifSoundStatus!,
  //     ),
  //   );
  // }
}
