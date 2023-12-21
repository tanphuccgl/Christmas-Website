// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "introduce_bloc.dart";

class IntroduceState extends Equatable {
  final bool isSelectA;
  final bool isSelectB;

  IntroduceState({this.isSelectA = false, this.isSelectB = false});
  @override
  List<Object?> get props => [
        isSelectA,
        isSelectB,
      ];

  IntroduceState copyWith({
    bool? isSelectA,
    bool? isSelectB,
  }) {
    return IntroduceState(
      isSelectA: isSelectA ?? this.isSelectA,
      isSelectB: isSelectB ?? this.isSelectB,
    );
  }
}
