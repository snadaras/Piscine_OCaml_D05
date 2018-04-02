(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:44:52 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 21:51:56 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let main () =
	
    let tab = Array.make 5 "" in
    tab.(0) <- "Qu'est ce qui est le plus difficile a mixer dans un légume ?\n
    			Le fauteuil roulant...";
    tab.(1) <- "Pourquoi la petite fille tombe-t-elle de la balançoire?\n
    			Parce qu’elle n’a pas de bras...";
    tab.(2) <- "Comment faire aboyer un chat?\n
    			Ben tu le trempes dans l’essence et t’allume et WWWWOOOOFFF !";
    tab.(3) <- "C’est une femme qui rentre à la maison et dit à son mari :\n
    			– Il faut renvoyer le chauffeur, 
    			ça fait deux fois qu’il essaye de me tuer !\n
    			– Laisse lui encore une chance. Répond le mari.";
    tab.(4) <- "Comment un parachutiste aveugle sait-il qu’il va toucher le sol ?\n
				Quand il y a du mou dans la laisse du chien";
    Random.self_init ();
    print_endline tab.(Random.int 5)

(* ************************************************************************** *)

let () = main ()
