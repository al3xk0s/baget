import '../entities/package_info.dart';
import '../entities/package_request.dart';

abstract class PackageInfoModel {

  List<PackageInfo> getPackagesInfo();

  PackageInfo getPackageInfo(String name);

  bool packageExist(PackageRequest package);
}

class PackageInfoModelImpl implements PackageInfoModel {
  @override
  PackageInfo getPackageInfo(String name) {
    // TODO: implement getPackageInfo
    throw UnimplementedError();
  }

  @override
  List<PackageInfo> getPackagesInfo() {
    // TODO: implement getPackagesInfo
    throw UnimplementedError();
  }

  @override
  bool packageExist(PackageRequest package) {
    // TODO: implement packageExist
    throw UnimplementedError();
  }

}