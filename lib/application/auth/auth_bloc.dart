import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
          authCheckedRequist: (_) {
            final user = _authFacade.getSignedInUser();
            user.fold(() => emit(const AuthState.unAuthenticated()),
                (_) => emit(const AuthState.authenticated()));
          },
          signedOut: (_) async => await _authFacade.signOut());
    });
  }
}
