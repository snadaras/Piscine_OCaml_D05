(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:56:34 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 22:05:17 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let eu_dist a b =

  	let n = Array.length a in
  	if n <> Array.length b then
		failwith "Arrays have different lengths";
  	if n = 0 then
		failwith "Arrays are empty !";
  	let square (acc, i) av =
		let bv = b.(i) in
		((av -. bv) ** 2. +. acc, i + 1)
  	in
  	let (squaredsum, _) = Array.fold_left square (0., 0) a in
  		sqrt squaredsum


let test a b =
	
	Printf.printf "-----------\n%!";
	Printf.printf "Test with: \n%!";
  	Printf.printf "a: [|%!";
  	Array.iter (fun v -> print_string ((string_of_float v) ^ "; ")) a;
  	Printf.printf "|]\nb: [|%!";
  	Array.iter (fun v -> print_string ((string_of_float v) ^ ";")) b;
  	Printf.printf "|]\n";
  	Printf.printf "eu_dist a b = %!";
  	try
		Printf.printf "%.f%!\n" (eu_dist a b)
  	with
  	| Failure m
		->	Printf.printf "Catched \"%s\"\n%!" m
					  

let main () =

  	test [||] [||];
  	test [|1.|] [||];
  	test [|1.|] [|1.|];
  	test [|1.; 1.|] [|1.; 1.|];
  	test [|42.|] [|-.42.|];
  	test [|-42.|] [|42.|];
  	test [|5.5; 9.6; 4.1; 0.1|] [|3.5; 10.6; 9.1; 8.3|]

let () = main ()
