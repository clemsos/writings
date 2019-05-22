---
layout: post
status: publish
published: true
title: 'Telephonie mobile et Internet : un best of'
author:
  display_name: clemsos
  login: clemsos
  email: ''
  url: ''
author_login: clemsos
wordpress_id: 3
wordpress_url: http://clemsos.freevar.com/blog/?p=3
date: '2010-02-12 12:05:00 +0100'
date_gmt: '2010-02-12 12:05:00 +0100'
categories:
- Web Tools
tags:
- Technologies Web
- telephonie
comments:
- id: 5
  author: pierre
  author_email: noreply@blogger.com
  author_url: ''
  date: '2008-02-14 11:46:00 +0100'
  date_gmt: '2008-02-14 11:46:00 +0100'
  content: Bon, j'ai commencé a lire ton article.<br />En introduction tu commences
    à parler de GSM Ok , C'est de la 2G mais<br />parler du:<br />-2,5G techno GPRS
    Global Packet Radio Service qui introduit la notion de<br />transfert de donnée
    en théorie 56 Kb en pratique 30-40Kb dans de bonne<br />condition de transmission.<br
    />-2,75G techno Edge pr Orange ou I-mode pour BT débit théorique de 450 KB,<br
    />en pratique 150-200 Kb.<br />-3G ou autrement dit UMTS pr Universal Mobile Telecommunications
    System<br />techno basé sur du W-CDMA transmission par code bref...en théorique
    1,9 MB<br />en pratique environ 350 Kb.<br />-3,5G HSDPA dans le sens descendant
    en théorie 2,8MB en pratique env 1 KB<br />-3,75G HSUPA dans le sens montant en
    théorie 3,6 MB en pratique env 1,6 KB<br /><br />Toute ces technos permetent de
    supporter le WAP.<br /><br />Bref c'est la course au débit j'ai appris aujourd'hui
    que BT font ds exp à<br />7,2 Mb
