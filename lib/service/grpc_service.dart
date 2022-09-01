import 'package:grpc/grpc.dart';

class GrpcService {
  static Future<ClientChannel> init() async {
    return ClientChannel("localhost", port: 8080, options: const ChannelOptions());
  }
}