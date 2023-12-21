// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'landing_bloc.dart';

class LandingState extends Equatable {
  final Duration remainingTime;
  final bool isChristmas;

  LandingState({
    this.remainingTime = Duration.zero,
    this.isChristmas = false,
  });

  @override
  List<Object?> get props => [
        remainingTime,
        isChristmas,
      ];

  LandingState copyWith({
    Duration? remainingTime,
    bool? isChristmas,
  }) {
    return LandingState(
      remainingTime: remainingTime ?? this.remainingTime,
      isChristmas: isChristmas ?? this.isChristmas,
    );
  }
}
