// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

class HomeState extends Equatable {
  final ItemDrawerEnum item;

  const HomeState({
    this.item = ItemDrawerEnum.introduce,
  });

  @override
  List<Object?> get props => [
        item,
      ];

  HomeState copyWith({
    ItemDrawerEnum? item,
  }) {
    return HomeState(
      item: item ?? this.item,
    );
  }
}
