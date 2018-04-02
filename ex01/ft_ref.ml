(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: snadaras <snadaras@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/04/02 21:47:22 by snadaras          #+#    #+#             *)
(*   Updated: 2018/04/02 21:50:16 by snadaras         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = { mutable content : 'a }

let return x = { content = x }
let set r x = r.content <- x
let get x = x.content
let bind r f = return (f (r.content)).content


let test x =
    return (float_of_int x)

let () =
    print_string "test with - return / [test 42] : ";
    let test = return 42 in
    print_int (get test);
    print_char '\n';
    print_string "test with - bind [test (fun x -> return (char_of_int(get test)))] : ";
    let y = bind test (fun x -> return (char_of_int(get test))) in
    print_char (get y);
    print_char '\n';
    print_string "Check value not have changed (get) : ";
    print_int (get test);
    print_char '\n';
    print_string "test with - set / [test 21] : ";
    set test 21;
    print_int (get test);
    print_char '\n'

