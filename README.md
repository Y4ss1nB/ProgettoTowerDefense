# Tower Defense
Boubagura Yassin
## PRESENTAZIONE DEL PROGETTO:
Il progetto deve permettere ad un utente di poter giocare ad un gioco che sia come Tower Defense ma in 2D e semplificato a livello visivo; l’utente avrà il compito di posizionare delle torri nello spazio per fare in modo che i nemici non arrivino alla fine del sentiero, in caso contrario andrà a perdere vite e quando le andrà a finire perderà il gioco; quindi ci saranno dei nemici che cammineranno lungo un percorso e l’utente dovrà ucciderli mediante l’uso delle torri. Le torri saranno di tre tipologie, ogni tipologia di torre corrisponde ad una froma geometrica e ad un colore; nello specifico ci sarà una torre rossa e quatrata, una torre verde e triangolare e una torre blu e rotonda. In base alla torre ci sarà una potenza di attacco diversa e un tempo di attesa per attaccare il nemico diverso. Anche i nemici saranno di più tipologie e in base all’ondata varieranno i nemici che saranno di tre tipologie e ogni tipologia sarà di un colore diverso, però tutte e tre le tipologie avranno la forma di un rombo. L'obbietivo del giocatore è riuscrire a battere più ondate di nemici possibili quindi far arrivare meno nemici possibili alla fine del percorso. In totale il giocatore avrà tre vite e ad ogni nemico che percorre tutto il sentiero perde una vita.
## REQUISITI FUNZIONALI:

- il sistema deve permettere di giocare ad un tower defense semplificato graficamente rispetto alla versione originale.
 Il sistema dovrà avere tre tipi di torri che corrispondono a tre forme e a tre colori di cui variera aspetto, potenza e tempo di attesa per poter sparare al nemico. L'utente le avrà a disposizione tutte e tre:
    - Il primo tipo di torre è la torre di forma quadrata e di colore rosso e sarà la torre più debole.
    - Il secondo tipo di torre è la torre di colore verde e di forma triangolare e può essere definita come torre di media potenza dato che è un via di mezzo tra la torre più forte e quella più debole.
    - Il terzo tipo di torre è la torre di colore blu e di forma rotonda e sarà la torre più potente.
- Il sistema avrà tre tipi di nemici tutti e tre a forma di rombo di cui andrà a variare il colore, la vita, la velocità e il il numero di monte che valgono; più il nemico ha velocità maggiore e più la sua salute sarà minore. Ci sarà un tipo di nemico diverso per ogni ondata di passaggio dei nemici sul sentiero:
    - il primo tipo di nemico è il nemico di colore arancione e sarà quello con velocità e salute più equilibrata.
    - il secondo tipo di nemico è il nemico di colore viola e sarà con più vita ma più lento.
    - il terzo tipo di nemico è il nemico di colore nero e sarà il nemico con più salute ma sarà anche quello più lento.
- Il tipo di nemico presente nell'ondata sarà totalmente randomico.
- All’apertura del gioco dovrà essere spiegato come si gioca, l'obiettivo del gioco e come si perde.
- L’utente avrà tre vite.
- Se l'utente permette a più di tre nemici di arrivare alla fine del sentiero avrà perso e lì verrà stampata la scritta “game over”.
- L’utente avrà a disposizione una quantità di torri infinita.
- La torre si potranno acquistare con le monete
- All'inizio del gioco verrano date 225 monete
- Le monete si guadagnano uccidendo i nemici
- ogni nemico ha un valore differente in base alla sua vita, ovvero maggiore è la vita del nemico maggiore è il numero di monete che vale.
- Per selezionare la torre da inserire nel gioco l’utente potrà usare i numeri sulla tastiera:
    - il tasto uno indica la torre rossa.
    - il tasto due indica la torre verde.
    - il tasto tre indica la torre blu.
- L’utente non potrà posizionare le torri sul sentiero e ci dovrà essere una certa distanza tra le torri.
- L'obbiettivo del giocatore è battere più ondate possibili.

## REQUISITI NON FUNZIONALI:
- Il sistema deve essere di facile utilizzo 
- il sistema deve riuscire a girare anche su dispositivi poco performanti.
- il sistema deve riuscire ad essere veloce nella visualizzazione grafica sullo schermo per non mostrare i frame in maniera lenta e in modo che non ci siano lag
- il sistema non deve avere un peso eccessivo.
## SCELTE PROGETTUALI
Per lo sviluppo di un sistema informatico che permetta di giocare a Tower Defense in maniera più semplice rispetto al solito e in 2D sono state identificate le seguenti componenti:
- Una componente è quella che va a gestire la torre, quindi questa componente dovrà contenere le informazioni di una specifica torre e la sua logica, per tanto nel sistema informatico ne sarà presente una per ogni torre inserita nel gioco.
- Per le torri oltre alla componente che contiene i dati della torre ci sarà una componente più specifica per ogni torre che andrà ad indicare il come va disegnata ed il colore di tale torre.
- Una componente è quella che va a gestire il nemico, quindi questa componente dovrà contenere le informazioni specifiche per ogni nemico e la sua logica, infatti come per le torri ce ne sarà uno per ogni nemico.
- Per i nemici oltre alla componente che contiene i dati del nemico ci sarà una componente più specifica per ogni nemico che andrà ad indicare il colore di tale nemico
- La componente principale è quella che va a contenere l'insieme delle torri e l’insieme dei nemici e permette di creare  un’ interazione tra i 2, ovvero contienela logica che permette di andare a far funzionare il gioco nella maniera corretta riuscendo ad unire la logica delle torri e la logica dei nemici andando a creare effettivamente il gioco. 
- La componente principale contiene a sua volta una componente che permette di usare il mouse per inserire le torri e una componente che comprende gli input da tastiera per scegliere la torre da inserire.
