import 'package:equatable/equatable.dart';

abstract class RouterState extends Equatable {
  const RouterState();

  @override
  List<Object?> get props => [];
}

class HomeState extends RouterState {
  final String? pageContent;

  const HomeState(this.pageContent);

  @override
  List<Object?> get props => [pageContent];
}

class AdsState extends RouterState {
  final String? pageContent;

  const AdsState(this.pageContent);

  @override
  List<Object?> get props => [pageContent];
}

class FavoriteState extends RouterState {
  final String? pageContent;

  const FavoriteState(this.pageContent);

  @override
  List<Object?> get props => [pageContent];
}

class ProfileState extends RouterState {
  final String? pageContent;

  const ProfileState(this.pageContent);

  @override
  List<Object?> get props => [pageContent];
}

class DetailsState extends RouterState {
  final String? pageContent;

  const DetailsState(this.pageContent);

  @override
  List<Object?> get props => [pageContent];
}
