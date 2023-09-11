import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:viveiromobile/models/user_model.dart';

part 'user_repository.g.dart';

@RestApi(baseUrl: 'http://192.168.56.1:8080')
abstract class UserRepository {
  factory UserRepository(Dio dio, {String baseUrl}) = _UserRepository;

  @GET('/arvoreMatriz/find/all')
  Future<List<UserModel>> findAll();

  @GET('/arvoreMatriz/find/{id}')
  Future<UserModel> findById(@Path('id') String id);

  @POST('/arvoreMatriz/save')
  Future<void> save(@Body() UserModel user);

  @POST('/arvoreMatriz/update')
  Future<void> update(@Body() UserModel user);
}
