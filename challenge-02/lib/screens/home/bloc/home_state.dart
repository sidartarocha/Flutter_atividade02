part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState{}

class HomeErrorState extends HomeState{
  final String errMsg;

  HomeErrorState({required this.errMsg});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeLoadedState extends HomeState{
  final List<Plantas> listPlantas;

  const HomeLoadedState({this.listPlantas = const <Plantas>[]});

  @override
  List<Object?> get props => [listPlantas];

}