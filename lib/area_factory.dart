class Area {
  final int length;
  final int breadth;
  final int area;

  const Area._internal(this.length, this.breadth) : area = length * breadth;

  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      assert(length < 0, 'must be positive');
      assert(breadth < 0, 'must be positive');
    }
    return Area._internal(length, breadth);
  }
}
