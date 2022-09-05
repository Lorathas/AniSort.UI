import 'package:grpc/grpc.dart';

class GrpcService {
  static Future<ClientChannel> init() async {
    return ClientChannel("localhost", port: 5000, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}