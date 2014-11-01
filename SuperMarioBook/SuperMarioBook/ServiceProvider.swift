//
//  ServiceProvider.swift
//  SuperMarioBook
//
//  Created by onix on 11/1/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import Foundation
import UIKit

class ServiceProvider {
  
  
  class func characteres() -> [Character] {
  
    let bowser = Character(name: "Bowser",
      console: "NES",
      year: 1988,
      notes: "El archienemigo de Mario es Bowser, también conocido como Rey Koopa, el villano principal de la gran mayoría de los juegos de Mario. Apareció por primera vez en Super Mario Bros. Bowser es un ser maligno, brutal y despiadado que ha secuestrado a la princesa Peach y tratado de conquistar el Reino Champiñón varias veces, pero Mario siempre lo ha derrotado. A pesar de esto, Mario y Bowser siempre han unido fuerzas para combatir a una amenaza mayor.",
      image: UIImage(named: "bowser")!)
    
    let donkeyKong = Character(name: "Donkey Kong",
      console: "SNES",
      year: 1987,
      notes: "El primer enemigo de Mario fue Donkey Kong, un gorila que secuestra a su novia Pauline. Donkey Kong apareció por primera vez en el juego del mismo nombre. En dicho juego, Mario tenía que saltar los barriles que lanzaba, y subir escaleras para llegar a la parte superior de la pantalla donde se encontraban ambos. Todos pensaban que Donkey Kong era quien secuestraba a Pauline en este juego, pero posteriormente Rare aclaró que en realidad éste era Cranky y Donkey Kong su hijo, quien lo salvaba en Donkey Kong Jr.",
      image: UIImage(named: "donkeykong")!)
    
    
    let koopaTroopa = Character(name: "Koopa Troopa",
      console: "N64",
      year: 1992,
      notes: "Los Koopa Troopas son tortugas evolucionadas y ayudantes de Bowser, aparecieron por primera vez en Super Mario Bros. (1985). Pueden ser de distintos colores, si tiene caparazón verde no se detiene al borde de una plataforma o precipicio y el de caparazón rojo si lo hace (claro en juegos con movimientos 2D como Super Mario Bros). Una diferencia entre los goombas y los koopa troopas es que a los koopas, Mario les tiene que saltar dos veces para acabarlos, antiguamente caminaban en cuatro patas pero ahora se los ve en dos patas usando zapatos y con pulgares opuestos. También existen koopas con alas denominados Paratroopas, aunque en los juegos clásicos de Mario solo daban saltos, en los juegos mas modernos se los ve volando sin tocar el suelo en ningún momento. Su líder es Bowser (Rey Koopa).",
      image: UIImage(named: "koopa")!)
    
    let luigi = Character(name: "Luigi",
      console: "NES",
      year: 1982,
      notes: "Es el hermano menor de Mario, su primera aparición fue en el juego Mario Bros. en 1983. Se dice que es tímido y cobarde, pero en algunos juegos demuestra que tiene valentía suficiente. En Luigi's Mansion para la GameCube tiene que rescatar a su hermano Mario de una mansión encantada plagada de fantasmas, Luigi tuvo que enfrentarse a sus temores para rescatar a su hermano, y desde entonces siempre se le ha identificado a Luigi con \"su\" mansión.",
      image: UIImage(named: "luigi")!)
    
    let mario = Character(name: "Mario",
      console: "NES",
      year: 1980,
      notes: "Es un personaje ficticio diseñado por el japonés Shigeru Miyamoto, para la compañía Nintendo. A partir de su aparición en videojuegos, películas y series televisivas, se ha convertido en el icono emblemático de Nintendo, llegando a ser uno de los personajes más famosos y conocidos de videojuegos de todos los tiempos junto a su hermano menor Luigi, quien es su compañero ícono en diversos juegos y lo ayuda a cumplir su misión, y también ha sido el único protagonista en la saga inspirada en el universo de su hermano Mario.",
      image: UIImage(named: "mario")!)
    
    let peach = Character(name: "Princesa Peach",
      console: "Wii",
      year: 1997,
      notes: "La Princesa Peach es la princesa del Reino Champiñón. Apareció por primera vez en Super Mario Bros. en 1985. Se dice que ella y Mario son pareja. Ha sido secuestrada por Bowser en numerosas ocasiones, siendo siempre rescatada por Mario. En el año 2006 se cambiaron roles para ser ella quién rescate a Mario en el juego Super Princess Peach para la consola portátil Nintendo DS. Otra aparición en los videojuegos ha sido, por el momento en el juego New Super Mario Bros. U siendo en este juego secuestrada por Bowser en su propio castillo. En Super Mario 3D World,al no ser secuestrada por Bowser, aparece como personaje jugable.",
      image: UIImage(named: "peach")!)
    
    let toad = Character(name: "Toad",
      console: "N64",
      year: 1993,
      notes: "Toad es un pequeño humanoide con la cabeza en forma de champiñón. Es el fiel servidor y protector de la princesa Peach. Debido a su nula fuerza y tamaño, siempre termina por suplicar a Mario que sea él quien rescate a Peach cada vez que es raptada. Su frase \"Thank you Mario, but our princess is in another castle\" (en español: \"Muchas gracias Mario, pero nuestra princesa está en otro castillo\"), es conocida por todos los seguidores del fontanero. Apareció por primera vez en Super Mario Bros.",
      image: UIImage(named: "toad")!)
    
    return [bowser, donkeyKong, koopaTroopa, luigi, mario, peach, toad]
  }
  
  
  
  
}

