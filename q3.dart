enum Gender { male, female, others }

void main() {
  print("Genders:");
  for (var g in Gender.values) {
    print(g);
  }
}
