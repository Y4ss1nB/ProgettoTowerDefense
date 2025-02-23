# Tower Defense
Boubagura Yassin
## PRESENTAZIONE DEL PROGETTO:
Il progetto deve permettere ad un utente di poter giocare ad un gioco che sia come Tower Defense ma in 2D e semplificato a livello visivo; l’utente avrà il compito di posizionare delle torri nello spazio per fare in modo che i nemici non arrivino alla fine del sentiero, in caso contrario andrà a perdere vite e quando le andrà a finire perderà il gioco; quindi ci saranno dei nemici che cammineranno lungo un percorso e l’utente dovrà ucciderli mediante l’uso delle torri. Le torri saranno di tre tipologie, ogni tipologia di torre corrisponde ad una froma geometrica e ad un colore; nello specifico ci sarà una torre rossa e quatrata, una torre verde e triangolare e una torre blu e rotonda. In base alla torre ci sarà una potenza di attacco diversa e un tempo di attesa per attaccare il nemico diverso. Anche i nemici saranno di più tipologie e in base all’ondata varieranno i nemici che saranno di tre tipologie e ogni tipologia sarà di un colore diverso, però tutte e tre le tipologie avranno la forma di un rombo. L'obbietivo del giocatore è riuscrire a battere più ondate di nemici possibili quindi far arrivare meno nemici possibili alla fine del percorso. In totale il giocatore avrà tre vite e ad ogni nemico che percorre tutto il sentiero perde una vita.
## REQUISITI FUNZIONALI:

- il sistema deve permettere di giocare ad un tower defense semplificato graficamente rispetto alla versione originale.
- Il sistema dovrà avere tre tipi di torri che corrispondono a tre forme e a tre colori di cui variera aspetto, potenza, tempo di attesa per poter sparare al nemico e anche il costo. L'utente le avrà a disposizione tutte e tre:
    - Il primo tipo di torre è la torre di forma quadrata e di colore rosso e sarà la torre più debole con un costo di 25 monete.
    - Il secondo tipo di torre è la torre di colore verde e di forma triangolare e può essere definita come torre di media potenza dato che è un via di mezzo tra la torre più forte e quella più debole e avrà un costo di 60 monete.
    - Il terzo tipo di torre è la torre di colore blu e di forma rotonda e sarà la torre più potente con un costo di 100 monete.
- Il sistema avrà tre tipi di nemici tutti e tre a forma di rombo di cui andrà a variare il colore, la vita, la velocità e il numero di monete che valgono.
- Più il tipo di nemico ha velocità maggiore e più la sua salute sarà minore. Ci sarà un tipo di nemico diverso per ogni ondata di passaggio dei nemici sul sentiero:
    - il primo tipo di nemico è il nemico di colore arancione e sarà quello con velocità e salute più equilibrata.
    - il secondo tipo di nemico è il nemico di colore viola e avrà una vita maggiore ma sarà abbastanza lento.
    - il terzo tipo di nemico è il nemico di colore nero e sarà il nemico con più salute ma sarà anche quello più lento.
- Il tipo di nemico presente nell'ondata sarà totalmente randomico.
- Il numero di nemici nell'ondata sara uguale al triplo del numero di ondata.
- Nella parte bassa dello schermo viene scritto che tasto schiacciare per selezionare una determinata torre e il suo costo.
- L’utente avrà tre vite.
- Se l'utente permette a più di tre nemici di arrivare alla fine del sentiero avrà perso e lì verrà stampata la scritta “game over” di colore giallo.
- L’utente avrà a disposizione una quantità di torri infinita.
- La torre si potranno acquistare con le monete.
- All'inizio del gioco verrano date 180 monete.
- Le monete si guadagnano uccidendo i nemici.
- ogni nemico ha un valore differente in base alla sua vita, ovvero maggiore è la vita del nemico maggiore è il numero di monete che vale.
    - Il nemico arancione vale 15 monete
    - Il nemico viola vale 30 monete
    - Il nemico nero vale 50 monete
- Per selezionare la torre da inserire nel gioco l’utente potrà usare i numeri sulla tastiera:
    - il tasto uno indica la torre rossa.
    - il tasto due indica la torre verde.
    - il tasto tre indica la torre blu.
