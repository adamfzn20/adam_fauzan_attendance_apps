import 'package:equatable/equatable.dart';

enum AppType { INITIAL, UNAUTHENTICATED, LOAD, AUTHENTICATED }

class AuthState extends Equatable {
  final AppType appStatus;

  const AuthState({this.appStatus = AppType.INITIAL});

  AuthState copyWith({
    AppType? appStatus,
  }) {
    return AuthState(
      appStatus: appStatus ?? this.appStatus,
    );
  }

  @override
  List<Object?> get props => [appStatus];
}
