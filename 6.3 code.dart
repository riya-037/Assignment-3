// Enum example for Gender
enum Gender { male, female, others }

void main() {
  // Printing all enum values
  print('All Genders:');
  for (var gender in Gender.values) {
    print(gender.name);
  }
}
