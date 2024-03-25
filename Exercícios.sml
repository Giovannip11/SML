(* Atividade 1 *)
fun menorDois(x , y)=
if x > y then y
else x;

menorDois(5,6);

(* Atividade 2 *)
fun pertence (x,[]) = false

 | pertence(x, y::ys) = x = y orelse pertence(x,ys)

val teste1 = pertence (3, [3,7,4,2]); 
val teste2 = pertence (2, [9,8,6,5]);

(* Atividade 3 *)
fun contaOcorrencias(n, []) = 0
  | contaOcorrencias(n, x::xs) = if n = x then 1 + contaOcorrencias(n, xs) else contaOcorrencias(n, xs)

val teste1 = contaOcorrencias(2, [1,2,3,2]);
val teste2 = contaOcorrencias(3,[1,2,2,2]);

(* Atividade 4 *) 
fun unicaOcorrencia n lista =
  if contaOcorrencias(n, lista) = 1 then true else false;
val teste1 = unicaOcorrencia 2 [1, 2, 3, 4, 5];
val teste2 = unicaOcorrencia 0 [4,5,6,7,1];
