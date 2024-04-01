class Rectangle {
  // Attributs
  var longueur: Double
  var largeur: Double

  // Compteur de rectangles
  static var nbRectangles = 0

  // Initialisation
  init(longueur: Double, largeur: Double) {
    self.longueur = longueur
    self.largeur = largeur
    Rectangle.nbRectangles += 1
  }

  // Méthodes
  func perimeter() -> Double {
    return 2 * (longueur + largeur)
  }

  func area() -> Double {
    return longueur * largeur
  }
}

// Test
var rectangles = [
  Rectangle(longueur: 3.0, largeur: 4.0),
  Rectangle(longueur: 5.0, largeur: 2.0),
  Rectangle(longueur: 1.0, largeur: 8.0)
]

// Affichage du nombre de rectangles
print("Nombre de rectangles créés : \(Rectangle.nbRectangles)")

// Tri par surface ou périmètre (à implémenter)

// Affichage des informations
for rectangle in rectangles {
  print("Rectangle : longueur = \(rectangle.longueur), largeur = \(rectangle.largeur)")
  print("Surface = \(rectangle.area())")
  print("Périmètre = \(rectangle.perimeter())")
}
