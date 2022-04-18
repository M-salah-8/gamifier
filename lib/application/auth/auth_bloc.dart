import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/auth/i_auth_facade.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(authCheckedRequist: (_) async {
        final user = await _authFacade.getSignedInUser();
        user.fold(() => emit(const AuthState.unAuthenticated()), (currentUser) {
          emit(AuthState.authenticated(
              GamifierUserPrimitive.fromDomain(currentUser)));
        });
      }, signedOut: (_) async {
        await _authFacade.signOut();
        emit(const AuthState.unAuthenticated());
      });
    });
  }
}
