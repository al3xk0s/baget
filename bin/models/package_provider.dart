import '../entities/package_request.dart';
import '../entities/packate_response.dart';
import 'package_delivery_data_model.dart';
import 'package_info_model.dart';

abstract class PackageProvider {
  Future<PackageResponse> getPackage(PackageRequest request);
}

abstract class PackageProviderAbstract implements PackageProvider {
  final PackageInfoModel packagesInfoModel;
  final PackageDeliveryDataModel deliveryDataModel;

  PackageProviderAbstract(this.packagesInfoModel, this.deliveryDataModel);
}