---
<p>L'Internet mobile est sur toutes les lèvres, je vais donc essayer de faire un (petit) bilan des technologies -et des coûts si possible- qui permettent aujourd'hui de faire le lien entre les technologies du Web et les téléphones cellulaires.</p>
<p>Le constat de départ est que l'accés à Internet par l'ordinateur reste encore un grand luxe dans beaucoup de pays, au contraire des réseaux de téléphonie qui se dévellopent rapidement. Ainsi, pour permettre à des gens qui n'ont pas l'accés à une connexion Internet de s'exprimer sur la Toile, la téléphonie semble être le moyen le plus adapté, tant par le coût assez modeste que par sa facilité d'utilisation.</p>
<p>Cet article sera sujet à modification et l'idée est plus de regrouper le max d'infos plutot que de faire une étude trés poussée (je ne suis pas une boite du consulting héhé). N'hésitez pas à poster en comments toutes les infos complémentaires, je mettrai à jour l'article.</p>
<p>----</p>
<p><span style="font-weight: bold;font-size:130%;">PLAN</p>
<p></span><span style="font-size:85%;"><span style="font-weight: bold;">Introduction</span></p>
<p><span style="font-weight: bold;">1. Du Web vers la téléphonie</span><br />1.1. Consulter un site sur son téléphone<br />1.2. Envoyer des SMS depuis le Web</p>
<p><span style="font-weight: bold;">2. Téléphoner par Internet</span><br />2.1. La voIP<br />2.2. Téléphones voIP</p>
<p><span style="font-weight: bold;">3. De la téléphonie au Web</span><br />3.1. Le microblog<br />3.2. Poster un SMS sur son site<br />3.3. Podcast depuis une ligne téléphonique<br />3.4. Géolocalisation et téléphonie mobile<br />3.5. Autres technologies (en vrac)</span><span style="font-weight: bold;font-size:130%;"><br /></span><br />----</p>
<p><span style="font-weight: bold;font-size:130%;">Introduction</span></p>
<p>Tout d'abord, un peu de vocabulaire pour s'y retrouver.</p>
<p><span style="font-weight: bold;">GSM : </span>Le réseau GSM <i>Global System for Mobile communications</i> constitue au début du 21<sup>ème</sup> siècle le standard de téléphonie mobile le plus utilisé en Europe. <a href="http://www.commentcamarche.net/telephonie-mobile/gsm.php3">(...)</a></p>
<p><span style="font-weight: bold;">Gateway : </span>Un "<a href="http://www.commentcamarche.net/lan/gateway.php3">gateway</a>" est une passerelle qui permet de faire le lien entre deux protocoles réseaux différents. La technologie <span style="font-style: italic;">SMS Gateway, </span>permet d'envoyer/recevoir des SMS depuis des dispositifs du protocole TCP/IP (les sites Internet, clients mail, etc...).  C'est cette technologie qu'utilise les sites de "sms gratuits", les télés pour leurs SMS qui défilent en bas de l'écran, etc...</p>
<p><span style="font-weight: bold;">WAP : </span>Le Wireless Application Protocol<span style="font-weight: bold;"> </span>(wap) est un protocole de communication dont le but est de permettre d'accéder à Internet à l'aide d'un terminal mobile (par exemple un téléphone portable, un PDA...). <a href="http://www.commentcamarche.net/wap/wapintro.php3">(...)</a></p>
<p>----</p>
<p><span style="font-weight: bold;font-size:130%;">1. Du Web vers la téléphonie</span></p>
<p><span style="font-style: italic;"><span style="font-weight: bold;font-size:100%;">1.1. Consulter un site sur son téléphone</span><br /></span>Les services qui permettent d'accéder au contenu de sites Web, type <a href="http://www.commentcamarche.net/wap/wapintro.php3">Wap</a> ou 3G restent encore trés chers mais tendent à se dévelloper en Occident. On le voit bien avec l'arrivée des smartphones de nouvelle génération type Apple iPhone qui deviennent de véritable unité centrale portable. L'<a href="http://www.journalistiques.fr/post/2007/11/09/Lattirail-du-journaliste-de-terrain-selon-Reuters-et-Nokia">agence de presse Reuters </a>a même équipé ces journalistes de téléphones Nokia N958g, qui sont à la fois des outils de capture (audio, video, photo) et de transmission (réseau téléphone et sattelite). Mais les appareils possédant la capacité d'afficher des sites Web restent encore trés chers.</p>
<p>Autre problème, il n'existe actuellement aucune norme d'affichage pour la résolution de téléphone. Ainsi, pour qu'un site Web soit conforme à l'affichage sur écran de téléphone, c'est la croix et la bannière (il faut le tester sur chaque modèle !!). Autant dire que l'adpatation de la navigation Web vers téléphone a de beaux jours devant elle (un marché juteux diront certains).</p>
<p>Vous trouverez ici <a href="http://blog.tafticht.com/2007/10/01/un-emulateur-pour-tester-laffichage-de-votre-site-web-sur-un-mobile/">un émulateur </a>pour tester l'affichage sur des téléphones.<br />Voici la version du navigateur <a href="http://www.operamini.com/demo/">Opera pour mobile</a> pour tester votre site.<br />Les premiers <a href="http://www.clubic.com/actualite-92324-images-navigateur-web-mozilla-mobile.html">screenshots de Firefox Mobile.</a></p>
<p><span style="font-weight: bold;">NB : </span>Le mouvement Open Source et son incorrigible habitude à bidouiller et hacker toutes sortes de technologies nouvelles, s'est emparé trés tôt de la téléphonie mobile : <a href="http://fr.wikipedia.org/wiki/OpenMoko">OpenMoko </a>est le premier système d'exploitation Linux commercialisé pour la téléphonie mobile.<br />Dans le corporate, c'le géant Google travaille sur <a href="http://code.google.com/android/">Android,</a> son projet de système pour telephone, opensource aussi.</p>
<blockquote><p>Le site <a href="https://www.mobispirit.com/fr/">Mobispirit</a> propose une suite d'applications pour créer, diffuser, publier des photo/vidéos MMS et des SMS. Le service semble plutôt correct (mais les <a href="http://www.mobispirit.com/faq/attachments/58/070412_ratecard_SMS.pdf">prix SMS</a> sont chers) : création de galleries, systèmes d'alertes, newsletter... Les fonctionnalités sont essentiellement conçus pour le marketing mobile mais l'<a href="http://www.messagio.com/fr/?q=fr/node/22">AFP vient de s'y associer </a>pour sa version mobile.</p></blockquote>
<p><span style="font-style: italic;"><span style="font-weight: bold;">1.2. Envoyer des SMS depuis le Web</span></p>
<p></span>Il existe de trés nombreux sites permettant d'envoyer des SMS vers des téléphones. En fait, il s'agit d'entreprises possédant un gateway SMS duquel vous louer une partie.</p>
<p>Il existe des services payants type <a href="http://www.smsbox.fr/">SMSbox</a> qui permet les envois groupés (type mailing list de phones) vers plus de 160 pays, et ce pour en moyenne 1 cents d'euros par SMS. Quelques-uns proposent des services gratuits comme <a href="http://fr.smscity.com/">SMSCity</a> <span style="font-style: italic;"></span>(vers l'international aussi).<br />En Inde, le SMS commence à être dévellopé avec la croissance trés rapide du nombre de telephones. Voila une page pour <a href="http://funpage.50webs.com/unlimited%20sms.html">envoyer des SMS gratuitement en Inde</a> ou <a href="http://www.muskurahat.com/sms/">dans le monde entier.</a><br /><a href="http://www.send-sms-now.com/">un autre site</a><br /><a href="http://www.email2sms.ru/sms.php">un site russe</a><br />il y en a vraiment beaucoup comme ça, offrant différentes possibilités et options plus ou mois chères (plus ou moins payantes en fait).</p>
<p>Certaines entreprises comme <a href="http://www.smsgo.eu/">SMSgo</a> vous propose des API programmés pour leur Gateway. autrement dit, cela permet d'intégrer l'envoi de SMS dans l'interface de votre site (ici vers plus de 140 pays). La celebre plateforme de blog <span style="font-style: italic;">Wordpress </span>propose un plugin <a href="http://wp-plugins.net/plugin/quick-sms/">QuickSMS</a> qui s'ajoute à la barre de menu et permet d'envoyer directement un SMS à l'auteur du blog.</p>
<p>Vous pouvez également utiliser le protocole SMTP, celui utilisé pour l'envoi de  courrier électronique. Cela vous pe<br />
rmet d'envoyer des sms depuis un client mail type Outlook. Il vous suffit pour cela d'envoyer votre texte via le <a href="http://www.notepage.net/smtp.htm">SMTP d'un opérateur.</a><br /><span style="font-style: italic;">ex : mon_numero@orange.net</span><span style="font-weight: bold;"></p>
<p></span><span style="font-style: italic;"></span><br />
<blockquote><span style="font-style: italic;">A propos du MMS</span><br />Le MMS, <span style="font-style: italic;">Multimedia Message Service, </span>permet de transmettre du contenu multimédia (audio, photo, video) via le réseau GSM, donc depuis un téléphone. Ils utilisent le Wap et sont donc souvent consultables directement sur Internet. Pour les téléphones n'étant pas équipé d'écrans, les opérateurs envoie une URL et un login pour consulter le MMS sur le Web. Sa forme est assez similaire à celle d'un email. Le MMS est écrit en langage SMIL (un XML modifié), avec un fichier-joint qui est le contenu multimedia à proprement parlé.<br />Aujourd'hui, Le MMS reste encore cher.<br /><span style="font-size:85%;"><a href="http://www.services.bouyguestelecom.fr/espace_services/communiquer/com_mms/0,,3294464-VU5WX0lEIDYx,00-tarifs-.html">chez Bouygues,</a> 30 cents pour un fichier de moins de 50 kO.<br /><a href="http://www.srr.fr/default.asp?rub=D&amp;page=55">chez SFR, </a>on est à 31 cents pour 300 kO.</span><br /><span style="font-size:85%;">NB : pour les prix sur le marché africain, <a href="http://www.giiexpress.com/products/bgp49281/">l'étude de marché </a>coute plus de 1000 $US !!</span></p></blockquote>
<p>----<br /><span style="font-weight: bold;"><br /><span style="font-size:130%;">2. Téléphoner par Internet</span><br /></span><span style="font-style: italic;"></span></p>
<p><span style="font-style: italic;"><span style="font-weight: bold;font-size:100%;">2.1. La voIP</span></p>
<p></span>La voIP signifie <i>Voice over IP</i>, c a d la voix passant via le protocole TCP/IP.<br />Elle peut être diffusée simplement de personne à personne (unicast), en mode conférence (broadcast) ou en discussion à plusieurs (multicast). <span style="font-style: italic;"><br /></span><br />La voIP permet des coûts trés peu élevés : les meilleurs exemples pour les appels à l'international sont Free, Neuf/Cegetel ou Wanadoo avec les telephones ADSL.</p>
<p>Il existe de trés nombreux logiciels de voIP, le plus connu étant <span style="font-style: italic;">Skype</span> qui dispose de ses propres tarifs et fonctionnalités. <span style="font-style: italic;">SkypeOut </span>permet d'appeler mobiles et fixes depuis l'ordinateur, pour <a href="http://www.skype.com/intl/fr/prices/">un prix réduit.</a><br /><span style="font-style: italic;"></span><span style="font-style: italic;"></p>
<p><span style="font-weight: bold;">2.2. Téléphones voIP</span></p>
<p></span>Des téléphones voIP commencent à être commercialisé et permettent de téléphoner en utilisant la technologie voIP depuis une borne wifi. On peut donc téléphoner à l'international aux prix (bas) de la voIP.</p>
<p>Actuellement, <a href="http://www.tech.youvox.fr/Les-apotres-du-GSM-entrent-en,0650">la guerre fait rage</a> à propos de la commercialisation des téléphones hybrides GSM/voIP. En effet, les puissants opérateurs (businessmen ndlr) ne veulent pas voir les factures de leurs clients (leur pactole ndlr) baisser grace à la voIP. On aura surement accés à cette technologie le jour où ils auront le monople d'Internet wifi aussi !</p>
<p>Il existe des possibilités de communiquer via les messageries IRC classiques (msn, yahoo, google talk, etc...) entre téléphones mobiles. Le logiciel <a href="http://www2.nimbuzz.com/">Nimbuzz</a> notamment permet, une fois installé sur le téléphone, d'utiliser toutes ces technologies. Néanmoins, là-aussi la connexion doit se faire par le réseau Internet (donc Wap). Les prix de la communication sont beaucoup plus élevés que le SMS.</p>
<p>L'Internaute réalise une bonne <a href="http://fr.news.yahoo.com/grp_test/20080211/ttc-les-tarifs-itinerants-de-l-internet-549fc7d_1.html">étude des prix et des offres d'Internet mobile </a>sur le marché français.</p>
<blockquote><p>Une bonne nouvelle de dernière minute, les prix devraient baisser :<br /><span style="font-weight: normal; font-style: italic;font-size:85%;"><span style="font-style: italic;">"</span></span><span style="font-weight: bold;font-size:85%;">Les tarifs itinérants de l'Internet mobile et des SMS dans le collimateur européen</span><span style="font-weight: normal; font-style: italic;font-size:85%;"><span style="font-style: italic;"><br />Les instances européennes préféreraient ne pas avoir à s'en mêler, mais si rien ne bouge, il y aura régulation, comme pour les appels vocaux. C'est le discours qu'a tenu Viviane Reding, la commissaire européenne en charge de la société de l'information, aux opérateurs de téléphonie mobile, en ouverture du salon Mobile World Congress (ex-3GSM) de Barcelone.</span>" </span>d'aprés <a href="http://fr.news.yahoo.com/grp_test/20080211/ttc-les-tarifs-itinerants-de-l-internet-549fc7d_1.html">Yahoo News du 12 Février 2008</a><br /><span style="font-style: italic;"><br /></span>Le roaming est "<span style="font-style: italic;">l'itinérance"</span>, facteur trés important de la norme GSM, qui doit permettre d'être appelé partout. Ce discours est la conséquence de la volonté de convergence vers un marché unique européen, et sa conséquence, un espace d'info commun.</p>
</blockquote>
<p>  ----<br /><span style="font-style: italic;"><br /></span><span style="font-weight: bold;font-size:130%;">3. De la téléphonie au Web</span></p>
<p><span style="font-style: italic;"></span>Rentrons maintenant dans le vif du sujet, c'est à dire la communication avec un site Internet depuis un téléphone cellulaire.</p>
<p><span style="font-style: italic; font-weight: bold;">3.1. Le microblog</p>
<p></span>Le <a href="http://fr.wikipedia.org/wiki/Microblog">microblog</a>, encore un nom à coucher dehors.<br />Simplement, il s'agit de poster des infos depuis un téléphone portable. Le site le plus connu est <a href="http://twitter.com/">Twitter</a>, qui permet d'informer vos amis que vous mangez une soupe ou que vous allez prendre le train (merveilleux, isn't it?). Autrement dit, il fonctionne comme un chat communautaire depuis votre téléphone.</p>
<p>Le site français <a href="http://www.bloggino.com/bloggino/welcome">Bloggino </a>n'est pas si mal : il permet de poster depuis SMS, mails, Messenger, etc... il permet de créer des salons privés pour de l'échange d'info.</p>
<p>Voici une de premières applications de <a href="http://www.tux-planet.fr/blog/?2007/12/31/217-bilboblog-application-php-de-micro-blogging-est-desormais-libre">microblog openSource</a> en php, qui gagnerai à être couplé à un Gateway pour accepter le SMS (ce n'est pas le cas pour le moment).<a href="http://www.commentquoi.com/quest-ce-que-le-microblogging.html"></a></p>
<p>On peut aussi utiliser Twitter pour créer un <a href="http://blog.loopion.com/web-20/comment-faire-un-systeme-dalerte-sms-gratuit-grace-a-twitter/">système d'alertes téléphoniques</a><br />pour</p>
<p><span style="font-style: italic;"><span style="font-weight: bold;">3.2. Poster un SMS sur son site</span></p>
<p></span>Tout d'abord, il est bien plus difficile de trouver une solution SMS > Web que d'envoyer un texto depuis un site Web... Néanmoins, il existe plusieurs solutions.
<ul>
<li><span style="font-weight: bold;">Récupérer les SMS sur un ordi depuis un téléphone</span></li>
</ul>
<p><span style="font-style: italic;">Problème </span>: rien n'est automatisé pour la mise en ligne.<br /><span style="font-style: italic;">Avantage : </span>pas besoin de connexion Internet.</p>
<p>Le logiciel <a href="http://www.winsms.com/">SMS Gateway </a>pour Windows et Linux permet de brancher un portable sur un ordi et donc de transférer les SMS. Plusieurs problèmes : la technologie de ce soft est vieille et plus mis à jour depuis longtemps mainte</p>
<p>nant.<br />Sous Ubuntu/Linux, le <a href="http://blog.creaone.fr/post/2007/10/18/Recuperer-les-donnees-de-son-mobile-depuis-Ubuntu">logiciel Wammu </a>synchronise le telephone et l'ordi par USB.</p>
<p>Sinon il existe des logiciels comme <a href="http://www.softpedia.com/get/Security/Encrypting/Device-Seizure.shtml">Device Seizure</a> qui sert à récupérer toutes les données d'un PDA ou téléphone (coût 895€, 1 mois d'essai gratuit). Il existe aussi <a href="http://mirasoftware.com/BPE2/">BluePhoneElite, </a>pour Mac, pour récupérer via le Bluetooth les infos SIM (prix du soft 25$).</p>
<ul style="font-weight: bold;">
<li>Récupérer les SMS depuis un lecteur de carte SIM</li>
</ul>
<p><span style="font-style: italic;">Problème </span>: rien n'est automatisé, vous devez vous procurer <a href="http://www.pearl.fr/article-HZ8000.html">un lecteur de carte SIM</a> (15€ en USB), vous ne pouvez récupérer que les SMS stockés dans la SIM, pas dans le tel.<br /><span style="font-style: italic;">Avantage : </span>pas besoin de connexion Internet</p>
<p>Le logiciel <a href="http://www.clubic.com/telecharger-fiche131512-gsm-sim-utility.html">GSM SIM Utility </a>vous permet de récupérer toutes les infos contenues dans une carte SIM. Il est gratuit et fonctionne avec Windows.</p>
<ul style="font-weight: bold;">
<li>Utiliser des services Web pour transférer les SMS</li>
</ul>
<p><span style="font-style: italic;">Problème </span>: pas d'automatisation non plus.</p>
<p>Des sites comme <a href="http://www.treasuremytext.com/">Treasuremytext</a> permettent de sauvegarder un ensemble de SMS en les envoyant sur le site, puis de les organiser et de les publier en ligne. La <a href="http://beta.treasuremytext.com/">version beta </a>est en cours de dev mais le problème reste entier puisque le numéro d'accés du site n'est accessible que depuis Europe et US/CND.</p>
<p>Orange propose un service <a href="http://www.orangeblog.fr/web/jsp/pop_help.jsp">de blog depuis SMS :</a> <span style="font-style: italic;">"Envoyez un SMS au 25647 (B-L-O-G-S sur votre clavier) avec comme texte : POST (espace) votre article.  Par exemple : POST belle journée aujourd?hui !" </span>Bien sûr, cela ne marche que si vous postez sur la plateforme OrangeBlog (enfoiré!).</p>
<ul style="font-weight: bold;">
<li>Créer un Gateway</li>
</ul>
<p>Pour les mordus du dev et de Linux, voici un <a href="http://blog.oav.net/dotclear/index.php?2006/11/22/26-passerelle-sms">tutorial pour créer votre gateway </a>avec un vieil ordi, un vieux téléphone et une carte sim aux SMS illimités. (bon courage !)</p>
<p>Vous pouvez aussi créer un central téléphonique local avec un ordinateur sur lequel vous aurez installé le système basé sur Linux, appelé <a href="http://fr.wikipedia.org/wiki/Asterisk_%28logiciel%29">Asterisk.</a> Ce système permet de gérer un VAPX, c'est à dire un standard de téléphonie interne/externe, pour une entreprise par exemple, intégrant les systèmes de voIP notamment. On peut créer avec Asterisk un gateway, un centre d'appel, bref il s'agit d'une interface complète pour créer une passerelle vers la téléphonie /ordinateur /internet. Avec de la patience pour l'install, un téléphone ou un lecteur SIM et une simple carte SIM, vous pourrez recevoir vos SMS sur l'ordinateur directement.<br />Le plus important va être ensuite le choix de l'opérateur, selon le prix des sms le(s) pays concerné(s).</p>
<p><span style="font-style: italic;"><br /><span style="font-weight: bold;">3.3. Podcast depuis une ligne téléphonique</span></span></p>
<p>Une bonne solution pour des reportages est le <span style="font-style: italic;">podcast </span>(pod + broadcast). Concrètement, il s'agit de mp3 contenant de l'info, la plupart du temps une sorte de blog, mais en format audio.</p>
<p>Certains sites proposent de réaliser des podcasts mp3 à partir de lignes téléphoniques, c a d d'enregistrer votre coup de fil comme un répondeur, mais en format numérique. Ensuite, ce mp3 est mis en ligne et diffusé. Cette solution semble trés simple et peu couteuse, mais les serveurs sont pour la plupart loins, et le prix d'un appel devient vite un problème.</p>
<p>Les sites américains <a href="http://www.gcast.com/htdb/services/phone.html">GCast, </a><a href="http://www.gabcast.com/">GabCast</a><span style="text-decoration: underline;"> ou</span><a href="http://www.hipcast.com/tour/tour.htm"> HipCast</a> propose d'appeler un numéro (gratuit depuis les USA), puis grace à un identifiant numérique et un PIN, vous pouvez vous enregistrer et publier directement sur un site de votre choix.</p>
<p>Il existe le plugin <a href="http://projects.alkaloid.net/e107_plugins/content/content.php?content.12">Podmail</a> pour Asterisk (voir 3.2 plus haut), qui permet de transférer le contenu du répondeur comme podcast.</p>
<p>Vous pouvez également <a http://www.skype.com/intl/fr/allfeatures/onlinenumber/">enregistrer une conversation Skype. </a>Avec <a href="http://www.skype.com/intl/fr/allfeatures/onlinenumber/">SkypeIn, </a>vous pouvez obtenir un numéro de téléphone classique pour votre compte Skype (50€/an). Ensuite, vous n'avez plus qu'à vous appeler et à laisser un message sur votre répondeur.<br /><a href="http://www.hipcast.com/tour/tour.htm"></a></p>
<p><span style="font-style: italic;"><span style="font-weight: bold;">3.4.  Géolocalisation et téléphonie mobile</span></p>
<p><a http://opennewsroom.blogspot.com/2008/02/geolocalisation-et-telephone-mobile.html">la suite et fin de cette partie </a>ajoutée le 20 fev. 2008<br /></span><br />http://www.servicesmobiles.fr/services_mobiles/2008/02/contribuer-la-l.html<br />http://www.developershome.com/sms/</p>
<p><span style="font-style: italic;"><span style="font-weight: bold;">3.5. Autres technologies en vrac</span></p>
<p></span>
<ul>
<li>La société <span style="font-style: italic;">Mobile Data Now </span>vient de publier une application qui permet d'<a href="http://www.atelier.fr/applications/10/11022008/mobile-data-now-application-acces-base-de-donnees-via-sms-telephone-mobile-world-congress-36005-.html">accéder à une base de données depuis un téléphone mobile</a>. Si pour le moment l'application commerciale de ce genre de plateformes est reservée aux traders qui consultent l'état de leur stock, on peut imaginer la capacité d'organisation et de réactivité pour délivrer des infos importantes à des groupes de personnes.</li>
</ul>
<ul>
<li> Un livre blanc pdf pour <a href="http://www.mctel.fr/livre%20blanc%20VideoSMS.pdf">créer un business paye-par-sms </a>pas à pas</li>
</ul>
<ul>
<li><a href="http://pingie.com/beta/index.php">Pingie, </a>un soft qui convertit les RSS en SMS</li>
</ul>
<ul>
<li>Envoyer des <a href="http://fr.mashable.com/2007/11/29/jangl-offre-desormais-les-sms-anonymes/">SMS anonymes</a></li>
</ul>
