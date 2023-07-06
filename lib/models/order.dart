class Order {
  final String id;
  final String userId;
  final String pharmacyId;
  final List<String> medicationIds;
  final String status; // "pending", "ready", or "completed"

  Order({
    required this.id,
    required this.userId,
    required this.pharmacyId,
    required this.medicationIds,
    required this.status,
  });
}
