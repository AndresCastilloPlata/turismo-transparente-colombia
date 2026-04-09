class Department {
  final int id;
  final String name;
  final String description;
  final int population;

  // Usamos 'const' en el constructor para garantizar la inmutabilidad
  // y optimizar el rendimiento en memoria.
  const Department({
    required this.id,
    required this.name,
    required this.description,
    required this.population,
  });

  Department copyWith({
    int? id,
    String? name,
    String? description,
    int? population,
  }) {
    return Department(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      population: population ?? this.population,
    );
  }
}
