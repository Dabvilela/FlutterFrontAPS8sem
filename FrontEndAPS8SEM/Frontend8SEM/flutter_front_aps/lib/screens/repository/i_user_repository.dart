import '../model/Residuos.dart';

abstract class IUserRepository{
  Future<List<Residuos?>> findModel();
}