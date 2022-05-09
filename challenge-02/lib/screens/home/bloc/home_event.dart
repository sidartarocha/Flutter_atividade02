part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeLoadList extends HomeEvent{
  List<Plantas> listPlants;

  HomeLoadList({this.listPlants = const <Plantas>[]});

  @override
  List<Object?> get props => [listPlants];
}


class HomeUpdateList extends HomeEvent{
  final List<Plantas> listPlants;

  const HomeUpdateList({required this.listPlants});

  @override
  List<Object?> get props => [listPlants];
}

