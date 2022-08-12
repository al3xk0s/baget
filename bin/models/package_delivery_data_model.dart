import '../entities/package_request.dart';

abstract class PackageDeliveryDataModel {
  Uri getPathOfPackage(PackageRequest request);
}