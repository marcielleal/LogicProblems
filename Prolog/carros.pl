carro(onix).
carro(fusca).
carro(prisma).
carro(uno).
carro(mobi).
carro(etios).
carro(hilux).
carro(d20).
carro(sw4).
carro(caminhao).
carro(onibus).

pequenoPorte(onix).
pequenoPorte(fusca).
pequenoPorte(prisma).
pequenoPorte(uno).
pequenoPorte(mobi).
pequenoPorte(etios).
medioPorte(hilux).
medioPorte(d20).
medioPorte(sw4).
grandePorte(onibus).
grandePorte(caminhao).

fabrica(chevrolet,onix).
fabrica(chevrolet,d20).
fabrica(chevrolet,prisma).
fabrica(fiat,uno).
fabrica(fiat,mobi).
fabrica(volkswagen,fusca).
fabrica(toyota,hilux).
fabrica(toyota,sw4).
fabrica(toyota,etios).
fabrica(caminhao,ford).
fabrica(onibus,mercedes).

cnhNecessaria(b,X):-pequenoPorte(X).
cnhNecessaria(b,X):-medioPorte(X).
cnhNecessaria(d,caminhao).
cnhNecessaria(e,onibus).

maiorPorte(X,Y):-grandePorte(X),carro(Y),\+grandePorte(Y).
maiorPorte(X,Y):-medioPorte(X),pequenoPorte(Y).

menorPorte(X,Y):-pequenoPorte(X),carro(Y),\+pequenoPorte(Y).
menorPorte(X,Y):-medioPorte(X),grandePorte(Y).

mesmoPorte(X,Y):-carro(X),carro(Y),\+maiorPorte(X,Y),\+menorPorte(X,Y).

usaGasolina(X):-pequenoPorte(X).
usaGasolina(X):-medioPorte(X).

usaDiesel(X):-medioPorte(X).
usaDiesel(X):-grandePorte(X).

mesmoFabricante(X,Y):-fabrica(Z,X),fabrica(Z,Y).

concorrente(X,Y):-mesmoPorte(X,Y),\+mesmoFabricante(X,Y),\+grandePorte(X).
