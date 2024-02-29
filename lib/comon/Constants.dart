import 'package:first_app/Exercice.dart';

class Constants {
  static final exercices = [
    Exercice(
        'Ajout et suppression de noms',
        {
          'Créez une liste vide de noms': [
            '''List<String> noms = []; ''',
            '''List<String> fruits = List<String>();'''
          ],
          'Demandez à l\'utilisateur d\'ajouter 5 noms à la liste': [
            '''for (int i = 0; i < 5; i++) {
    stdout.write('Entrez le nom numéro \${i + 1}: ');
    String nom = stdin.readLineSync()!;
    noms.add(nom);
  }'''
          ],
          'Supprimez le deuxième nom de la liste': [
            '''if (noms.length >= 2) {
    noms.removeAt(1); 
    print('Le deuxième nom a été supprimé avec succès.');
  } else {
    print('Il n\'y a pas assez de noms dans la liste pour supprimer le deuxième nom.');
  }'''
          ],
          'Affichez la liste mise à jour': [
            '''print('Liste après suppression du deuxième nom : \$noms');'''
          ]
        },
        '/Mohammed-Fares-Git/drat-basics/blob/main/bin/exercices/1.dart'),
    Exercice(
        'Calcul de la somme',
        {
          'Créez une liste de nombres entiers': [
            '''List<int> nombres = [1, 2, 3, 4, 5];'''
          ],
          'Calculez la somme de tous les nombres de la liste': [
            '''int somme = nombres.reduce((value, element) => value + element);'''
          ],
          'Affichez la somme': [
            '''print('La somme des nombres est : \$somme');'''
          ]
        },
        ''),
    Exercice(
        'Multiples de 3',
        {
          'Créez une liste de nombres de 1 à 20': [
            '''List<int> nombres = List.generate(20, (index) => index + 1);'''
          ],
          'Affichez tous les nombres de la liste qui sont des multiples de 3': [
            '''List<int> multiplesDeTrois = nombres.where((nombre) => nombre % 3 == 0).toList();'''
          ]
        },
        ''),
    Exercice(
        'Gestion des stagiaires',
        {
          'Créez une Map vide pour stocker les notes des stagiaires (nom et note)':
              ['''Map<String, double> notesStagiaires = {};'''],
          'Ajoutez les notes de trois stagiaires avec leurs noms respectifs': [
            '''notesStagiaires['Alice'] = 15.5;
  notesStagiaires['Bob'] = 12.0;
  notesStagiaires['Charlie'] = 18.5;'''
          ],
          'Supprimez la note du deuxième stagiaire': [
            '''notesStagiaires.remove('Bob');'''
          ],
          'Affichez les notes des stagiaires restants': [
            '''print('Notes des stagiaires restants : \$notesStagiaires');'''
          ]
        },
        ''),
    Exercice(
        'Vérification de l\'âge',
        {
          'Demandez à l\'utilisateur d\'entrer son âge': [
            '''stdout.write('Entrez votre âge : ');
  int age = int.parse(stdin.readLineSync()!);'''
          ],
          'Utilisez une structure conditionnelle pour vérifier s\'il est majeur (âge >= 18) ou mineur':
              [
            '''if (age >= 18) {
    print('Vous êtes majeur.');
  } else {
    print('Vous êtes mineur.');
  }'''
          ],
          'Affichez un message approprié en fonction du résultat': [
            '''if (age >= 18) {
    print('Vous êtes majeur.');
  } else {
    print('Vous êtes mineur.');
  }'''
          ]
        },
        ''),
    Exercice(
        'Conversion de température',
        {
          'Demandez à l\'utilisateur d\'entrer une température en Celsius': [
            '''stdout.write('Entrez la température en Celsius : ');
  double celsius = double.parse(stdin.readLineSync()!);'''
          ],
          'Convertissez cette température en Fahrenheit en utilisant la formule appropriée':
              ['''double fahrenheit = (celsius * 9 / 5) + 32;'''],
          'Affichez la température en Fahrenheit': [
            '''print('La température en Fahrenheit est : \$fahrenheit °F');'''
          ]
        },
        ''),
    Exercice(
        'Recherche dans une liste',
        {
          'Créez une liste de mots': [
            '''List<String> mots = ['chat', 'chien', 'oiseau', 'poisson'];'''
          ],
          'Demandez à l\'utilisateur d\'entrer un mot': [
            '''stdout.write('Entrez un mot : ');
  String mot = stdin.readLineSync()!;'''
          ],
          'Vérifiez si le mot est présent dans la liste et affichez un message approprié':
              [
            '''if (mots.contains(mot)) {
    print('Le mot est présent dans la liste.');
  } else {
    print('Le mot n\'est pas présent dans la liste.');
  }'''
          ]
        },
        ''),
    Exercice(
        'Calcul du carré des nombres',
        {
          'Créez une liste de nombres entiers': [
            '''List<int> nombres = [1, 2, 3, 4, 5];'''
          ],
          'Pour chaque nombre dans la liste, calculez son carré': [
            '''List<int> carres = nombres.map((nombre) => nombre * nombre).toList();'''
          ],
          'Stockez les carrés dans une autre liste': [],
          'Affichez la liste des carrés': [
            '''print('Les carrés des nombres sont : \$carres');'''
          ]
        },
        ''),
    Exercice(
        'Calcul de la factorielle',
        {
          'Demandez à l\'utilisateur d\'entrer un nombre entier positif': [
            '''stdout.write('Entrez un nombre entier positif : ');
  int n = int.parse(stdin.readLineSync()!);'''
          ],
          'Calculez la factorielle de ce nombre': [
            '''int factorielle = 1;
  for (int i = 1; i <= n; i++) {
    factorielle *= i;
  }'''
          ],
          'Affichez le résultat': [
            '''print('La factorielle de \$n est : \$factorielle');'''
          ]
        },
        ''),
    Exercice(
        'Jeux de devinettes',
        {
          'Générez un nombre aléatoire entre 1 et 100': [
            '''Random random = Random();
  int nombreAleatoire = random.nextInt(100) + 1;'''
          ],
          "Demandez à l'utilisateur de deviner ce nombre": [
            '''stdout.write('Devinez le nombre entre 1 et 100 : ');
    int guess = int.parse(stdin.readLineSync()!);'''
          ],
          'Affichez si la supposition est correcte, trop haute ou trop basse': [
            '''if (guess == nombreAleatoire) {
      print('Bravo ! Vous avez deviné le nombre en \$tentative tentatives.');
      break;
    } else if (guess < nombreAleatoire) {
      print('Trop bas. Essayez à nouveau.');
    } else {
      print('Trop haut. Essayez à nouveau.');
    }'''
          ],
          'Répétez jusqu\'à ce que l\'utilisateur trouve le bon nombre': [
            '''int tentative = 0;
  while (true) {
    stdout.write('Devinez le nombre entre 1 et 100 : ');
    int guess = int.parse(stdin.readLineSync()!);
    tentative++;
    if (guess == nombreAleatoire) {
      print('Bravo ! Vous avez deviné le nombre en \$tentative tentatives.');
      break;
    } else if (guess < nombreAleatoire) {
      print('Trop bas. Essayez à nouveau.');
    } else {
      print('Trop haut. Essayez à nouveau.');
    }
  }'''
          ]
        },
        '')
  ];
}
