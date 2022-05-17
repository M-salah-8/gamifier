// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_or_up_form_bloc.dart' as _i13;
import 'application/friends/friend_request/friend_request_bloc.dart' as _i15;
import 'application/friends/friend_request/friend_search/friend_search_bloc.dart'
    as _i17;
import 'application/friends/friend_request_watcher/friend_request_watcher_bloc.dart'
    as _i16;
import 'application/friends/friend_watcher/friend_watcher_bloc.dart' as _i18;
import 'application/game/flying_score/flying_score_bloc.dart' as _i5;
import 'application/game/game_actor/game_actor_bloc.dart' as _i19;
import 'application/game/game_adding_friend/game_adding_friend_bloc.dart'
    as _i20;
import 'application/game/game_detail/game_detail_bloc.dart' as _i21;
import 'application/game/game_editing/game_editing_bloc.dart' as _i22;
import 'application/game/game_getter/game_getter_bloc.dart' as _i23;
import 'application/game/game_score/game_score_bloc.dart' as _i24;
import 'application/game/game_watcher/game_watcher_bloc.dart' as _i25;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/friend_request/i_friend_request_repository.dart' as _i9;
import 'domain/game/i_game_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i26;
import 'infrastructure/friend_request.dart/friend_request_repository.dart'
    as _i10;
import 'infrastructure/game/game_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.factory<_i5.FlyingScoreBloc>(() => _i5.FlyingScoreBloc());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IFriendRequestRepository>(
      () => _i10.FriendRequestRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IGameRepository>(
      () => _i12.GameRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i13.SignInOrUpFormBloc>(
      () => _i13.SignInOrUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i15.FriendRequestBloc>(
      () => _i15.FriendRequestBloc(get<_i9.IFriendRequestRepository>()));
  gh.factory<_i16.FriendRequestWatcherBloc>(
      () => _i16.FriendRequestWatcherBloc(get<_i9.IFriendRequestRepository>()));
  gh.factory<_i17.FriendSearchBloc>(
      () => _i17.FriendSearchBloc(get<_i9.IFriendRequestRepository>()));
  gh.factory<_i18.FriendWatcherBloc>(
      () => _i18.FriendWatcherBloc(get<_i9.IFriendRequestRepository>()));
  gh.factory<_i19.GameActorBloc>(
      () => _i19.GameActorBloc(get<_i11.IGameRepository>()));
  gh.factory<_i20.GameAddingFriendBloc>(
      () => _i20.GameAddingFriendBloc(get<_i11.IGameRepository>()));
  gh.factory<_i21.GameDetailBloc>(
      () => _i21.GameDetailBloc(get<_i11.IGameRepository>()));
  gh.factory<_i22.GameEditingBloc>(
      () => _i22.GameEditingBloc(get<_i11.IGameRepository>()));
  gh.factory<_i23.GameGetterBloc>(
      () => _i23.GameGetterBloc(get<_i11.IGameRepository>()));
  gh.factory<_i24.GameScoreBloc>(
      () => _i24.GameScoreBloc(get<_i11.IGameRepository>()));
  gh.factory<_i25.GameWatcherBloc>(
      () => _i25.GameWatcherBloc(get<_i11.IGameRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}
