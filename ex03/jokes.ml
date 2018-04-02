(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:50:14 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 21:55:26 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let parse_file fjokes =
  let l = ref [] in
  begin
	try
	  while true do
		let line = input_line fjokes in
		l := line::(!l);
	  done;
	with
	| End_of_file	-> ();
  end;
  Array.of_list !l

let () =
  try
	begin
	  let fname = Sys.argv.(1) in
	  let fjokes = open_in fname in
	  let joke = parse_file fjokes in
	  let n = Array.length joke in
	  if n <= 0 then
		failwith "no joke";
	  Random.self_init ();
	  print_endline (joke.(Random.int n))
	end
  with
  | Failure "no joke"
	-> print_endline ("Catched : no item found in input file ")
  | Invalid_argument m
	-> print_endline ("Catched \"" ^ m ^ "\" please give some arguments")
  | Sys_error m
	-> print_endline ("Catched \"" ^ m ^ "\" unexpected error!")