- L’utente non potrà posizionare le torri sul sentiero e ci dovrà essere una certa distanza tra le torri.
- L'obbiettivo del giocatore è battere più ondate possibili.

## REQUISITI NON FUNZIONALI:
- Il sistema deve essere di facile utilizzo.
- Il sistema deve riuscire a girare anche su dispositivi poco performanti.
- Il sistema deve riuscire ad essere veloce nella visualizzazione grafica sullo schermo per non mostrare i frame in maniera lenta e in modo che non ci siano lag.
- Il sistema non deve avere un peso eccessivo.
- Il sistema deve avere un tempo di risposta veloce.
- Il sistema deve avere una buona manutenibilità.
## SCELTE PROGETTUALI
- Per lo sviluppo di un sistema informatico che permetta di giocare a Tower Defense in maniera più semplice rispetto al solito e in 2D sono state identificate le seguenti componenti:
    - Una componente è quella che va a gestire e a disegnare la torre, quindi questa componente dovrà contenere le informazioni di una specifica torre e la sua logica, per tanto nel sistema informatico ne sarà presente una per ogni torre inserita nel gioco, inoltre questa componente contiene anche la parte del sistema che controlla se una torre ha la possibilità di attaccare un nemico, quindi va a controllare le posizioni dei nemicic e delle torri
    - Per le torri oltre alla componente generica ci saranno delle componenti più specifiche che oltre a contenere i dati della torre vanno a disegnare la torre con una forma specifica e un colore specifico in base al tipo di torre.
    - Una componente è quella che va a gestire il nemico, quindi questa componente dovrà contenere le informazioni specifiche per ogni nemico e i meccanismi per la logica che permette il movimento, che permette di controllare se un nemico è morto e anche che controlla se un nemico è arrivato alla fine; come per le torri ce ne sarà uno per ogni nemico.
    - Per i nemici oltre alla componente generica che contiene i dati del nemico ci sarà una componente più specifica per ogni nemico che andrà ad indicare il colore di tale nemico, quindi a "disegnarlo" sullo schermo.
    - La componente principale per la gestione di Tower Defense è quella che va a contenere il numero delle vite, il numero di monete, il valore che rapresenta quante ondate ha passato il giocatore, l'insieme delle torri e l’insieme dei nemici, inoltre questa componente permette di creare  un’ interazione tra l'insieme delle torri e dei nemici, ovvero contiene la logica che permette di andare a far funzionare il gioco nella maniera corretta riuscendo ad unire la logica delle torri e la logica dei nemici andando a creare effettivamente il gioco. In questa componente c'è una parte che va a creare le torri nel punto indicato dal giocatore con il mouse e con la tipologia di torre decisa dal giocatore mediante tastiera, prima del posizionamento della torre si va a verificare che la torre rispetti dei parametri, ovvero che non si sovrapponga ad un altra torre e che non venga messa sul sentiero. Questa componente avvia le ondate ogni volta che non ci sono più nemici sullo schermo, quindi quando tutti nemici di un'ondata muoiono o finiscono il loro cammino lungo il sentiero. Questa componente va a far concludere il gioco dato che contiene il numero di vite del giocatore e una volta che arriveranno a ero il gioco terminerà. Le torri e i nemici vegnono "disegnti" nello schermo sempre grazie a quaesta componente.
    - La componente principale principale del punto precedente viene inserita all'interno di un altra componente che avvia il gioco e che una volta concluso il gioco stampa la scritta "Game over" in colore giallo .
- Una scelta progettuale importante è quella di rendere il numero delle ondate infinito come il numero delle torri aquistabili, questa scelta è stata fatta per fare in modo che il giocatore abbia come obbiettivo superare il suo record di ondate incrementando l'interesse del giocatore a giocare
-  Un'altra scelta progettuale importante è quella di rapresentare le torri e i nemici con delle forme geometriche semplici, precise e con dei colori precisi, questa scelta è stata fatta per non appesantire la grafica con delle forme o figure complesse facendo ricadere tutta l'attenione del giocatore sulle dinamiche di gioco e senza distrarlo o far venire meno la sua attenzione con la grafica ed inoltre una grafica semplice non stanca mai al contrario di una grafica troppo complessa


  
