void main() {
  List<double> nilai = [7, 5, 3, 5, 2, 1];

  double total = 0;
  for (var n in nilai) {
    total += n;
  }

  double rataRata = total / nilai.length;
  int rataRataBulat = rataRata.ceil();

  print('Rata-rata nilai: $rataRataBulat');
}
