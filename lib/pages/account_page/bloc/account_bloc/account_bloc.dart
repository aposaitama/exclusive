import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';
import 'package:exclusive_web/services/user_service/user_service.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final authRepo = locator<AuthRepository>();
  final UserService _userService = locator<UserService>();

  AccountBloc() : super(AccountState()) {
    on<GetUserDataEvent>(_getUserData);
    on<AuthenticateUserEvent>(_authenticateUser);
    on<EditUserDataEvent>(_editUserData);
    on<LogoutUserEvent>(_logoutUser);
    on<AddUserAddressEvent>(_addAddress);
    on<GetUserAddressEvent>(_getAddress);
    on<SetDefaultUserAddressEvent>(_setDefaultAddress);
    on<CreateReviewEvent>(_createReview);
  }

  Future<void> _getUserData(
    GetUserDataEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      final authToken = await authRepo.getToken();
      bool isAuthenticated = false;
      if (authToken != null && authToken.isNotEmpty) {
        isAuthenticated = true;
        final userModel = await _userService.getUserData(
          authToken,
        );

        emit(
          state.copyWith(
            isAuthenticated: isAuthenticated,
            userInfo: userModel,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isAuthenticated: false,
          ),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _editUserData(
    EditUserDataEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      final authToken = await authRepo.getToken();

      if (authToken != null && authToken.isNotEmpty) {
        await _userService.updateUserData(
          authToken,
          state.userInfo!.id.toString(),
          event.data,
        );

        final userModel = await _userService.getUserData(
          authToken,
        );

        emit(
          state.copyWith(
            userInfo: userModel,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isAuthenticated: false,
          ),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _createReview(
    CreateReviewEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      if (state.userInfo == null) {
        emit(
          state.copyWith(
            createReviewStatus: CreateReviewStatus.failure,
          ),
        );
        emit(
          state.copyWith(
            createReviewStatus: CreateReviewStatus.initial,
          ),
        );
        return;
      }
      await _userService.createReview(
        event.productDocumentID,
        event.productID,
        event.reviewText,
        event.userName,
        state.userInfo!.id.toString(),
        event.rating,
        event.previusRating,
        event.previusRatingCount,
      );
      emit(state.copyWith(createReviewStatus: CreateReviewStatus.success));
      emit(state.copyWith(createReviewStatus: CreateReviewStatus.initial));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _addAddress(
    AddUserAddressEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      if (state.userInfo == null) return;
      await _userService.addUserAddress(
        event.firstName,
        event.lastName,
        event.streetAddress,
        event.city,
        event.phoneNumber,
        event.emailAddress,
        state.userInfo!.id.toString(),
      );
      final authToken = await authRepo.getToken();
      if (authToken != null && authToken.isNotEmpty) {
        final userModel = await _userService.getUserData(
          authToken,
        );

        emit(
          state.copyWith(
            userInfo: userModel,
          ),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _getAddress(
    GetUserAddressEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      if (state.userInfo == null) return;
      final addresses =
          await _userService.getUserAddress(state.userInfo!.id.toString());

      if (addresses.isNotEmpty) {
        emit(
          state.copyWith(
            userAddresses: addresses,
          ),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _setDefaultAddress(
    SetDefaultUserAddressEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      if (state.userInfo == null) return;
      if (state.userAddresses.isEmpty) return;

      String? previousAddressDocumentID;

      for (final address in state.userAddresses) {
        if (address.isDefault) {
          previousAddressDocumentID = address.documentId;
          break;
        }
      }

      if (previousAddressDocumentID != null &&
          previousAddressDocumentID != event.newAddressDocumentID) {
        await _userService.setDefaultValueAddress(
          previousAddressDocumentID,
          false,
        );
        await _userService.setDefaultValueAddress(
          event.newAddressDocumentID,
          true,
        );

        final addresses = await _userService.getUserAddress(
          state.userInfo!.id.toString(),
        );

        if (addresses.isNotEmpty) {
          emit(
            state.copyWith(
              userAddresses: addresses,
            ),
          );
        }
      }
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
}
