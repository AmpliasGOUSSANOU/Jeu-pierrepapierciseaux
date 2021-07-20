# Ecrire la logique pour que le joueur (vous) entre "0-2".
class Player
    def hand
       # Affiche un texte demandant au joueur de choisir une main pour jouer à pierre-papier-ciseaux.
      puts "Veuillez entrer un numéro. "
      puts "0:Pierre, 1:Papier, 2:Ciseaux"
      # Assignez la valeur d'entrée du joueur à la variable "input_hand".
      # Astuce : regardez la méthode gets.
      input_hand = gets.chomp
      # Si "input_hand" est l'un de "0, 1, 2", le processus d'itération se termine, sinon (y compris les caractères alphabétiques), le processus d'itération continue.
      while true
        if "012".include?(input_hand)
            return input_hand.to_i
        else
            puts "Veuillez saisir un chiffre entre 0 et 2"
            puts "0:Pierre, 1:Papier, 2:Ciseaux"
            input_hand = gets.chomp
        end
      end
    end
end


# Ecrire la logique pour que l'adversaire génère aléatoirement une valeur de "0~2".
class Enemy
    def hand
      # Obtenez les valeurs de Pierre, chPapiert paCiseauxu hasard.
      return [0,1,2].sample
    end
end
# Ecrire la logique pour jouer à pierre-papier-ciseaux entre 0-2 entrés par le joueur (vous) et 0-2 générés aléatoirement par l'ennemi, et sortir le résultat sur la console.
class Janken
    def pon(player_hand, enemy_hand)
      # Assigner ["Pierre", "Papier", "Ciseaux"] à la variable "janken".
      janken = ["Pierre", "Papier", "Ciseaux"]
      #"La main de votre adversaire est #{main de l'adversaire}." et la sortie
      puts "Votre main est #{janken[player_hand]}. "
      puts "La main de l'adversaire est #{janken[enemy_hand]}. "
      # Créez la logique pour jouer à pierre-papier-ciseaux à partir de la valeur de retour de la classe Player et de la valeur de retour de la classe Enemy.
      if player_hand==enemy_hand # la valeur de retour de la classe Player (player_hand) et la valeur de retour de la classe Enemy (enemy_hand) sont les mêmes.
         # Sortie "Aiko".
         puts "Egalité! Rejouer"
         return true
         # renvoie "vrai" et fait fonctionner le pierre-papier-ciseaux de manière répétée.
         # Astuce : Vous pouvez utiliser "return" pour renvoyer une valeur de retour. Cependant, en Ruby, il est courant d'omettre le "return" lorsqu'on renvoie une valeur de retour.
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0) # Si la combinaison des éléments suivants.
         # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
         puts "Vous avez gagné."
         #Retourne "false" et termine pierre-papier-ciseaux.
         return false
      else
         puts "Vous avez perdu."
         #renvoie "false" et met fin au jeu pierre-papier-ciseaux.
         return false
      end
    end
end
# Ecrire la logique pour exécuter le jeu pierre-papier-ciseaux./*
class GameStart
    # En utilisant self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe, sans instancier GameStart.
    def self.jankenpon
      # Assigner le joueur instancié à la variable "player".
      player = Player.new
      # Assigner une instanciation de Enemy à la variable "enemy".
      enemy = Enemy.new
      # Assigner la variable "janken" à celui qui instancie Janken.
      janken = Janken.new
      # Assigner "true" à la variable "next_game".
      next_game = true
    # Lorsque "next_game" est "false", le processus d'itération est terminé, et lorsque "true", le processus d'itération est poursuivi.
      while next_game
        # Assignez la valeur retournée par l'exécution de janken (pierre-papier-ciseaux) à la variable "next_game" (la valeur de retour).
      # Exécuter rock-paper-scissors avec "janken.pon(player.hand, enemy.hand)".
        next_game = janken.pon(player.hand, enemy.hand)

      end
    end
end
# Appeler la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon