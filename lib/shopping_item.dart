class ShoppingItem {
  late String name;
  late String department;
  late int amount;
  String id;

  ShoppingItem(
      {this.name = "", this.department = "", this.amount = 0, this.id = "",});

  Map<String, dynamic> toJSON() {
    return {
      'name': name,
      'department': department,
      'amount': amount,
    };
  }

  ShoppingItem.fromJSON(Map<String, dynamic> json, String documentID)
      : this(
            name: json['name']! as String,
            department: json['department']! as String,
            amount: json['amount']! as int,
            id: documentID);
}
