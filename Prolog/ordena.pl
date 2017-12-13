menor([],MenorElemento,MenorElemento).
menor([Primeiro|Resto], MenorAtual, MenorElemento) :-
	Primeiro < MenorAtual, menor(Resto,Primeiro,MenorElemento).
menor([_|Resto],MenorAtual, MenorElemento):-
	menor(Resto,MenorAtual,MenorElemento).

remove(_,[],[]).
remove(Primeiro,[Primeiro|Resto],Resto).
remove(Elemento,[Primeiro|Resto],[Primeiro|RestoNovaLista]):-
	remove(Elemento, Resto, RestoNovaLista).

ordena([],[]).
ordena([Primeiro|Resto],[MenorElemento|ListaOrdenada]):-
	menor(Resto, Primeiro, MenorElemento),
    	remove(MenorElemento,[Primeiro|Resto],ListaAuxiliar),
	ordena(ListaAuxiliar,ListaOrdenada).
