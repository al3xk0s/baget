import '../models/package_delivery_data_model.dart';
import '../models/package_info_model.dart';
import '../models/package_provider.dart';

abstract class ProviderFactory {
  PackageInfoModel createInfoModel();
  PackageDeliveryDataModel createDeliveryDataModel();
  PackageProvider createProvider();
}