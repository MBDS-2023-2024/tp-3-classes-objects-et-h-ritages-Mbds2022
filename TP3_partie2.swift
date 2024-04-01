// Fonction racine carrée
func racine(_ x: Double) -> Double {
  var estimation = 1.0
  while estimation * estimation < x {
    estimation = (estimation + x / estimation) / 2.0
  }
  return estimation
}

// Protocole Forme
protocol Forme {
  var aire: Double { get }
  var perimetre: Double { get }
}

// Classe Rectangle
class Rectangle: Forme {
  var longueur: Double
  var largeur: Double

  init(longueur: Double, largeur: Double) {
    self.longueur = longueur
    self.largeur = largeur
  }

  var aire: Double {
    return longueur * largeur
  }

  var perimetre: Double {
    return 2 * (longueur + largeur)
  }
}

// Classe Triangle
class Triangle: Forme {
  var base: Double
  var hauteur: Double

  init(base: Double, hauteur: Double) {
    self.base = base
    self.hauteur = hauteur
  }

  var aire: Double {
    return (base * hauteur) / 2
  }

  var perimetre: Double {
    let a = racine(base * base + hauteur * hauteur)
    return base + a + hauteur
  }
}

// Classe Cercle
class Cercle: Forme {
  var rayon: Double

  init(rayon: Double) {
    self.rayon = rayon
  }

  var aire: Double {
    return Double.pi * rayon * rayon
  }

  var perimetre: Double {
    return 2 * Double.pi * rayon
  }
}

// Fonction pour afficher les informations d'une forme
func afficherInfosForme(forme: Forme) {
  if let rectangle = forme as? Rectangle {
    print("Je suis un rectangle")
    print("Longueur : \(rectangle.longueur)")
    print("Largeur : \(rectangle.largeur)")
  } else if let cercle = forme as? Cercle {
    print("Je suis un cercle")
    print("Rayon : \(cercle.rayon)")
  } else if let triangle = forme as? Triangle {
    print("Je suis un triangle")
    print("Base : \(triangle.base)")
    print("Hauteur : \(triangle.hauteur)")
  }

  print("Aire : \(forme.aire)")
  print("Périmètre : \(forme.perimetre)")
}

// Exemple d'utilisation
var formes: [Forme] = [
  Cercle(rayon: 3.0),
  Rectangle(longueur: 5.0, largeur: 2.0),
  Cercle(rayon: 1.5),
  Rectangle(longueur: 1.0, largeur: 8.0),
  Triangle(base: 4.0, hauteur: 6.0),
  Rectangle(longueur: 5.0, largeur: 5.0), // Carré
]

for forme in formes {
  afficherInfosForme(forme: forme)
  print()
}
