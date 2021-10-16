import 'dart:convert';

class BreedModel {
  final int? adaptability;
  final int? affection_level;
  final String? alt_names;
  final String? cfa_url;
  final int? child_friendly;
  final String? country_code;
  final String? country_codes;
  final String? description;
  final int? dog_friendly;
  final int? energy_level;
  final int? experimental;
  final int? grooming;
  final int? hairless;
  final int? health_issues;
  final int? hypoallergenic;
  final String? id;
  final Image? image;
  final int? indoor;
  final int? intelligence;
  final int? lap;
  final String? life_span;
  final String? name;
  final int? natural;
  final String? origin;
  final int? rare;
  final String? reference_image_id;
  final int? rex;
  final int? shedding_level;
  final int? short_legs;
  final int? social_needs;
  final int? stranger_friendly;
  final int? suppressed_tail;
  final String? temperament;
  final String? vcahospitals_url;
  final String? vetstreet_url;
  final int? vocalisation;
  final Weight? weight;
  final String? wikipedia_url;
  BreedModel({
    required this.adaptability,
    required this.affection_level,
    required this.alt_names,
    required this.cfa_url,
    required this.child_friendly,
    required this.country_code,
    required this.country_codes,
    required this.description,
    required this.dog_friendly,
    required this.energy_level,
    required this.experimental,
    required this.grooming,
    required this.hairless,
    required this.health_issues,
    required this.hypoallergenic,
    required this.id,
    required this.image,
    required this.indoor,
    required this.intelligence,
    required this.lap,
    required this.life_span,
    required this.name,
    required this.natural,
    required this.origin,
    required this.rare,
    required this.reference_image_id,
    required this.rex,
    required this.shedding_level,
    required this.short_legs,
    required this.social_needs,
    required this.stranger_friendly,
    required this.suppressed_tail,
    required this.temperament,
    required this.vcahospitals_url,
    required this.vetstreet_url,
    required this.vocalisation,
    required this.weight,
    required this.wikipedia_url,
  });

  BreedModel copyWith({
    int? adaptability,
    int? affection_level,
    String? alt_names,
    String? cfa_url,
    int? child_friendly,
    String? country_code,
    String? country_codes,
    String? description,
    int? dog_friendly,
    int? energy_level,
    int? experimental,
    int? grooming,
    int? hairless,
    int? health_issues,
    int? hypoallergenic,
    String? id,
    Image? image,
    int? indoor,
    int? intelligence,
    int? lap,
    String? life_span,
    String? name,
    int? natural,
    String? origin,
    int? rare,
    String? reference_image_id,
    int? rex,
    int? shedding_level,
    int? short_legs,
    int? social_needs,
    int? stranger_friendly,
    int? suppressed_tail,
    String? temperament,
    String? vcahospitals_url,
    String? vetstreet_url,
    int? vocalisation,
    Weight? weight,
    String? wikipedia_url,
  }) {
    return BreedModel(
      adaptability: adaptability ?? this.adaptability,
      affection_level: affection_level ?? this.affection_level,
      alt_names: alt_names ?? this.alt_names,
      cfa_url: cfa_url ?? this.cfa_url,
      child_friendly: child_friendly ?? this.child_friendly,
      country_code: country_code ?? this.country_code,
      country_codes: country_codes ?? this.country_codes,
      description: description ?? this.description,
      dog_friendly: dog_friendly ?? this.dog_friendly,
      energy_level: energy_level ?? this.energy_level,
      experimental: experimental ?? this.experimental,
      grooming: grooming ?? this.grooming,
      hairless: hairless ?? this.hairless,
      health_issues: health_issues ?? this.health_issues,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      id: id ?? this.id,
      image: image ?? this.image,
      indoor: indoor ?? this.indoor,
      intelligence: intelligence ?? this.intelligence,
      lap: lap ?? this.lap,
      life_span: life_span ?? this.life_span,
      name: name ?? this.name,
      natural: natural ?? this.natural,
      origin: origin ?? this.origin,
      rare: rare ?? this.rare,
      reference_image_id: reference_image_id ?? this.reference_image_id,
      rex: rex ?? this.rex,
      shedding_level: shedding_level ?? this.shedding_level,
      short_legs: short_legs ?? this.short_legs,
      social_needs: social_needs ?? this.social_needs,
      stranger_friendly: stranger_friendly ?? this.stranger_friendly,
      suppressed_tail: suppressed_tail ?? this.suppressed_tail,
      temperament: temperament ?? this.temperament,
      vcahospitals_url: vcahospitals_url ?? this.vcahospitals_url,
      vetstreet_url: vetstreet_url ?? this.vetstreet_url,
      vocalisation: vocalisation ?? this.vocalisation,
      weight: weight ?? this.weight,
      wikipedia_url: wikipedia_url ?? this.wikipedia_url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adaptability': adaptability,
      'affection_level': affection_level,
      'alt_names': alt_names,
      'cfa_url': cfa_url,
      'child_friendly': child_friendly,
      'country_code': country_code,
      'country_codes': country_codes,
      'description': description,
      'dog_friendly': dog_friendly,
      'energy_level': energy_level,
      'experimental': experimental,
      'grooming': grooming,
      'hairless': hairless,
      'health_issues': health_issues,
      'hypoallergenic': hypoallergenic,
      'id': id,
      'image': image?.toMap(),
      'indoor': indoor,
      'intelligence': intelligence,
      'lap': lap,
      'life_span': life_span,
      'name': name,
      'natural': natural,
      'origin': origin,
      'rare': rare,
      'reference_image_id': reference_image_id,
      'rex': rex,
      'shedding_level': shedding_level,
      'short_legs': short_legs,
      'social_needs': social_needs,
      'stranger_friendly': stranger_friendly,
      'suppressed_tail': suppressed_tail,
      'temperament': temperament,
      'vcahospitals_url': vcahospitals_url,
      'vetstreet_url': vetstreet_url,
      'vocalisation': vocalisation,
      'weight': weight?.toMap(),
      'wikipedia_url': wikipedia_url,
    };
  }

