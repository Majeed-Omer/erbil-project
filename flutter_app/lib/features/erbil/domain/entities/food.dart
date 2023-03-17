import 'package:equatable/equatable.dart';

class Food extends Equatable {
  final int? id;
  final String name;

  const Food({this.id, required this.name,});

  @override
  List<Object?> get props => [id, name];
}
