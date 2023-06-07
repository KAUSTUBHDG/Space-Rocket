import 'package:dio/dio.dart';
import 'package:extraedge_assignment/common/network_constants.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:retrofit/retrofit.dart';
part 'api_request.g.dart';

@RestApi(baseUrl: NetworkConstants.getRockets)
abstract class ApiRequest {
  factory ApiRequest(Dio dio) = _ApiRequest;

  @GET("/rockets")
  Future<List<Temperatures>> getRockets();

  @GET("/rockets/{id}")
  Future<Temperatures> getRocketDetails(@Path("id") String id);
}
