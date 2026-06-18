// Layout
int screen = 50;
int padRight = 30;

// Abstract Class
abstract class ShippingService {
  String get serviceName;
  double calculateShippingCost(double weightKg, String destination);
  int estimateDeliveryDays(String destination);

  void printEstimate(double weightKg, String destination) {
    print("=" * screen);
    print('${"Service".padRight(padRight)}: $serviceName');
    print('${"Weight".padRight(padRight)}: $weightKg kg');
    print('${"Destination".padRight(padRight)}: $destination');
    print(
        '${"Cost".padRight(padRight)}: ${calculateShippingCost(weightKg, destination)}');
    print(
        '${"Delivery Days".padRight(padRight)}: ${estimateDeliveryDays(destination)} days');
  }
}

abstract class TrackableService {
  String trackPackage(String trackingNumber);
}

// JNE
class JNEService implements ShippingService, TrackableService {
  String get serviceName => 'JNE';
  double calculateShippingCost(double weightKg, String destination) =>
      weightKg * 12000;
  int estimateDeliveryDays(String destination) =>
      destination == 'Jakarta' ? 1 : 3;

  void printEstimate(double weightKg, String destination) {
    print("=" * screen);
    print('${"Service".padRight(padRight)}: $serviceName');
    print('${"Weight".padRight(padRight)}: $weightKg kg');
    print('${"Destination".padRight(padRight)}: $destination');
    print(
        '${"Cost".padRight(padRight)}: Rp. ${calculateShippingCost(weightKg, destination)}');
    print(
        '${"Delivery Days".padRight(padRight)}: ${estimateDeliveryDays(destination)} days');
  }

  String trackPackage(String trackingNumber) => "Tracking JNE : $trackingNumber";
}

// SiCepat
class SiCepatService implements ShippingService, TrackableService {
  String get serviceName => 'SiCepat';
  double calculateShippingCost(double weightKg, String destination) =>
      weightKg * 10000;
  int estimateDeliveryDays(String destination) => destination == 'Jakarta' ? 1 : 2;

  void printEstimate(double weightKg, String destination) {
    print("=" * screen);
    print('${"Service".padRight(padRight)}: $serviceName');
    print('${"Weight".padRight(padRight)}: $weightKg kg');
    print('${"Destination".padRight(padRight)}: $destination');
    print(
        '${"Cost".padRight(padRight)}: Rp. ${calculateShippingCost(weightKg, destination)}');
    print(
        '${"Delivery Days".padRight(padRight)}: ${estimateDeliveryDays(destination)} days');
  }

  String trackPackage(String trackingNumber) => "Tracking SiCepat : $trackingNumber";
}

// POS Indonesia
class POSIndonesiaService implements ShippingService {
  String get serviceName => 'POS Indonesia';
  double calculateShippingCost(double weightKg, String destination) => weightKg * 7000;
  int estimateDeliveryDays(String destination) => destination == 'Jakarta' ? 2 : 7;

  void printEstimate(double weightKg, String destination) {
    print("=" * screen);
    print('${"Service".padRight(padRight)}: $serviceName');
    print('${"Weight".padRight(padRight)}: $weightKg kg');
    print('${"Destination".padRight(padRight)}: $destination');
    print(
        '${"Cost".padRight(padRight)}: Rp. ${calculateShippingCost(weightKg, destination)}');
    print(
        '${"Delivery Days".padRight(padRight)}: ${estimateDeliveryDays(destination)}');
  }
}

class ShippingComparator {
  final List<ShippingService> services;
  ShippingComparator(this.services);
  void compareAll(double weight, String destination) {
    for (var service in services) {
      service.printEstimate(weight, destination);
    }
  }
}

void main() {
  ShippingComparator comparator = ShippingComparator([
    POSIndonesiaService(),
    JNEService(),
    SiCepatService(),
  ]);
  
  comparator.compareAll(10, 'Jakarta');

  print("\n===== Tracking =====");
  print(JNEService().trackPackage("JNE001"));
  print(SiCepatService().trackPackage("SCP001"));
}