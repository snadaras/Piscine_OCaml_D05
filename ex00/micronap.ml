(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:40:52 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 21:43:15 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


let my_sleep () = Unix.sleep 1

let main () =
  let argv = Sys.argv in
  begin
    try
      for i = 1 to int_of_string argv.(1) do
        my_sleep ()
      done
    with
      | Invalid_argument err  -> 
      	print_endline "Please provide at least one argument"
      | Failure err           -> 
      	print_endline "Please provide an integer as parameter"
  end

let () = main ()