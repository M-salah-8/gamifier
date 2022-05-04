// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/auth/sign_in_form/sign_in_or_up_form_bloc.dart' as _i12;
import 'application/friends/friend_request/friend_request_bloc.dart' as _i14;
import 'application/friends/friend_request/friend_search/friend_search_bloc.dart'
    as _i16;
import 'application/friends/friend_request_watcher/friend_request_watcher_bloc.dart'
    as _i15;
import 'application/friends/friend_watcher/friend_watcher_bloc.dart' as _i17;
import 'application/game/game_actor/game_actor_bloc.dart' as _i18;
import 'application/game/game_adding_friend/game_adding_friend_bloc.dart'
    as _i19;
import 'application/game/game_detail/game_detail_bloc.dart' as _i20;
import 'application/game/game_editing/game_editing_bloc.dart' as _i21;
import 'application/game/game_getter/game_getter_bloc.dart' as _i22;
import 'application/game/game_score/game_score_bloc.dart' as _i23;
import 'application/game/game_watcher/game_watcher_bloc.dart' as _i24;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/friend_request/i_friend_request_repository.dart' as _i8;
import 'domain/game/i_game_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i25;
import 'infrastructure/friend_request.dart/friend_request_repository.dart'
    as _i9;
import 'infrastructure/game/game_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IFriendRequestRepository>(
      () => _i9.FriendRequestRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IGameRepository>(
      () => _i11.GameRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.SignInOrUpFormBloc>(
      () => _i12.SignInOrUpFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.FriendRequestBloc>(
      () => _i14.FriendRequestBloc(get<_i8.IFriendRequestRepository>()));
  gh.factory<_i15.FriendRequestWatcherBloc>(
      () => _i15.FriendRequestWatcherBloc(get<_i8.IFriendRequestRepository>()));
  gh.factory<_i16.FriendSearchBloc>(
      () => _i16.FriendSearchBloc(get<_i8.IFriendRequestRepository>()));
  gh.factory<_i17.FriendWatcherBloc>(
      () => _i17.FriendWatcherBloc(get<_i8.IFriendRequestRepository>()));
  gh.factory<_i18.GameActorBloc>(
      () => _i18.GameActorBloc(get<_i10.IGameRepository>()));
  gh.factory<_i19.GameAddingFriendBloc>(
      () => _i19.GameAddingFriendBloc(get<_i10.IGameRepository>()));
  gh.factory<_i20.GameDetailBloc>(
      () => _i20.GameDetailBloc(get<_i10.IGameRepository>()));
  gh.factory<_i21.GameEditingBloc>(
      () => _i21.GameEditingBloc(get<_i10.IGameRepository>()));
  gh.factory<_i22.GameGetterBloc>(
      () => _i22.GameGetterBloc(get<_i10.IGameRepository>()));
  gh.factory<_i23.GameScoreBloc>(
      () => _i23.GameScoreBloc(get<_i10.IGameRepository>()));
  gh.factory<_i24.GameWatcherBloc>(
      () => _i24.GameWatcherBloc(get<_i10.IGameRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