  factory BreedModel.fromMap(Map<String, dynamic> map) {
    return BreedModel(
      adaptability: map['adaptability']?.toInt(),
      affection_level: map['affection_level']?.toInt(),
      alt_names: map['alt_names'],
      cfa_url: map['cfa_url'],
      child_friendly: map['child_friendly']?.toInt(),
      country_code: map['country_code'],
      country_codes: map['country_codes'],
      description: map['description'],
      dog_friendly: map['dog_friendly']?.toInt(),
      energy_level: map['energy_level']?.toInt(),
      experimental: map['experimental']?.toInt(),
      grooming: map['grooming']?.toInt(),
      hairless: map['hairless']?.toInt(),
      health_issues: map['health_issues']?.toInt(),
      hypoallergenic: map['hypoallergenic']?.toInt(),
      id: map['id'],
      image: map['image'] != null ? Image.fromMap(map['image']) : null,
      indoor: map['indoor']?.toInt(),
      intelligence: map['intelligence']?.toInt(),
      lap: map['lap']?.toInt(),
      life_span: map['life_span'],
      name: map['name'],
      natural: map['natural']?.toInt(),
      origin: map['origin'],
      rare: map['rare']?.toInt(),
      reference_image_id: map['reference_image_id'],
      rex: map['rex']?.toInt(),
      shedding_level: map['shedding_level']?.toInt(),
      short_legs: map['short_legs']?.toInt(),
      social_needs: map['social_needs']?.toInt(),
      stranger_friendly: map['stranger_friendly']?.toInt(),
      suppressed_tail: map['suppressed_tail']?.toInt(),
      temperament: map['temperament'],
      vcahospitals_url: map['vcahospitals_url'],
      vetstreet_url: map['vetstreet_url'],
      vocalisation: map['vocalisation']?.toInt(),
      weight: map['weight'] != null ? Weight.fromMap(map['weight']) : null,
      wikipedia_url: map['wikipedia_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BreedModel.fromJson(String source) =>
      BreedModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Brandmodel(adaptability: $adaptability, affection_level: $affection_level, alt_names: $alt_names, cfa_url: $cfa_url, child_friendly: $child_friendly, country_code: $country_code, country_codes: $country_codes, description: $description, dog_friendly: $dog_friendly, energy_level: $energy_level, experimental: $experimental, grooming: $grooming, hairless: $hairless, health_issues: $health_issues, hypoallergenic: $hypoallergenic, id: $id, image: $image, indoor: $indoor, intelligence: $intelligence, lap: $lap, life_span: $life_span, name: $name, natural: $natural, origin: $origin, rare: $rare, reference_image_id: $reference_image_id, rex: $rex, shedding_level: $shedding_level, short_legs: $short_legs, social_needs: $social_needs, stranger_friendly: $stranger_friendly, suppressed_tail: $suppressed_tail, temperament: $temperament, vcahospitals_url: $vcahospitals_url, vetstreet_url: $vetstreet_url, vocalisation: $vocalisation, weight: $weight, wikipedia_url: $wikipedia_url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BreedModel &&
        other.adaptability == adaptability &&
        other.affection_level == affection_level &&
        other.alt_names == alt_names &&
        other.cfa_url == cfa_url &&
        other.child_friendly == child_friendly &&
        other.country_code == country_code &&
        other.country_codes == country_codes &&
        other.description == description &&
        other.dog_friendly == dog_friendly &&
        other.energy_level == energy_level &&
        other.experimental == experimental &&
        other.grooming == grooming &&
        other.hairless == hairless &&
        other.health_issues == health_issues &&
        other.hypoallergenic == hypoallergenic &&
        other.id == id &&
        other.image == image &&
        other.indoor == indoor &&
        other.intelligence == intelligence &&
        other.lap == lap &&
        other.life_span == life_span &&
        other.name == name &&
        other.natural == natural &&
        other.origin == origin &&
        other.rare == rare &&
        other.reference_image_id == reference_image_id &&
        other.rex == rex &&
        other.shedding_level == shedding_level &&
        other.short_legs == short_legs &&
        other.social_needs == social_needs &&
        other.stranger_friendly == stranger_friendly &&
        other.suppressed_tail == suppressed_tail &&
        other.temperament == temperament &&
        other.vcahospitals_url == vcahospitals_url &&
        other.vetstreet_url == vetstreet_url &&
        other.vocalisation == vocalisation &&
        other.weight == weight &&
        other.wikipedia_url == wikipedia_url;
  }

  @override
  int get hashCode {
    return adaptability.hashCode ^
        affection_level.hashCode ^
        alt_names.hashCode ^
        cfa_url.hashCode ^
        child_friendly.hashCode ^
        country_code.hashCode ^
        country_codes.hashCode ^
        description.hashCode ^
        dog_friendly.hashCode ^
        energy_level.hashCode ^
        experimental.hashCode ^
        grooming.hashCode ^
        hairless.hashCode ^
        health_issues.hashCode ^
        hypoallergenic.hashCode ^
        id.hashCode ^
        image.hashCode ^
        indoor.hashCode ^
        intelligence.hashCode ^
        lap.hashCode ^
        life_span.hashCode ^
        name.hashCode ^
        natural.hashCode ^
        origin.hashCode ^
        rare.hashCode ^
        reference_image_id.hashCode ^
        rex.hashCode ^
        shedding_level.hashCode ^
        short_legs.hashCode ^
        social_needs.hashCode ^
        stranger_friendly.hashCode ^
        suppressed_tail.hashCode ^
        temperament.hashCode ^
        vcahospitals_url.hashCode ^
        vetstreet_url.hashCode ^
        vocalisation.hashCode ^
        weight.hashCode ^
        wikipedia_url.hashCode;
  }
}

class Image {
  final int? height;
  final String? id;
  final String? url;
  final int? width;
  Image({
    required this.height,
    required this.id,
    required this.url,
    required this.width,
  });

  Image copyWith({
    int? height,
    String? id,
    String? url,
    int? width,
  }) {
    return Image(
      height: height ?? this.height,
      id: id ?? this.id,
      url: url ?? this.url,
      width: width ?? this.width,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'height': height,
      'id': id,
      'url': url,
      'width': width,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      height: map['height']?.toInt(),
      id: map['id'],
      url: map['url'],
      width: map['width']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) => Image.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Image(height: $height, id: $id, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Image &&
        other.height == height &&
        other.id == id &&
        other.url == url &&
        other.width == width;
  }

  @override
  int get hashCode {
    return height.hashCode ^ id.hashCode ^ url.hashCode ^ width.hashCode;
  }
}

class Weight {
  final String? imperial;
  final String? metric;
  Weight({
    required this.imperial,
    required this.metric,
  });

  Weight copyWith({
    String? imperial,
    String? metric,
  }) {
    return Weight(
      imperial: imperial ?? this.imperial,
      metric: metric ?? this.metric,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory Weight.fromMap(Map<String, dynamic> map) {
    return Weight(
      imperial: map['imperial'],
      metric: map['metric'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weight.fromJson(String source) => Weight.fromMap(json.decode(source));

  @override
  String toString() => 'Weight(imperial: $imperial, metric: $metric)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Weight &&
        other.imperial == imperial &&
        other.metric == metric;
  }

  @override
  int get hashCode => imperial.hashCode ^ metric.hashCode;
}
