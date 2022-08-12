enum PackageResponseStatus {
  ok
}

enum PackageSource {
  git
}

class PackageResponse {
  final String name;
  final String currentVersion;
  final String targetVersion;

  final PackageSource source;
  final PackageResponseStatus status;

  PackageResponse(
    this.name, 
    this.currentVersion, 
    this.targetVersion, 
    this.source, 
    this.status
  );
}