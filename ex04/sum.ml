(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:52:54 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 21:58:12 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let sum fl1 fl2 = fl1 +. fl2

let main () =
	print_endline "Valeur de PI : ";
    print_float (sum 3.1405 0.001092654);
    print_endline "";
    print_endline "Valeur 42 : ";
    print_float (sum 41.111 0.889);
    print_endline "";
    print_endline "Encore une fois 42 : ";
    print_float (sum 21.42 20.58);
    print_endline "\n" 

let () = main ()