import 'entities/package_request.dart';
import 'factory/provider_factory.dart';
import 'models/package_provider.dart';


void main(List<String> arguments) async {
  final ProviderFactory? factory = null; 
  final PackageProvider provider = factory!.createProvider();

  final name  = 'pac';
  final version = '1.1';
  final package = PackageRequest(name, version); 
  
  final response = await provider.getPackage(package);
}
