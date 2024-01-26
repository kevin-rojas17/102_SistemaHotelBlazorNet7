¬r
uC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\CategoriaController.cs
	namespace

 	
SistemaHotel


 
.

 
Server

 
.

 
Controllers

 )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CategoriaController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly !
ICategoriaRepositorio .!
_categoriaRepositorio/ D
;D E
public 
CategoriaController "
(" #!
ICategoriaRepositorio# 8 
categoriaRepositorio9 M
,M N
IMapperO V
mapperW ]
)] ^
{ 	
_mapper 
= 
mapper 
; !
_categoriaRepositorio !
=" # 
categoriaRepositorio$ 8
;8 9
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Lista) .
(. /
)/ 0
{ 	
ResponseDTO 
< 
List 
< 
CategoriaDTO )
>) *
>* +
_ResponseDTO, 8
=9 :
new; >
ResponseDTO? J
<J K
ListK O
<O P
CategoriaDTOP \
>\ ]
>] ^
(^ _
)_ `
;` a
try 
{   
List!! 
<!! 
CategoriaDTO!! !
>!!! "
ListaCategoria!!# 1
=!!2 3
new!!4 7
List!!8 <
<!!< =
CategoriaDTO!!= I
>!!I J
(!!J K
)!!K L
;!!L M
ListaCategoria## 
=##  
_mapper##! (
.##( )
Map##) ,
<##, -
List##- 1
<##1 2
CategoriaDTO##2 >
>##> ?
>##? @
(##@ A
await##A F!
_categoriaRepositorio##G \
.##\ ]
Lista##] b
(##b c
)##c d
)##d e
;##e f
_ResponseDTO%% 
=%% 
new%% "
ResponseDTO%%# .
<%%. /
List%%/ 3
<%%3 4
CategoriaDTO%%4 @
>%%@ A
>%%A B
(%%B C
)%%C D
{%%E F
status%%G M
=%%N O
true%%P T
,%%T U
msg%%V Y
=%%Z [
$str%%\ `
,%%` a
value%%b g
=%%h i
ListaCategoria%%j x
}%%y z
;%%z {
return'' 

StatusCode'' !
(''! "
StatusCodes''" -
.''- .
Status200OK''. 9
,''9 :
_ResponseDTO''; G
)''G H
;''H I
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 
_ResponseDTO++ 
=++ 
new++ "
ResponseDTO++# .
<++. /
List++/ 3
<++3 4
CategoriaDTO++4 @
>++@ A
>++A B
(++B C
)++C D
{++E F
status++G M
=++N O
false++P U
,++U V
msg++W Z
=++[ \
ex++] _
.++_ `
Message++` g
,++g h
value++i n
=++o p
null++q u
}++v w
;++w x
return,, 

StatusCode,, !
(,,! "
StatusCodes,," -
.,,- .(
Status500InternalServerError,,. J
,,,J K
_ResponseDTO,,L X
),,X Y
;,,Y Z
}-- 
}.. 	
[11 	
HttpPost11	 
]11 
[22 	
Route22	 
(22 
$str22 
)22 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Guardar33) 0
(330 1
[331 2
FromBody332 :
]33: ;
CategoriaDTO33< H
request33I P
)33P Q
{44 	
ResponseDTO55 
<55 
CategoriaDTO55 $
>55$ %
_ResponseDTO55& 2
=553 4
new555 8
ResponseDTO559 D
<55D E
CategoriaDTO55E Q
>55Q R
(55R S
)55S T
;55T U
try66 
{77 
	Categoria88 

_categoria88 $
=88% &
_mapper88' .
.88. /
Map88/ 2
<882 3
	Categoria883 <
>88< =
(88= >
request88> E
)88E F
;88F G
	Categoria:: 
_categoriaCreada:: *
=::+ ,
await::- 2!
_categoriaRepositorio::3 H
.::H I
Crear::I N
(::N O

_categoria::O Y
)::Y Z
;::Z [
if<< 
(<< 
_categoriaCreada<< $
.<<$ %
IdCategoria<<% 0
!=<<1 3
$num<<4 5
)<<5 6
_ResponseDTO==  
===! "
new==# &
ResponseDTO==' 2
<==2 3
CategoriaDTO==3 ?
>==? @
(==@ A
)==A B
{==C D
status==E K
===L M
true==N R
,==R S
msg==T W
===X Y
$str==Z ^
,==^ _
value==` e
===f g
_mapper==h o
.==o p
Map==p s
<==s t
CategoriaDTO	==t Ä
>
==Ä Å
(
==Å Ç
_categoriaCreada
==Ç í
)
==í ì
}
==î ï
;
==ï ñ
else>> 
_ResponseDTO??  
=??! "
new??# &
ResponseDTO??' 2
<??2 3
CategoriaDTO??3 ?
>??? @
(??@ A
)??A B
{??C D
status??E K
=??L M
false??N S
,??S T
msg??U X
=??Y Z
$str??[ z
}??{ |
;??| }
returnAA 

StatusCodeAA !
(AA! "
StatusCodesAA" -
.AA- .
Status200OKAA. 9
,AA9 :
_ResponseDTOAA; G
)AAG H
;AAH I
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
_ResponseDTOEE 
=EE 
newEE "
ResponseDTOEE# .
<EE. /
CategoriaDTOEE/ ;
>EE; <
(EE< =
)EE= >
{EE? @
statusEEA G
=EEH I
falseEEJ O
,EEO P
msgEEQ T
=EEU V
exEEW Y
.EEY Z
MessageEEZ a
}EEb c
;EEc d
returnFF 

StatusCodeFF !
(FF! "
StatusCodesFF" -
.FF- .(
Status500InternalServerErrorFF. J
,FFJ K
_ResponseDTOFFL X
)FFX Y
;FFY Z
}GG 
}HH 	
[JJ 	
HttpPutJJ	 
]JJ 
[KK 	
RouteKK	 
(KK 
$strKK 
)KK 
]KK 
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
EditarLL) /
(LL/ 0
[LL0 1
FromBodyLL1 9
]LL9 :
CategoriaDTOLL; G
requestLLH O
)LLO P
{MM 	
ResponseDTONN 
<NN 
CategoriaDTONN $
>NN$ %
_ResponseDTONN& 2
=NN3 4
newNN5 8
ResponseDTONN9 D
<NND E
CategoriaDTONNE Q
>NNQ R
(NNR S
)NNS T
;NNT U
tryOO 
{PP 
	CategoriaQQ 

_categoriaQQ $
=QQ% &
_mapperQQ' .
.QQ. /
MapQQ/ 2
<QQ2 3
	CategoriaQQ3 <
>QQ< =
(QQ= >
requestQQ> E
)QQE F
;QQF G
	CategoriaRR  
_categoriaParaEditarRR .
=RR/ 0
awaitRR1 6!
_categoriaRepositorioRR7 L
.RRL M
ObtenerRRM T
(RRT U
uRRU V
=>RRW Y
uRRZ [
.RR[ \
IdCategoriaRR\ g
==RRh j

_categoriaRRk u
.RRu v
IdCategoria	RRv Å
)
RRÅ Ç
;
RRÇ É
ifTT 
(TT  
_categoriaParaEditarTT (
!=TT) +
nullTT, 0
)TT0 1
{UU  
_categoriaParaEditarWW (
.WW( )
DescripcionWW) 4
=WW5 6

_categoriaWW7 A
.WWA B
DescripcionWWB M
;WWM N
boolYY 
	respuestaYY "
=YY# $
awaitYY% *!
_categoriaRepositorioYY+ @
.YY@ A
EditarYYA G
(YYG H 
_categoriaParaEditarYYH \
)YY\ ]
;YY] ^
if[[ 
([[ 
	respuesta[[ !
)[[! "
_ResponseDTO\\ $
=\\% &
new\\' *
ResponseDTO\\+ 6
<\\6 7
CategoriaDTO\\7 C
>\\C D
(\\D E
)\\E F
{\\G H
status\\I O
=\\P Q
true\\R V
,\\V W
msg\\X [
=\\\ ]
$str\\^ b
,\\b c
value\\d i
=\\j k
_mapper\\l s
.\\s t
Map\\t w
<\\w x
CategoriaDTO	\\x Ñ
>
\\Ñ Ö
(
\\Ö Ü"
_categoriaParaEditar
\\Ü ö
)
\\ö õ
}
\\ú ù
;
\\ù û
else]] 
_ResponseDTO^^ $
=^^% &
new^^' *
ResponseDTO^^+ 6
<^^6 7
CategoriaDTO^^7 C
>^^C D
(^^D E
)^^E F
{^^G H
status^^I O
=^^P Q
false^^R W
,^^W X
msg^^Y \
=^^] ^
$str^^_ 
}
^^Ä Å
;
^^Å Ç
}__ 
else`` 
{aa 
_ResponseDTObb  
=bb! "
newbb# &
ResponseDTObb' 2
<bb2 3
CategoriaDTObb3 ?
>bb? @
(bb@ A
)bbA B
{bbC D
statusbbE K
=bbL M
falsebbN S
,bbS T
msgbbU X
=bbY Z
$strbb[ x
}bby z
;bbz {
}cc 
returnee 

StatusCodeee !
(ee! "
StatusCodesee" -
.ee- .
Status200OKee. 9
,ee9 :
_ResponseDTOee; G
)eeG H
;eeH I
}ff 
catchgg 
(gg 
	Exceptiongg 
exgg 
)gg  
{hh 
_ResponseDTOii 
=ii 
newii "
ResponseDTOii# .
<ii. /
CategoriaDTOii/ ;
>ii; <
(ii< =
)ii= >
{ii? @
statusiiA G
=iiH I
falseiiJ O
,iiO P
msgiiQ T
=iiU V
exiiW Y
.iiY Z
MessageiiZ a
}iib c
;iic d
returnjj 

StatusCodejj !
(jj! "
StatusCodesjj" -
.jj- .(
Status500InternalServerErrorjj. J
,jjJ K
_ResponseDTOjjL X
)jjX Y
;jjY Z
}kk 
}ll 	
[pp 	

HttpDeletepp	 
]pp 
[qq 	
Routeqq	 
(qq 
$strqq "
)qq" #
]qq# $
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
Eliminarrr) 1
(rr1 2
intrr2 5
idrr6 8
)rr8 9
{ss 	
ResponseDTOtt 
<tt 
stringtt 
>tt 
_ResponseDTOtt  ,
=tt- .
newtt/ 2
ResponseDTOtt3 >
<tt> ?
stringtt? E
>ttE F
(ttF G
)ttG H
;ttH I
tryuu 
{vv 
	Categoriaww 
_categoriaEliminarww ,
=ww- .
awaitww/ 4!
_categoriaRepositorioww5 J
.wwJ K
ObtenerwwK R
(wwR S
uwwS T
=>wwU W
uwwX Y
.wwY Z
IdCategoriawwZ e
==wwf h
idwwi k
)wwk l
;wwl m
ifyy 
(yy 
_categoriaEliminaryy &
!=yy' )
nullyy* .
)yy. /
{zz 
bool|| 
	respuesta|| "
=||# $
await||% *!
_categoriaRepositorio||+ @
.||@ A
Eliminar||A I
(||I J
_categoriaEliminar||J \
)||\ ]
;||] ^
if~~ 
(~~ 
	respuesta~~ !
)~~! "
_ResponseDTO $
=% &
new' *
ResponseDTO+ 6
<6 7
string7 =
>= >
(> ?
)? @
{A B
statusC I
=J K
trueL P
,P Q
msgR U
=V W
$strX \
,\ ]
value^ c
=d e
$strf h
}i j
;j k
else
ÄÄ 
_ResponseDTO
ÅÅ $
=
ÅÅ% &
new
ÅÅ' *
ResponseDTO
ÅÅ+ 6
<
ÅÅ6 7
string
ÅÅ7 =
>
ÅÅ= >
(
ÅÅ> ?
)
ÅÅ? @
{
ÅÅA B
status
ÅÅC I
=
ÅÅJ K
false
ÅÅL Q
,
ÅÅQ R
msg
ÅÅS V
=
ÅÅW X
$str
ÅÅY {
,
ÅÅ{ |
valueÅÅ} Ç
=ÅÅÉ Ñ
$strÅÅÖ á
}ÅÅà â
;ÅÅâ ä
}
ÇÇ 
return
ÑÑ 

StatusCode
ÑÑ !
(
ÑÑ! "
StatusCodes
ÑÑ" -
.
ÑÑ- .
Status200OK
ÑÑ. 9
,
ÑÑ9 :
_ResponseDTO
ÑÑ; G
)
ÑÑG H
;
ÑÑH I
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
	Exception
ÜÜ 
ex
ÜÜ 
)
ÜÜ  
{
áá 
_ResponseDTO
àà 
=
àà 
new
àà "
ResponseDTO
àà# .
<
àà. /
string
àà/ 5
>
àà5 6
(
àà6 7
)
àà7 8
{
àà9 :
status
àà; A
=
ààB C
false
ààD I
,
ààI J
msg
ààK N
=
ààO P
ex
ààQ S
.
ààS T
Message
ààT [
}
àà\ ]
;
àà] ^
return
ââ 

StatusCode
ââ !
(
ââ! "
StatusCodes
ââ" -
.
ââ- .*
Status500InternalServerError
ââ. J
,
ââJ K
_ResponseDTO
ââL X
)
ââX Y
;
ââY Z
}
ää 
}
ãã 	
}
åå 
}çç ãu
sC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\ClienteController.cs
	namespace		 	
SistemaHotel		
 
.		 
Server		 
.		 
Controllers		 )
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ClienteController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IClienteRepositorio ,
_clienteRepositorio- @
;@ A
public 
ClienteController  
(  !
IClienteRepositorio! 4
clienteRepositorio5 G
,G H
IMapperI P
mapperQ W
)W X
{ 	
_mapper 
= 
mapper 
; 
_clienteRepositorio 
=  !
clienteRepositorio" 4
;4 5
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Lista) .
(. /
)/ 0
{ 	
ResponseDTO 
< 
List 
< 

ClienteDTO '
>' (
>( )
_ResponseDTO* 6
=7 8
new9 <
ResponseDTO= H
<H I
ListI M
<M N

ClienteDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
try 
{ 
List   
<   

ClienteDTO   
>    
ListaModelo  ! ,
=  - .
new  / 2
List  3 7
<  7 8

ClienteDTO  8 B
>  B C
(  C D
)  D E
;  E F
ListaModelo"" 
="" 
_mapper"" %
.""% &
Map""& )
<"") *
List""* .
<"". /

ClienteDTO""/ 9
>""9 :
>"": ;
(""; <
await""< A
_clienteRepositorio""B U
.""U V
Lista""V [
(""[ \
)""\ ]
)""] ^
;""^ _
_ResponseDTO$$ 
=$$ 
new$$ "
ResponseDTO$$# .
<$$. /
List$$/ 3
<$$3 4

ClienteDTO$$4 >
>$$> ?
>$$? @
($$@ A
)$$A B
{$$C D
status$$E K
=$$L M
true$$N R
,$$R S
msg$$T W
=$$X Y
$str$$Z ^
,$$^ _
value$$` e
=$$f g
ListaModelo$$h s
}$$t u
;$$u v
return&& 

StatusCode&& !
(&&! "
StatusCodes&&" -
.&&- .
Status200OK&&. 9
,&&9 :
_ResponseDTO&&; G
)&&G H
;&&H I
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
_ResponseDTO** 
=** 
new** "
ResponseDTO**# .
<**. /
List**/ 3
<**3 4

ClienteDTO**4 >
>**> ?
>**? @
(**@ A
)**A B
{**C D
status**E K
=**L M
false**N S
,**S T
msg**U X
=**Y Z
ex**[ ]
.**] ^
Message**^ e
,**e f
value**g l
=**m n
null**o s
}**t u
;**u v
return++ 

StatusCode++ !
(++! "
StatusCodes++" -
.++- .(
Status500InternalServerError++. J
,++J K
_ResponseDTO++L X
)++X Y
;++Y Z
},, 
}-- 	
[00 	
HttpPost00	 
]00 
[11 	
Route11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Guardar22) 0
(220 1
[221 2
FromBody222 :
]22: ;

ClienteDTO22< F
request22G N
)22N O
{33 	
ResponseDTO44 
<44 

ClienteDTO44 "
>44" #
_ResponseDTO44$ 0
=441 2
new443 6
ResponseDTO447 B
<44B C

ClienteDTO44C M
>44M N
(44N O
)44O P
;44P Q
try55 
{66 
Cliente77 

_categoria77 "
=77# $
_mapper77% ,
.77, -
Map77- 0
<770 1
Cliente771 8
>778 9
(779 :
request77: A
)77A B
;77B C
Cliente99 
_categoriaCreada99 (
=99) *
await99+ 0
_clienteRepositorio991 D
.99D E
Crear99E J
(99J K

_categoria99K U
)99U V
;99V W
if;; 
(;; 
_categoriaCreada;; $
.;;$ %
	IdCliente;;% .
!=;;/ 1
$num;;2 3
);;3 4
_ResponseDTO<<  
=<<! "
new<<# &
ResponseDTO<<' 2
<<<2 3

ClienteDTO<<3 =
><<= >
(<<> ?
)<<? @
{<<A B
status<<C I
=<<J K
true<<L P
,<<P Q
msg<<R U
=<<V W
$str<<X \
,<<\ ]
value<<^ c
=<<d e
_mapper<<f m
.<<m n
Map<<n q
<<<q r

ClienteDTO<<r |
><<| }
(<<} ~
_categoriaCreada	<<~ é
)
<<é è
}
<<ê ë
;
<<ë í
else== 
_ResponseDTO>>  
=>>! "
new>># &
ResponseDTO>>' 2
<>>2 3

ClienteDTO>>3 =
>>>= >
(>>> ?
)>>? @
{>>A B
status>>C I
=>>J K
false>>L Q
,>>Q R
msg>>S V
=>>W X
$str>>Y v
}>>w x
;>>x y
return@@ 

StatusCode@@ !
(@@! "
StatusCodes@@" -
.@@- .
Status200OK@@. 9
,@@9 :
_ResponseDTO@@; G
)@@G H
;@@H I
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
_ResponseDTODD 
=DD 
newDD "
ResponseDTODD# .
<DD. /

ClienteDTODD/ 9
>DD9 :
(DD: ;
)DD; <
{DD= >
statusDD? E
=DDF G
falseDDH M
,DDM N
msgDDO R
=DDS T
exDDU W
.DDW X
MessageDDX _
}DD` a
;DDa b
returnEE 

StatusCodeEE !
(EE! "
StatusCodesEE" -
.EE- .(
Status500InternalServerErrorEE. J
,EEJ K
_ResponseDTOEEL X
)EEX Y
;EEY Z
}FF 
}GG 	
[II 	
HttpPutII	 
]II 
[JJ 	
RouteJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
EditarKK) /
(KK/ 0
[KK0 1
FromBodyKK1 9
]KK9 :

ClienteDTOKK; E
requestKKF M
)KKM N
{LL 	
ResponseDTOMM 
<MM 

ClienteDTOMM "
>MM" #
_ResponseDTOMM$ 0
=MM1 2
newMM3 6
ResponseDTOMM7 B
<MMB C

ClienteDTOMMC M
>MMM N
(MMN O
)MMO P
;MMP Q
tryNN 
{OO 
ClientePP 
_modeloPP 
=PP  !
_mapperPP" )
.PP) *
MapPP* -
<PP- .
ClientePP. 5
>PP5 6
(PP6 7
requestPP7 >
)PP> ?
;PP? @
ClienteQQ 
_modeloParaEditarQQ )
=QQ* +
awaitQQ, 1
_clienteRepositorioQQ2 E
.QQE F
ObtenerQQF M
(QQM N
uQQN O
=>QQP R
uQQS T
.QQT U
	IdClienteQQU ^
==QQ_ a
_modeloQQb i
.QQi j
	IdClienteQQj s
)QQs t
;QQt u
ifSS 
(SS 
_modeloParaEditarSS %
!=SS& (
nullSS) -
)SS- .
{TT 
_modeloParaEditarUU %
.UU% &
TipoDocumentoUU& 3
=UU4 5
_modeloUU6 =
.UU= >
TipoDocumentoUU> K
;UUK L
_modeloParaEditarVV %
.VV% &
	DocumentoVV& /
=VV0 1
_modeloVV2 9
.VV9 :
	DocumentoVV: C
;VVC D
_modeloParaEditarWW %
.WW% &
NombreCompletoWW& 4
=WW5 6
_modeloWW7 >
.WW> ?
NombreCompletoWW? M
;WWM N
_modeloParaEditarXX %
.XX% &
CorreoXX& ,
=XX- .
_modeloXX/ 6
.XX6 7
CorreoXX7 =
;XX= >
boolZZ 
	respuestaZZ "
=ZZ# $
awaitZZ% *
_clienteRepositorioZZ+ >
.ZZ> ?
EditarZZ? E
(ZZE F
_modeloParaEditarZZF W
)ZZW X
;ZZX Y
if\\ 
(\\ 
	respuesta\\ !
)\\! "
_ResponseDTO]] $
=]]% &
new]]' *
ResponseDTO]]+ 6
<]]6 7

ClienteDTO]]7 A
>]]A B
(]]B C
)]]C D
{]]E F
status]]G M
=]]N O
true]]P T
,]]T U
msg]]V Y
=]]Z [
$str]]\ `
,]]` a
value]]b g
=]]h i
_mapper]]j q
.]]q r
Map]]r u
<]]u v

ClienteDTO	]]v Ä
>
]]Ä Å
(
]]Å Ç
_modeloParaEditar
]]Ç ì
)
]]ì î
}
]]ï ñ
;
]]ñ ó
else^^ 
_ResponseDTO__ $
=__% &
new__' *
ResponseDTO__+ 6
<__6 7

ClienteDTO__7 A
>__A B
(__B C
)__C D
{__E F
status__G M
=__N O
false__P U
,__U V
msg__W Z
=__[ \
$str__] {
}__| }
;__} ~
}`` 
elseaa 
{bb 
_ResponseDTOcc  
=cc! "
newcc# &
ResponseDTOcc' 2
<cc2 3

ClienteDTOcc3 =
>cc= >
(cc> ?
)cc? @
{ccA B
statusccC I
=ccJ K
falseccL Q
,ccQ R
msgccS V
=ccW X
$strccY t
}ccu v
;ccv w
}dd 
returnff 

StatusCodeff !
(ff! "
StatusCodesff" -
.ff- .
Status200OKff. 9
,ff9 :
_ResponseDTOff; G
)ffG H
;ffH I
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
_ResponseDTOjj 
=jj 
newjj "
ResponseDTOjj# .
<jj. /

ClienteDTOjj/ 9
>jj9 :
(jj: ;
)jj; <
{jj= >
statusjj? E
=jjF G
falsejjH M
,jjM N
msgjjO R
=jjS T
exjjU W
.jjW X
MessagejjX _
}jj` a
;jja b
returnkk 

StatusCodekk !
(kk! "
StatusCodeskk" -
.kk- .(
Status500InternalServerErrorkk. J
,kkJ K
_ResponseDTOkkL X
)kkX Y
;kkY Z
}ll 
}mm 	
[qq 	

HttpDeleteqq	 
]qq 
[rr 	
Routerr	 
(rr 
$strrr "
)rr" #
]rr# $
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (
Eliminarss) 1
(ss1 2
intss2 5
idss6 8
)ss8 9
{tt 	
ResponseDTOuu 
<uu 
stringuu 
>uu 
_ResponseDTOuu  ,
=uu- .
newuu/ 2
ResponseDTOuu3 >
<uu> ?
stringuu? E
>uuE F
(uuF G
)uuG H
;uuH I
tryvv 
{ww 
Clientexx 
_modeloEliminarxx '
=xx( )
awaitxx* /
_clienteRepositorioxx0 C
.xxC D
ObtenerxxD K
(xxK L
uxxL M
=>xxN P
uxxQ R
.xxR S
	IdClientexxS \
==xx] _
idxx` b
)xxb c
;xxc d
ifyy 
(yy 
_modeloEliminaryy #
!=yy$ &
nullyy' +
)yy+ ,
{zz 
bool|| 
	respuesta|| "
=||# $
await||% *
_clienteRepositorio||+ >
.||> ?
Eliminar||? G
(||G H
_modeloEliminar||H W
)||W X
;||X Y
if~~ 
(~~ 
	respuesta~~ !
)~~! "
_ResponseDTO $
=% &
new' *
ResponseDTO+ 6
<6 7
string7 =
>= >
(> ?
)? @
{A B
statusC I
=J K
trueL P
,P Q
msgR U
=V W
$strX \
,\ ]
value^ c
=d e
$strf h
}i j
;j k
else
ÄÄ 
_ResponseDTO
ÅÅ $
=
ÅÅ% &
new
ÅÅ' *
ResponseDTO
ÅÅ+ 6
<
ÅÅ6 7
string
ÅÅ7 =
>
ÅÅ= >
(
ÅÅ> ?
)
ÅÅ? @
{
ÅÅA B
status
ÅÅC I
=
ÅÅJ K
false
ÅÅL Q
,
ÅÅQ R
msg
ÅÅS V
=
ÅÅW X
$str
ÅÅY y
,
ÅÅy z
valueÅÅ{ Ä
=ÅÅÅ Ç
$strÅÅÉ Ö
}ÅÅÜ á
;ÅÅá à
}
ÇÇ 
return
ÑÑ 

StatusCode
ÑÑ !
(
ÑÑ! "
StatusCodes
ÑÑ" -
.
ÑÑ- .
Status200OK
ÑÑ. 9
,
ÑÑ9 :
_ResponseDTO
ÑÑ; G
)
ÑÑG H
;
ÑÑH I
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
	Exception
ÜÜ 
ex
ÜÜ 
)
ÜÜ  
{
áá 
_ResponseDTO
àà 
=
àà 
new
àà "
ResponseDTO
àà# .
<
àà. /
string
àà/ 5
>
àà5 6
(
àà6 7
)
àà7 8
{
àà9 :
status
àà; A
=
ààB C
false
ààD I
,
ààI J
msg
ààK N
=
ààO P
ex
ààQ S
.
ààS T
Message
ààT [
}
àà\ ]
;
àà] ^
return
ââ 

StatusCode
ââ !
(
ââ! "
StatusCodes
ââ" -
.
ââ- .*
Status500InternalServerError
ââ. J
,
ââJ K
_ResponseDTO
ââL X
)
ââX Y
;
ââY Z
}
ää 
}
ãã 	
}
çç 
}éé Ê!
uC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\DashBoardController.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Controllers )
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
DashBoardController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly !
IDashBoardRepositorio .!
_dashboardRepositorio/ D
;D E
public 
DashBoardController "
(" #!
IDashBoardRepositorio# 8 
dashboardRepositorio9 M
,M N
IMapperO V
mapperW ]
)] ^
{ 	
_mapper 
= 
mapper 
; !
_dashboardRepositorio !
=" # 
dashboardRepositorio$ 8
;8 9
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Resumen) 0
(0 1
)1 2
{ 	
ResponseDTO 
< 
DashBoardDTO $
>$ %
	_response& /
=0 1
new2 5
ResponseDTO6 A
<A B
DashBoardDTOB N
>N O
(O P
)P Q
;Q R
try 
{ 
DashBoardDTO 
vmDashboard (
=) *
new+ .
DashBoardDTO/ ;
(; <
)< =
;= >
vmDashboard 
. 
TotalHabitaciones -
=. /
await0 5!
_dashboardRepositorio6 K
.K L
TotalHabitacionesL ]
(] ^
)^ _
;_ `
vmDashboard   
.   (
TotalHabitacionesDisponibles   8
=  9 :
await  ; @!
_dashboardRepositorio  A V
.  V W#
HabitacionesDisponibles  W n
(  n o
)  o p
;  p q
vmDashboard!! 
.!! '
TotalHabitacionesEnLimpieza!! 7
=!!8 9
await!!: ?!
_dashboardRepositorio!!@ U
.!!U V 
HabitacionesLimpieza!!V j
(!!j k
)!!k l
;!!l m
vmDashboard"" 
."" %
TotalHabitacionesOcupadas"" 5
=""6 7
await""8 =!
_dashboardRepositorio""> S
.""S T 
HabitacionesOcupadas""T h
(""h i
)""i j
;""j k
	_response$$ 
=$$ 
new$$ 
ResponseDTO$$  +
<$$+ ,
DashBoardDTO$$, 8
>$$8 9
($$9 :
)$$: ;
{$$< =
status$$> D
=$$E F
true$$G K
,$$K L
msg$$M P
=$$Q R
$str$$S W
,$$W X
value$$Y ^
=$$_ `
vmDashboard$$a l
}$$m n
;$$n o
return%% 

StatusCode%% !
(%%! "
StatusCodes%%" -
.%%- .
Status200OK%%. 9
,%%9 :
	_response%%; D
)%%D E
;%%E F
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
	_response** 
=** 
new** 
ResponseDTO**  +
<**+ ,
DashBoardDTO**, 8
>**8 9
(**9 :
)**: ;
{**< =
status**> D
=**E F
false**G L
,**L M
msg**N Q
=**R S
ex**T V
.**V W
Message**W ^
,**^ _
value**` e
=**f g
null**h l
}**m n
;**n o
return++ 

StatusCode++ !
(++! "
StatusCodes++" -
.++- .(
Status500InternalServerError++. J
,++J K
	_response++L U
)++U V
;++V W
},, 
}.. 	
}// 
}00 £ù
vC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\HabitacionController.cs
	namespace

 	
SistemaHotel


 
.

 
Server

 
.

 
Controllers

 )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
HabitacionController %
:& '
ControllerBase( 6
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly "
IHabitacionRepositorio /"
_habitacionRepositorio0 F
;F G
public  
HabitacionController #
(# $"
IHabitacionRepositorio$ :!
habitacionRepositorio; P
,P Q
IMapperR Y
mapperZ `
)` a
{ 	
_mapper 
= 
mapper 
; "
_habitacionRepositorio "
=# $!
habitacionRepositorio% :
;: ;
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str '
)' (
]( )
public 
async 
Task 
< 
IActionResult '
>' (
Obtener) 0
(0 1
int1 4
idHabitacion5 A
)A B
{ 	
ResponseDTO 
< 
HabitacionDTO %
>% &
_ResponseDTO' 3
=4 5
new6 9
ResponseDTO: E
<E F
HabitacionDTOF S
>S T
(T U
)U V
;V W
try 
{   
HabitacionDTO!! 
Modelo!! $
=!!% &
new!!' *
HabitacionDTO!!+ 8
(!!8 9
)!!9 :
;!!: ;

IQueryable## 
<## 

Habitacion## %
>##% &
query##' ,
=##- .
await##/ 4"
_habitacionRepositorio##5 K
.##K L
	Consultar##L U
(##U V
h##W X
=>##Y [
h##\ ]
.##] ^
IdHabitacion##^ j
==##k m
idHabitacion##n z
)##z {
;##{ |
query$$ 
=$$ 
query$$ 
.%% 
Include%% 
(%% 
r%% 
=>%% !
r%%" #
.%%# $(
IdEstadoHabitacionNavigation%%$ @
)%%@ A
.&& 
Include&& 
(&& 
r&& 
=>&& !
r&&" #
.&&# $
IdPisoNavigation&&$ 4
)&&4 5
.'' 
Include'' 
('' 
r'' 
=>'' !
r''" #
.''# $!
IdCategoriaNavigation''$ 9
)''9 :
;'': ;
Modelo)) 
=)) 
_mapper))  
.))  !
Map))! $
<))$ %
HabitacionDTO))% 2
>))2 3
())3 4
query))4 9
.))9 :
FirstOrDefault)): H
())H I
)))I J
)))J K
;))K L
_ResponseDTO++ 
=++ 
new++ "
ResponseDTO++# .
<++. /
HabitacionDTO++/ <
>++< =
(++= >
)++> ?
{++@ A
status++B H
=++I J
true++K O
,++O P
msg++Q T
=++U V
$str++W [
,++[ \
value++] b
=++c d
Modelo++e k
}++l m
;++m n
return-- 

StatusCode-- !
(--! "
StatusCodes--" -
.--- .
Status200OK--. 9
,--9 :
_ResponseDTO--; G
)--G H
;--H I
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
_ResponseDTO11 
=11 
new11 "
ResponseDTO11# .
<11. /
HabitacionDTO11/ <
>11< =
(11= >
)11> ?
{11@ A
status11B H
=11I J
false11K P
,11P Q
msg11R U
=11V W
ex11X Z
.11Z [
Message11[ b
,11b c
value11d i
=11j k
null11l p
}11q r
;11r s
return22 

StatusCode22 !
(22! "
StatusCodes22" -
.22- .(
Status500InternalServerError22. J
,22J K
_ResponseDTO22L X
)22X Y
;22Y Z
}33 
}44 	
[66 	
HttpGet66	 
]66 
[77 	
Route77	 
(77 
$str77 
)77 
]77 
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (
Lista88) .
(88. /
)88/ 0
{99 	
ResponseDTO:: 
<:: 
List:: 
<:: 
HabitacionDTO:: *
>::* +
>::+ ,
_ResponseDTO::- 9
=::: ;
new::< ?
ResponseDTO::@ K
<::K L
List::L P
<::P Q
HabitacionDTO::Q ^
>::^ _
>::_ `
(::` a
)::a b
;::b c
try<< 
{== 
List>> 
<>> 
HabitacionDTO>> "
>>>" #
ListaModelo>>$ /
=>>0 1
new>>2 5
List>>6 :
<>>: ;
HabitacionDTO>>; H
>>>H I
(>>I J
)>>J K
;>>K L

IQueryable@@ 
<@@ 

Habitacion@@ %
>@@% &
query@@' ,
=@@- .
await@@/ 4"
_habitacionRepositorio@@5 K
.@@K L
	Consultar@@L U
(@@U V
)@@V W
;@@W X
queryAA 
=AA 
queryAA 
.BB 
IncludeBB 
(BB 
rBB 
=>BB !
rBB" #
.BB# $(
IdEstadoHabitacionNavigationBB$ @
)BB@ A
.CC 
IncludeCC 
(CC 
rCC 
=>CC !
rCC" #
.CC# $
IdPisoNavigationCC$ 4
)CC4 5
.DD 
IncludeDD 
(DD 
rDD 
=>DD !
rDD" #
.DD# $!
IdCategoriaNavigationDD$ 9
)DD9 :
;DD: ;
ListaModeloFF 
=FF 
_mapperFF %
.FF% &
MapFF& )
<FF) *
ListFF* .
<FF. /
HabitacionDTOFF/ <
>FF< =
>FF= >
(FF> ?
queryFF? D
.FFD E
ToListFFE K
(FFK L
)FFL M
)FFM N
;FFN O
_ResponseDTOHH 
=HH 
newHH "
ResponseDTOHH# .
<HH. /
ListHH/ 3
<HH3 4
HabitacionDTOHH4 A
>HHA B
>HHB C
(HHC D
)HHD E
{HHF G
statusHHH N
=HHO P
trueHHQ U
,HHU V
msgHHW Z
=HH[ \
$strHH] a
,HHa b
valueHHc h
=HHi j
ListaModeloHHk v
}HHw x
;HHx y
returnJJ 

StatusCodeJJ !
(JJ! "
StatusCodesJJ" -
.JJ- .
Status200OKJJ. 9
,JJ9 :
_ResponseDTOJJ; G
)JJG H
;JJH I
}KK 
catchLL 
(LL 
	ExceptionLL 
exLL 
)LL  
{MM 
_ResponseDTONN 
=NN 
newNN "
ResponseDTONN# .
<NN. /
ListNN/ 3
<NN3 4
HabitacionDTONN4 A
>NNA B
>NNB C
(NNC D
)NND E
{NNF G
statusNNH N
=NNO P
falseNNQ V
,NNV W
msgNNX [
=NN\ ]
exNN^ `
.NN` a
MessageNNa h
,NNh i
valueNNj o
=NNp q
nullNNr v
}NNw x
;NNx y
returnOO 

StatusCodeOO !
(OO! "
StatusCodesOO" -
.OO- .(
Status500InternalServerErrorOO. J
,OOJ K
_ResponseDTOOOL X
)OOX Y
;OOY Z
}PP 
}QQ 	
[TT 	
HttpPostTT	 
]TT 
[UU 	
RouteUU	 
(UU 
$strUU 
)UU 
]UU 
publicVV 
asyncVV 
TaskVV 
<VV 
IActionResultVV '
>VV' (
GuardarVV) 0
(VV0 1
[VV1 2
FromBodyVV2 :
]VV: ;
HabitacionDTOVV< I
requestVVJ Q
)VVQ R
{WW 	
ResponseDTOXX 
<XX 
HabitacionDTOXX %
>XX% &
_ResponseDTOXX' 3
=XX4 5
newXX6 9
ResponseDTOXX: E
<XXE F
HabitacionDTOXXF S
>XXS T
(XXT U
)XXU V
;XXV W
tryYY 
{ZZ 

Habitacion[[ 
_habitacion[[ &
=[[' (
_mapper[[) 0
.[[0 1
Map[[1 4
<[[4 5

Habitacion[[5 ?
>[[? @
([[@ A
request[[A H
)[[H I
;[[I J

Habitacion]] 
_habitacionCreada]] ,
=]]- .
await]]/ 4"
_habitacionRepositorio]]5 K
.]]K L
Crear]]L Q
(]]Q R
_habitacion]]R ]
)]]] ^
;]]^ _
if__ 
(__ 
_habitacionCreada__ %
.__% &
IdHabitacion__& 2
!=__3 5
$num__6 7
)__7 8
_ResponseDTO``  
=``! "
new``# &
ResponseDTO``' 2
<``2 3
HabitacionDTO``3 @
>``@ A
(``A B
)``B C
{``D E
status``F L
=``M N
true``O S
,``S T
msg``U X
=``Y Z
$str``[ _
,``_ `
value``a f
=``g h
_mapper``i p
.``p q
Map``q t
<``t u
HabitacionDTO	``u Ç
>
``Ç É
(
``É Ñ
_habitacionCreada
``Ñ ï
)
``ï ñ
}
``ó ò
;
``ò ô
elseaa 
_ResponseDTObb  
=bb! "
newbb# &
ResponseDTObb' 2
<bb2 3
HabitacionDTObb3 @
>bb@ A
(bbA B
)bbB C
{bbD E
statusbbF L
=bbM N
falsebbO T
,bbT U
msgbbV Y
=bbZ [
$strbb\ |
}bb} ~
;bb~ 
returndd 

StatusCodedd !
(dd! "
StatusCodesdd" -
.dd- .
Status200OKdd. 9
,dd9 :
_ResponseDTOdd; G
)ddG H
;ddH I
}ee 
catchff 
(ff 
	Exceptionff 
exff 
)ff  
{gg 
_ResponseDTOhh 
=hh 
newhh "
ResponseDTOhh# .
<hh. /
HabitacionDTOhh/ <
>hh< =
(hh= >
)hh> ?
{hh@ A
statushhB H
=hhI J
falsehhK P
,hhP Q
msghhR U
=hhV W
exhhX Z
.hhZ [
Messagehh[ b
}hhc d
;hhd e
returnii 

StatusCodeii !
(ii! "
StatusCodesii" -
.ii- .(
Status500InternalServerErrorii. J
,iiJ K
_ResponseDTOiiL X
)iiX Y
;iiY Z
}jj 
}kk 	
[mm 	
HttpPutmm	 
]mm 
[nn 	
Routenn	 
(nn 
$strnn 
)nn 
]nn 
publicoo 
asyncoo 
Taskoo 
<oo 
IActionResultoo '
>oo' (
Editaroo) /
(oo/ 0
[oo0 1
FromBodyoo1 9
]oo9 :
HabitacionDTOoo; H
requestooI P
)ooP Q
{pp 	
ResponseDTOqq 
<qq 
HabitacionDTOqq %
>qq% &
_ResponseDTOqq' 3
=qq4 5
newqq6 9
ResponseDTOqq: E
<qqE F
HabitacionDTOqqF S
>qqS T
(qqT U
)qqU V
;qqV W
tryrr 
{ss 

Habitaciontt 
_modelott "
=tt# $
_mappertt% ,
.tt, -
Maptt- 0
<tt0 1

Habitaciontt1 ;
>tt; <
(tt< =
requesttt= D
)ttD E
;ttE F

Habitacionuu 
_modeloParaEditaruu ,
=uu- .
awaituu/ 4"
_habitacionRepositoriouu5 K
.uuK L
ObteneruuL S
(uuS T
uuuT U
=>uuV X
uuuY Z
.uuZ [
IdHabitacionuu[ g
==uuh j
_modelouuk r
.uur s
IdHabitacionuus 
)	uu Ä
;
uuÄ Å
ifww 
(ww 
_modeloParaEditarww %
!=ww& (
nullww) -
)ww- .
{xx 
_modeloParaEditaryy %
.yy% &
Numeroyy& ,
=yy- .
_modeloyy/ 6
.yy6 7
Numeroyy7 =
;yy= >
_modeloParaEditarzz %
.zz% &
Detallezz& -
=zz. /
_modelozz0 7
.zz7 8
Detallezz8 ?
;zz? @
_modeloParaEditar{{ %
.{{% &
Precio{{& ,
={{- .
_modelo{{/ 6
.{{6 7
Precio{{7 =
;{{= >
_modeloParaEditar|| %
.||% &
IdEstadoHabitacion||& 8
=||9 :
_modelo||; B
.||B C
IdEstadoHabitacion||C U
;||U V
_modeloParaEditar}} %
.}}% &
IdPiso}}& ,
=}}- .
_modelo}}/ 6
.}}6 7
IdPiso}}7 =
;}}= >
_modeloParaEditar~~ %
.~~% &
IdCategoria~~& 1
=~~2 3
_modelo~~4 ;
.~~; <
IdCategoria~~< G
;~~G H
bool
ÄÄ 
	respuesta
ÄÄ "
=
ÄÄ# $
await
ÄÄ% *$
_habitacionRepositorio
ÄÄ+ A
.
ÄÄA B
Editar
ÄÄB H
(
ÄÄH I
_modeloParaEditar
ÄÄI Z
)
ÄÄZ [
;
ÄÄ[ \
if
ÇÇ 
(
ÇÇ 
	respuesta
ÇÇ !
)
ÇÇ! "
_ResponseDTO
ÉÉ $
=
ÉÉ% &
new
ÉÉ' *
ResponseDTO
ÉÉ+ 6
<
ÉÉ6 7
HabitacionDTO
ÉÉ7 D
>
ÉÉD E
(
ÉÉE F
)
ÉÉF G
{
ÉÉH I
status
ÉÉJ P
=
ÉÉQ R
true
ÉÉS W
,
ÉÉW X
msg
ÉÉY \
=
ÉÉ] ^
$str
ÉÉ_ c
,
ÉÉc d
value
ÉÉe j
=
ÉÉk l
_mapper
ÉÉm t
.
ÉÉt u
Map
ÉÉu x
<
ÉÉx y
HabitacionDTOÉÉy Ü
>ÉÉÜ á
(ÉÉá à!
_modeloParaEditarÉÉà ô
)ÉÉô ö
}ÉÉõ ú
;ÉÉú ù
else
ÑÑ 
_ResponseDTO
ÖÖ $
=
ÖÖ% &
new
ÖÖ' *
ResponseDTO
ÖÖ+ 6
<
ÖÖ6 7
HabitacionDTO
ÖÖ7 D
>
ÖÖD E
(
ÖÖE F
)
ÖÖF G
{
ÖÖH I
status
ÖÖJ P
=
ÖÖQ R
false
ÖÖS X
,
ÖÖX Y
msg
ÖÖZ ]
=
ÖÖ^ _
$strÖÖ` Å
}ÖÖÇ É
;ÖÖÉ Ñ
}
ÜÜ 
else
áá 
{
àà 
_ResponseDTO
ââ  
=
ââ! "
new
ââ# &
ResponseDTO
ââ' 2
<
ââ2 3
HabitacionDTO
ââ3 @
>
ââ@ A
(
ââA B
)
ââB C
{
ââD E
status
ââF L
=
ââM N
false
ââO T
,
ââT U
msg
ââV Y
=
ââZ [
$str
ââ\ z
}
ââ{ |
;
ââ| }
}
ää 
return
åå 

StatusCode
åå !
(
åå! "
StatusCodes
åå" -
.
åå- .
Status200OK
åå. 9
,
åå9 :
_ResponseDTO
åå; G
)
ååG H
;
ååH I
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
èè 
_ResponseDTO
êê 
=
êê 
new
êê "
ResponseDTO
êê# .
<
êê. /
HabitacionDTO
êê/ <
>
êê< =
(
êê= >
)
êê> ?
{
êê@ A
status
êêB H
=
êêI J
false
êêK P
,
êêP Q
msg
êêR U
=
êêV W
ex
êêX Z
.
êêZ [
Message
êê[ b
}
êêc d
;
êêd e
return
ëë 

StatusCode
ëë !
(
ëë! "
StatusCodes
ëë" -
.
ëë- .*
Status500InternalServerError
ëë. J
,
ëëJ K
_ResponseDTO
ëëL X
)
ëëX Y
;
ëëY Z
}
íí 
}
ìì 	
[
óó 	

HttpDelete
óó	 
]
óó 
[
òò 	
Route
òò	 
(
òò 
$str
òò "
)
òò" #
]
òò# $
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
IActionResult
ôô '
>
ôô' (
Eliminar
ôô) 1
(
ôô1 2
int
ôô2 5
id
ôô6 8
)
ôô8 9
{
öö 	
ResponseDTO
õõ 
<
õõ 
string
õõ 
>
õõ 
_ResponseDTO
õõ  ,
=
õõ- .
new
õõ/ 2
ResponseDTO
õõ3 >
<
õõ> ?
string
õõ? E
>
õõE F
(
õõF G
)
õõG H
;
õõH I
try
úú 
{
ùù 

Habitacion
ûû 
_modeloEliminar
ûû *
=
ûû+ ,
await
ûû- 2$
_habitacionRepositorio
ûû3 I
.
ûûI J
Obtener
ûûJ Q
(
ûûQ R
u
ûûR S
=>
ûûT V
u
ûûW X
.
ûûX Y
IdHabitacion
ûûY e
==
ûûf h
id
ûûi k
)
ûûk l
;
ûûl m
if
üü 
(
üü 
_modeloEliminar
üü #
!=
üü$ &
null
üü' +
)
üü+ ,
{
†† 
bool
¢¢ 
	respuesta
¢¢ "
=
¢¢# $
await
¢¢% *$
_habitacionRepositorio
¢¢+ A
.
¢¢A B
Eliminar
¢¢B J
(
¢¢J K
_modeloEliminar
¢¢K Z
)
¢¢Z [
;
¢¢[ \
if
§§ 
(
§§ 
	respuesta
§§ !
)
§§! "
_ResponseDTO
•• $
=
••% &
new
••' *
ResponseDTO
••+ 6
<
••6 7
string
••7 =
>
••= >
(
••> ?
)
••? @
{
••A B
status
••C I
=
••J K
true
••L P
,
••P Q
msg
••R U
=
••V W
$str
••X \
,
••\ ]
value
••^ c
=
••d e
$str
••f h
}
••i j
;
••j k
else
¶¶ 
_ResponseDTO
ßß $
=
ßß% &
new
ßß' *
ResponseDTO
ßß+ 6
<
ßß6 7
string
ßß7 =
>
ßß= >
(
ßß> ?
)
ßß? @
{
ßßA B
status
ßßC I
=
ßßJ K
false
ßßL Q
,
ßßQ R
msg
ßßS V
=
ßßW X
$str
ßßY |
,
ßß| }
valueßß~ É
=ßßÑ Ö
$strßßÜ à
}ßßâ ä
;ßßä ã
}
®® 
return
™™ 

StatusCode
™™ !
(
™™! "
StatusCodes
™™" -
.
™™- .
Status200OK
™™. 9
,
™™9 :
_ResponseDTO
™™; G
)
™™G H
;
™™H I
}
´´ 
catch
¨¨ 
(
¨¨ 
	Exception
¨¨ 
ex
¨¨ 
)
¨¨  
{
≠≠ 
_ResponseDTO
ÆÆ 
=
ÆÆ 
new
ÆÆ "
ResponseDTO
ÆÆ# .
<
ÆÆ. /
string
ÆÆ/ 5
>
ÆÆ5 6
(
ÆÆ6 7
)
ÆÆ7 8
{
ÆÆ9 :
status
ÆÆ; A
=
ÆÆB C
false
ÆÆD I
,
ÆÆI J
msg
ÆÆK N
=
ÆÆO P
ex
ÆÆQ S
.
ÆÆS T
Message
ÆÆT [
}
ÆÆ\ ]
;
ÆÆ] ^
return
ØØ 

StatusCode
ØØ !
(
ØØ! "
StatusCodes
ØØ" -
.
ØØ- .*
Status500InternalServerError
ØØ. J
,
ØØJ K
_ResponseDTO
ØØL X
)
ØØX Y
;
ØØY Z
}
∞∞ 
}
±± 	
}
≤≤ 
}≥≥ ﬁo
pC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\PisoController.cs
	namespace		 	
SistemaHotel		
 
.		 
Server		 
.		 
Controllers		 )
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
PisoController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IPisoRepositorio )
_pisoRepositorio* :
;: ;
public 
PisoController 
( 
IPisoRepositorio .
pisoRepositorio/ >
,> ?
IMapper@ G
mapperH N
)N O
{ 	
_mapper 
= 
mapper 
; 
_pisoRepositorio 
= 
pisoRepositorio .
;. /
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Lista) .
(. /
)/ 0
{ 	
ResponseDTO 
< 
List 
< 
PisoDTO $
>$ %
>% &
_ResponseDTO' 3
=4 5
new6 9
ResponseDTO: E
<E F
ListF J
<J K
PisoDTOK R
>R S
>S T
(T U
)U V
;V W
try 
{ 
List   
<   
PisoDTO   
>   
ListaModelo   )
=  * +
new  , /
List  0 4
<  4 5
PisoDTO  5 <
>  < =
(  = >
)  > ?
;  ? @
ListaModelo"" 
="" 
_mapper"" %
.""% &
Map""& )
<"") *
List""* .
<"". /
PisoDTO""/ 6
>""6 7
>""7 8
(""8 9
await""9 >
_pisoRepositorio""? O
.""O P
Lista""P U
(""U V
)""V W
)""W X
;""X Y
_ResponseDTO$$ 
=$$ 
new$$ "
ResponseDTO$$# .
<$$. /
List$$/ 3
<$$3 4
PisoDTO$$4 ;
>$$; <
>$$< =
($$= >
)$$> ?
{$$@ A
status$$B H
=$$I J
true$$K O
,$$O P
msg$$Q T
=$$U V
$str$$W [
,$$[ \
value$$] b
=$$c d
ListaModelo$$e p
}$$q r
;$$r s
return&& 

StatusCode&& !
(&&! "
StatusCodes&&" -
.&&- .
Status200OK&&. 9
,&&9 :
_ResponseDTO&&; G
)&&G H
;&&H I
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
_ResponseDTO** 
=** 
new** "
ResponseDTO**# .
<**. /
List**/ 3
<**3 4
PisoDTO**4 ;
>**; <
>**< =
(**= >
)**> ?
{**@ A
status**B H
=**I J
false**K P
,**P Q
msg**R U
=**V W
ex**X Z
.**Z [
Message**[ b
,**b c
value**d i
=**j k
null**l p
}**q r
;**r s
return++ 

StatusCode++ !
(++! "
StatusCodes++" -
.++- .(
Status500InternalServerError++. J
,++J K
_ResponseDTO++L X
)++X Y
;++Y Z
},, 
}-- 	
[00 	
HttpPost00	 
]00 
[11 	
Route11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Guardar22) 0
(220 1
[221 2
FromBody222 :
]22: ;
PisoDTO22< C
request22D K
)22K L
{33 	
ResponseDTO44 
<44 
PisoDTO44 
>44  
_ResponseDTO44! -
=44. /
new440 3
ResponseDTO444 ?
<44? @
PisoDTO44@ G
>44G H
(44H I
)44I J
;44J K
try55 
{66 
Piso77 

_categoria77 
=77  !
_mapper77" )
.77) *
Map77* -
<77- .
Piso77. 2
>772 3
(773 4
request774 ;
)77; <
;77< =
Piso99 
_categoriaCreada99 %
=99& '
await99( -
_pisoRepositorio99. >
.99> ?
Crear99? D
(99D E

_categoria99E O
)99O P
;99P Q
if;; 
(;; 
_categoriaCreada;; $
.;;$ %
IdPiso;;% +
!=;;, .
$num;;/ 0
);;0 1
_ResponseDTO<<  
=<<! "
new<<# &
ResponseDTO<<' 2
<<<2 3
PisoDTO<<3 :
><<: ;
(<<; <
)<<< =
{<<> ?
status<<@ F
=<<G H
true<<I M
,<<M N
msg<<O R
=<<S T
$str<<U Y
,<<Y Z
value<<[ `
=<<a b
_mapper<<c j
.<<j k
Map<<k n
<<<n o
PisoDTO<<o v
><<v w
(<<w x
_categoriaCreada	<<x à
)
<<à â
}
<<ä ã
;
<<ã å
else== 
_ResponseDTO>>  
=>>! "
new>># &
ResponseDTO>>' 2
<>>2 3
PisoDTO>>3 :
>>>: ;
(>>; <
)>>< =
{>>> ?
status>>@ F
=>>G H
false>>I N
,>>N O
msg>>P S
=>>T U
$str>>V p
}>>q r
;>>r s
return@@ 

StatusCode@@ !
(@@! "
StatusCodes@@" -
.@@- .
Status200OK@@. 9
,@@9 :
_ResponseDTO@@; G
)@@G H
;@@H I
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
_ResponseDTODD 
=DD 
newDD "
ResponseDTODD# .
<DD. /
PisoDTODD/ 6
>DD6 7
(DD7 8
)DD8 9
{DD: ;
statusDD< B
=DDC D
falseDDE J
,DDJ K
msgDDL O
=DDP Q
exDDR T
.DDT U
MessageDDU \
}DD] ^
;DD^ _
returnEE 

StatusCodeEE !
(EE! "
StatusCodesEE" -
.EE- .(
Status500InternalServerErrorEE. J
,EEJ K
_ResponseDTOEEL X
)EEX Y
;EEY Z
}FF 
}GG 	
[II 	
HttpPutII	 
]II 
[JJ 	
RouteJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
EditarKK) /
(KK/ 0
[KK0 1
FromBodyKK1 9
]KK9 :
PisoDTOKK; B
requestKKC J
)KKJ K
{LL 	
ResponseDTOMM 
<MM 
PisoDTOMM 
>MM  
_ResponseDTOMM! -
=MM. /
newMM0 3
ResponseDTOMM4 ?
<MM? @
PisoDTOMM@ G
>MMG H
(MMH I
)MMI J
;MMJ K
tryNN 
{OO 
PisoPP 
_modeloPP 
=PP 
_mapperPP &
.PP& '
MapPP' *
<PP* +
PisoPP+ /
>PP/ 0
(PP0 1
requestPP1 8
)PP8 9
;PP9 :
PisoQQ 
_modeloParaEditarQQ &
=QQ' (
awaitQQ) .
_pisoRepositorioQQ/ ?
.QQ? @
ObtenerQQ@ G
(QQG H
uQQH I
=>QQJ L
uQQM N
.QQN O
IdPisoQQO U
==QQV X
_modeloQQY `
.QQ` a
IdPisoQQa g
)QQg h
;QQh i
ifSS 
(SS 
_modeloParaEditarSS %
!=SS& (
nullSS) -
)SS- .
{TT 
_modeloParaEditarUU %
.UU% &
DescripcionUU& 1
=UU2 3
_modeloUU4 ;
.UU; <
DescripcionUU< G
;UUG H
boolWW 
	respuestaWW "
=WW# $
awaitWW% *
_pisoRepositorioWW+ ;
.WW; <
EditarWW< B
(WWB C
_modeloParaEditarWWC T
)WWT U
;WWU V
ifYY 
(YY 
	respuestaYY !
)YY! "
_ResponseDTOZZ $
=ZZ% &
newZZ' *
ResponseDTOZZ+ 6
<ZZ6 7
PisoDTOZZ7 >
>ZZ> ?
(ZZ? @
)ZZ@ A
{ZZB C
statusZZD J
=ZZK L
trueZZM Q
,ZZQ R
msgZZS V
=ZZW X
$strZZY ]
,ZZ] ^
valueZZ_ d
=ZZe f
_mapperZZg n
.ZZn o
MapZZo r
<ZZr s
PisoDTOZZs z
>ZZz {
(ZZ{ |
_modeloParaEditar	ZZ| ç
)
ZZç é
}
ZZè ê
;
ZZê ë
else[[ 
_ResponseDTO\\ $
=\\% &
new\\' *
ResponseDTO\\+ 6
<\\6 7
PisoDTO\\7 >
>\\> ?
(\\? @
)\\@ A
{\\B C
status\\D J
=\\K L
false\\M R
,\\R S
msg\\T W
=\\X Y
$str\\Z u
}\\v w
;\\w x
}]] 
else^^ 
{__ 
_ResponseDTO``  
=``! "
new``# &
ResponseDTO``' 2
<``2 3
PisoDTO``3 :
>``: ;
(``; <
)``< =
{``> ?
status``@ F
=``G H
false``I N
,``N O
msg``P S
=``T U
$str``V n
}``o p
;``p q
}aa 
returncc 

StatusCodecc !
(cc! "
StatusCodescc" -
.cc- .
Status200OKcc. 9
,cc9 :
_ResponseDTOcc; G
)ccG H
;ccH I
}dd 
catchee 
(ee 
	Exceptionee 
exee 
)ee  
{ff 
_ResponseDTOgg 
=gg 
newgg "
ResponseDTOgg# .
<gg. /
PisoDTOgg/ 6
>gg6 7
(gg7 8
)gg8 9
{gg: ;
statusgg< B
=ggC D
falseggE J
,ggJ K
msgggL O
=ggP Q
exggR T
.ggT U
MessageggU \
}gg] ^
;gg^ _
returnhh 

StatusCodehh !
(hh! "
StatusCodeshh" -
.hh- .(
Status500InternalServerErrorhh. J
,hhJ K
_ResponseDTOhhL X
)hhX Y
;hhY Z
}ii 
}jj 	
[nn 	

HttpDeletenn	 
]nn 
[oo 	
Routeoo	 
(oo 
$stroo "
)oo" #
]oo# $
publicpp 
asyncpp 
Taskpp 
<pp 
IActionResultpp '
>pp' (
Eliminarpp) 1
(pp1 2
intpp2 5
idpp6 8
)pp8 9
{qq 	
ResponseDTOrr 
<rr 
stringrr 
>rr 
_ResponseDTOrr  ,
=rr- .
newrr/ 2
ResponseDTOrr3 >
<rr> ?
stringrr? E
>rrE F
(rrF G
)rrG H
;rrH I
tryss 
{tt 
Pisouu 
_modeloEliminaruu $
=uu% &
awaituu' ,
_pisoRepositoriouu- =
.uu= >
Obteneruu> E
(uuE F
uuuF G
=>uuH J
uuuK L
.uuL M
IdPisouuM S
==uuT V
iduuW Y
)uuY Z
;uuZ [
ifvv 
(vv 
_modeloEliminarvv #
!=vv$ &
nullvv' +
)vv+ ,
{ww 
boolyy 
	respuestayy "
=yy# $
awaityy% *
_pisoRepositorioyy+ ;
.yy; <
Eliminaryy< D
(yyD E
_modeloEliminaryyE T
)yyT U
;yyU V
if{{ 
({{ 
	respuesta{{ !
){{! "
_ResponseDTO|| $
=||% &
new||' *
ResponseDTO||+ 6
<||6 7
string||7 =
>||= >
(||> ?
)||? @
{||A B
status||C I
=||J K
true||L P
,||P Q
msg||R U
=||V W
$str||X \
,||\ ]
value||^ c
=||d e
$str||f h
}||i j
;||j k
else}} 
_ResponseDTO~~ $
=~~% &
new~~' *
ResponseDTO~~+ 6
<~~6 7
string~~7 =
>~~= >
(~~> ?
)~~? @
{~~A B
status~~C I
=~~J K
false~~L Q
,~~Q R
msg~~S V
=~~W X
$str~~Y v
,~~v w
value~~x }
=~~~ 
$str
~~Ä Ç
}
~~É Ñ
;
~~Ñ Ö
} 
return
ÅÅ 

StatusCode
ÅÅ !
(
ÅÅ! "
StatusCodes
ÅÅ" -
.
ÅÅ- .
Status200OK
ÅÅ. 9
,
ÅÅ9 :
_ResponseDTO
ÅÅ; G
)
ÅÅG H
;
ÅÅH I
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
ex
ÉÉ 
)
ÉÉ  
{
ÑÑ 
_ResponseDTO
ÖÖ 
=
ÖÖ 
new
ÖÖ "
ResponseDTO
ÖÖ# .
<
ÖÖ. /
string
ÖÖ/ 5
>
ÖÖ5 6
(
ÖÖ6 7
)
ÖÖ7 8
{
ÖÖ9 :
status
ÖÖ; A
=
ÖÖB C
false
ÖÖD I
,
ÖÖI J
msg
ÖÖK N
=
ÖÖO P
ex
ÖÖQ S
.
ÖÖS T
Message
ÖÖT [
}
ÖÖ\ ]
;
ÖÖ] ^
return
ÜÜ 

StatusCode
ÜÜ !
(
ÜÜ! "
StatusCodes
ÜÜ" -
.
ÜÜ- .*
Status500InternalServerError
ÜÜ. J
,
ÜÜJ K
_ResponseDTO
ÜÜL X
)
ÜÜX Y
;
ÜÜY Z
}
áá 
}
àà 	
}
ââ 
}ää ˆn
uC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\RecepcionController.cs
	namespace

 	
SistemaHotel


 
.

 
Server

 
.

 
Controllers

 )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
RecepcionController $
:% &
ControllerBase' 5
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly !
IRecepcionRepositorio .!
_recepcionRepositorio/ D
;D E
public 
RecepcionController "
(" #!
IRecepcionRepositorio# 8 
recepcionRepositorio9 M
,M N
IMapperO V
mapperW ]
)] ^
{ 	
_mapper 
= 
mapper 
; !
_recepcionRepositorio !
=" # 
recepcionRepositorio$ 8
;8 9
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str '
)' (
]( )
public 
async 
Task 
< 
IActionResult '
>' (
Obtener) 0
(0 1
int1 4
idHabitacion5 A
)A B
{ 	
ResponseDTO 
< 
RecepcionDTO $
>$ %
_ResponseDTO& 2
=3 4
new5 8
ResponseDTO9 D
<D E
RecepcionDTOE Q
>Q R
(R S
)S T
;T U
try 
{ 
RecepcionDTO   
Modelo   #
=  $ %
new  & )
RecepcionDTO  * 6
(  6 7
)  7 8
;  8 9

IQueryable"" 
<"" 
	Recepcion"" $
>""$ %
query""& +
="", -
await"". 3!
_recepcionRepositorio""4 I
.""I J
	Consultar""J S
(""S T
h""T U
=>""V X
h""Y Z
.""Z [
IdHabitacion""[ g
==""h j
idHabitacion""k w
&&""x z
h""{ |
.""| }
Estado	""} É
==
""Ñ Ü
true
""á ã
)
""ã å
;
""å ç
query## 
=## 
query## 
.$$ 
Include$$ 
($$ 
r$$ 
=>$$ !
r$$" #
.$$# $
IdClienteNavigation$$$ 7
)$$7 8
.%% 
Include%% 
(%% 
r%% 
=>%% !
r%%" #
.%%# $"
IdHabitacionNavigation%%$ :
)%%: ;
.%%; <
ThenInclude%%< G
(%%G H
r%%H I
=>%%J L
r%%M N
.%%N O!
IdCategoriaNavigation%%O d
)%%d e
.&& 
Include&& 
(&& 
r&& 
=>&& !
r&&" #
.&&# $"
IdHabitacionNavigation&&$ :
)&&: ;
.&&; <
ThenInclude&&< G
(&&G H
r&&H I
=>&&J L
r&&M N
.&&N O
IdPisoNavigation&&O _
)&&_ `
;&&` a
Modelo(( 
=(( 
_mapper((  
.((  !
Map((! $
<(($ %
RecepcionDTO((% 1
>((1 2
(((2 3
query((3 8
.((8 9
FirstOrDefault((9 G
(((G H
)((H I
)((I J
;((J K
_ResponseDTO** 
=** 
new** "
ResponseDTO**# .
<**. /
RecepcionDTO**/ ;
>**; <
(**< =
)**= >
{**? @
status**A G
=**H I
true**J N
,**N O
msg**P S
=**T U
$str**V Z
,**Z [
value**\ a
=**b c
Modelo**d j
}**k l
;**l m
return,, 

StatusCode,, !
(,,! "
StatusCodes,," -
.,,- .
Status200OK,,. 9
,,,9 :
_ResponseDTO,,; G
),,G H
;,,H I
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
_ResponseDTO00 
=00 
new00 "
ResponseDTO00# .
<00. /
RecepcionDTO00/ ;
>00; <
(00< =
)00= >
{00? @
status00A G
=00H I
false00J O
,00O P
msg00Q T
=00U V
ex00W Y
.00Y Z
Message00Z a
,00a b
value00c h
=00i j
null00k o
}00p q
;00q r
return11 

StatusCode11 !
(11! "
StatusCodes11" -
.11- .(
Status500InternalServerError11. J
,11J K
_ResponseDTO11L X
)11X Y
;11Y Z
}22 
}33 	
[55 	
HttpPost55	 
]55 
[66 	
Route66	 
(66 
$str66 
)66 
]66 
public77 
async77 
Task77 
<77 
IActionResult77 '
>77' (
Guardar77) 0
(770 1
[771 2
FromBody772 :
]77: ;
RecepcionDTO77< H
request77I P
)77P Q
{88 	
ResponseDTO99 
<99 
RecepcionDTO99 $
>99$ %
_ResponseDTO99& 2
=993 4
new995 8
ResponseDTO999 D
<99D E
RecepcionDTO99E Q
>99Q R
(99R S
)99S T
;99T U
try:: 
{;; 
	Recepcion<< 
_modelo<< !
=<<" #
_mapper<<$ +
.<<+ ,
Map<<, /
<<</ 0
	Recepcion<<0 9
><<9 :
(<<: ;
request<<; B
)<<B C
;<<C D
	Recepcion>> 
_modeloCreado>> '
=>>( )
await>>* /!
_recepcionRepositorio>>0 E
.>>E F
Crear>>F K
(>>K L
_modelo>>L S
)>>S T
;>>T U
if@@ 
(@@ 
_modeloCreado@@ !
.@@! "
IdRecepcion@@" -
!=@@. 0
$num@@1 2
)@@2 3
_ResponseDTOAA  
=AA! "
newAA# &
ResponseDTOAA' 2
<AA2 3
RecepcionDTOAA3 ?
>AA? @
(AA@ A
)AAA B
{AAC D
statusAAE K
=AAL M
trueAAN R
,AAR S
msgAAT W
=AAX Y
$strAAZ ^
,AA^ _
valueAA` e
=AAf g
_mapperAAh o
.AAo p
MapAAp s
<AAs t
RecepcionDTO	AAt Ä
>
AAÄ Å
(
AAÅ Ç
_modeloCreado
AAÇ è
)
AAè ê
}
AAë í
;
AAí ì
elseBB 
_ResponseDTOCC  
=CC! "
newCC# &
ResponseDTOCC' 2
<CC2 3
RecepcionDTOCC3 ?
>CC? @
(CC@ A
)CCA B
{CCC D
statusCCE K
=CCL M
falseCCN S
,CCS T
msgCCU X
=CCY Z
$strCC[ z
}CC{ |
;CC| }
returnEE 

StatusCodeEE !
(EE! "
StatusCodesEE" -
.EE- .
Status200OKEE. 9
,EE9 :
_ResponseDTOEE; G
)EEG H
;EEH I
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 
_ResponseDTOII 
=II 
newII "
ResponseDTOII# .
<II. /
RecepcionDTOII/ ;
>II; <
(II< =
)II= >
{II? @
statusIIA G
=IIH I
falseIIJ O
,IIO P
msgIIQ T
=IIU V
exIIW Y
.IIY Z
MessageIIZ a
}IIb c
;IIc d
returnJJ 

StatusCodeJJ !
(JJ! "
StatusCodesJJ" -
.JJ- .(
Status500InternalServerErrorJJ. J
,JJJ K
_ResponseDTOJJL X
)JJX Y
;JJY Z
}KK 
}LL 	
[NN 	
HttpPutNN	 
]NN 
[OO 	
RouteOO	 
(OO 
$strOO 
)OO 
]OO 
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
EditarPP) /
(PP/ 0
[PP0 1
FromBodyPP1 9
]PP9 :
RecepcionDTOPP; G
requestPPH O
)PPO P
{QQ 	
ResponseDTORR 
<RR 
RecepcionDTORR $
>RR$ %
_ResponseDTORR& 2
=RR3 4
newRR5 8
ResponseDTORR9 D
<RRD E
RecepcionDTORRE Q
>RRQ R
(RRR S
)RRS T
;RRT U
trySS 
{TT 
	RecepcionUU 
_modeloUU !
=UU" #
_mapperUU$ +
.UU+ ,
MapUU, /
<UU/ 0
	RecepcionUU0 9
>UU9 :
(UU: ;
requestUU; B
)UUB C
;UUC D
boolWW 
	respuestaWW 
=WW 
awaitWW  %!
_recepcionRepositorioWW& ;
.WW; <
EditarWW< B
(WWB C
_modeloWWC J
)WWJ K
;WWK L
ifYY 
(YY 
	respuestaYY 
)YY 
_ResponseDTOZZ 
=ZZ  !
newZZ" %
ResponseDTOZZ& 1
<ZZ1 2
RecepcionDTOZZ2 >
>ZZ> ?
(ZZ? @
)ZZ@ A
{ZZB C
statusZZD J
=ZZK L
trueZZM Q
,ZZQ R
msgZZS V
=ZZW X
$strZZY ]
,ZZ] ^
valueZZ_ d
=ZZe f
_mapperZZg n
.ZZn o
MapZZo r
<ZZr s
RecepcionDTOZZs 
>	ZZ Ä
(
ZZÄ Å
_mapper
ZZÅ à
.
ZZà â
Map
ZZâ å
<
ZZå ç
RecepcionDTO
ZZç ô
>
ZZô ö
(
ZZö õ
_modelo
ZZõ ¢
)
ZZ¢ £
)
ZZ£ §
}
ZZ• ¶
;
ZZ¶ ß
else[[ 
_ResponseDTO\\ 
=\\  !
new\\" %
ResponseDTO\\& 1
<\\1 2
RecepcionDTO\\2 >
>\\> ?
(\\? @
)\\@ A
{\\B C
status\\D J
=\\K L
false\\M R
,\\R S
msg\\T W
=\\X Y
$str\\Z z
}\\{ |
;\\| }
return^^ 

StatusCode^^ !
(^^! "
StatusCodes^^" -
.^^- .
Status200OK^^. 9
,^^9 :
_ResponseDTO^^; G
)^^G H
;^^H I
}__ 
catch`` 
(`` 
	Exception`` 
ex`` 
)``  
{aa 
_ResponseDTObb 
=bb 
newbb "
ResponseDTObb# .
<bb. /
RecepcionDTObb/ ;
>bb; <
(bb< =
)bb= >
{bb? @
statusbbA G
=bbH I
falsebbJ O
,bbO P
msgbbQ T
=bbU V
exbbW Y
.bbY Z
MessagebbZ a
}bbb c
;bbc d
returncc 

StatusCodecc !
(cc! "
StatusCodescc" -
.cc- .(
Status500InternalServerErrorcc. J
,ccJ K
_ResponseDTOccL X
)ccX Y
;ccY Z
}dd 
}ee 	
[gg 	
HttpGetgg	 
]gg 
[hh 	
Routehh	 
(hh 
$strhh 
)hh 
]hh 
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
Reporteii) 0
(ii0 1
stringii1 7
?ii7 8
fechaInicioii9 D
,iiD E
stringiiF L
?iiL M
fechaFiniiN V
)iiV W
{jj 	
ResponseDTOkk 
<kk 
Listkk 
<kk 

ReporteDTOkk '
>kk' (
>kk( )
_ResponseDTOkk* 6
=kk7 8
newkk9 <
ResponseDTOkk= H
<kkH I
ListkkI M
<kkM N

ReporteDTOkkN X
>kkX Y
>kkY Z
(kkZ [
)kk[ \
;kk\ ]
tryll 
{mm 
Listnn 
<nn 

ReporteDTOnn 
>nn  
listaReportenn! -
=nn. /
_mappernn0 7
.nn7 8
Mapnn8 ;
<nn; <
Listnn< @
<nn@ A

ReporteDTOnnA K
>nnK L
>nnL M
(nnM N
awaitnnN S!
_recepcionRepositorionnT i
.nni j
Reportennj q
(nnq r
fechaInicionnr }
,nn} ~
fechaFin	nn á
)
nná à
)
nnà â
;
nnâ ä
_ResponseDTOoo 
=oo 
newoo "
ResponseDTOoo# .
<oo. /
Listoo/ 3
<oo3 4

ReporteDTOoo4 >
>oo> ?
>oo? @
(oo@ A
)ooA B
{ooC D
statusooE K
=ooL M
trueooN R
,ooR S
msgooT W
=ooX Y
$strooZ ^
,oo^ _
valueoo` e
=oof g
listaReporteooh t
}oou v
;oov w
returnqq 

StatusCodeqq !
(qq! "
StatusCodesqq" -
.qq- .
Status200OKqq. 9
,qq9 :
_ResponseDTOqq; G
)qqG H
;qqH I
}rr 
catchss 
(ss 
	Exceptionss 
exss 
)ss  
{tt 
_ResponseDTOuu 
=uu 
newuu "
ResponseDTOuu# .
<uu. /
Listuu/ 3
<uu3 4

ReporteDTOuu4 >
>uu> ?
>uu? @
(uu@ A
)uuA B
{uuC D
statusuuE K
=uuL M
falseuuN S
,uuS T
msguuU X
=uuY Z
exuu[ ]
.uu] ^
Messageuu^ e
}uuf g
;uug h
returnvv 

StatusCodevv !
(vv! "
StatusCodesvv" -
.vv- .(
Status500InternalServerErrorvv. J
,vvJ K
_ResponseDTOvvL X
)vvX Y
;vvY Z
}xx 
}zz 	
}|| 
}}} ”
vC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\RolUsuarioController.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Controllers )
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class  
RolUsuarioController %
:& '
ControllerBase( 6
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly "
IRolUsuarioRepositorio /"
_rolUsuarioRepositorio0 F
;F G
public  
RolUsuarioController #
(# $"
IRolUsuarioRepositorio$ :!
rolUsuarioRepositorio; P
,P Q
IMapperR Y
mapperZ `
)` a
{ 	
_mapper 
= 
mapper 
; "
_rolUsuarioRepositorio "
=# $!
rolUsuarioRepositorio% :
;: ;
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Lista) .
(. /
)/ 0
{ 	
ResponseDTO 
< 
List 
< 
RolUsuarioDTO *
>* +
>+ ,
_ResponseDTO- 9
=: ;
new< ?
ResponseDTO@ K
<K L
ListL P
<P Q
RolUsuarioDTOQ ^
>^ _
>_ `
(` a
)a b
;b c
try 
{ 
List   
<   
RolUsuarioDTO   "
>  " #
ListaRolUsuario  $ 3
=  3 4
new  5 8
List  9 =
<  = >
RolUsuarioDTO  > K
>  K L
(  L M
)  M N
;  N O
ListaRolUsuario!! 
=!!  !
_mapper!!" )
.!!) *
Map!!* -
<!!- .
List!!. 2
<!!2 3
RolUsuarioDTO!!3 @
>!!@ A
>!!A B
(!!B C
await!!C H"
_rolUsuarioRepositorio!!I _
.!!_ `
Lista!!` e
(!!e f
)!!f g
)!!g h
;!!h i
_ResponseDTO## 
=## 
new## "
ResponseDTO### .
<##. /
List##/ 3
<##3 4
RolUsuarioDTO##4 A
>##A B
>##B C
(##C D
)##D E
{##F G
status##H N
=##O P
true##Q U
,##U V
msg##W Z
=##[ \
$str##] a
,##a b
value##c h
=##i j
ListaRolUsuario##k z
}##{ |
;##| }
return%% 

StatusCode%% !
(%%! "
StatusCodes%%" -
.%%- .
Status200OK%%. 9
,%%9 :
_ResponseDTO%%; G
)%%G H
;%%H I
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
_ResponseDTO)) 
=)) 
new)) "
ResponseDTO))# .
<)). /
List))/ 3
<))3 4
RolUsuarioDTO))4 A
>))A B
>))B C
())C D
)))D E
{))F G
status))H N
=))O P
false))Q V
,))V W
msg))X [
=))\ ]
ex))^ `
.))` a
Message))a h
,))h i
value))j o
=))p q
null))r v
}))w x
;))x y
return** 

StatusCode** !
(**! "
StatusCodes**" -
.**- .(
Status500InternalServerError**. J
,**J K
_ResponseDTO**L X
)**X Y
;**Y Z
}++ 
},, 	
}-- 
}.. æò
sC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\UsuarioController.cs
	namespace		 	
SistemaHotel		
 
.		 
Server		 
.		 
Controllers		 )
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUsuarioRepositorio ,
_usuarioRepositorio- @
;@ A
public 
UsuarioController  
(  !
IUsuarioRepositorio! 4
usuarioRepositorio5 G
,G H
IMapperI P
mapperQ W
)W X
{ 	
_mapper 
= 
mapper 
; 
_usuarioRepositorio 
=  !
usuarioRepositorio" 4
;4 5
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Lista) .
(. /
)/ 0
{ 	
ResponseDTO 
< 
List 
< 

UsuarioDTO '
>' (
>( )
_ResponseDTO* 6
=7 8
new9 <
ResponseDTO= H
<H I
ListI M
<M N

UsuarioDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
try 
{ 
List   
<   

UsuarioDTO   
>    
ListaUsuarios  ! .
=  / 0
new  1 4
List  5 9
<  9 :

UsuarioDTO  : D
>  D E
(  E F
)  F G
;  G H

IQueryable!! 
<!! 
Usuario!! "
>!!" #
query!!$ )
=!!* +
await!!, 1
_usuarioRepositorio!!2 E
.!!E F
	Consultar!!F O
(!!O P
)!!P Q
;!!Q R
query"" 
="" 
query"" 
."" 
Include"" %
(""% &
r""& '
=>""( *
r""+ ,
."", -"
IdRolUsuarioNavigation""- C
)""C D
;""D E
ListaUsuarios$$ 
=$$ 
_mapper$$  '
.$$' (
Map$$( +
<$$+ ,
List$$, 0
<$$0 1

UsuarioDTO$$1 ;
>$$; <
>$$< =
($$= >
query$$> C
.$$C D
ToList$$D J
($$J K
)$$K L
)$$L M
;$$M N
_ResponseDTO&& 
=&& 
new&& "
ResponseDTO&&# .
<&&. /
List&&/ 3
<&&3 4

UsuarioDTO&&4 >
>&&> ?
>&&? @
(&&@ A
)&&A B
{&&C D
status&&E K
=&&L M
true&&N R
,&&R S
msg&&T W
=&&X Y
$str&&Z ^
,&&^ _
value&&` e
=&&f g
ListaUsuarios&&h u
}&&v w
;&&w x
return(( 

StatusCode(( !
(((! "
StatusCodes((" -
.((- .
Status200OK((. 9
,((9 :
_ResponseDTO((; G
)((G H
;((H I
})) 
catch** 
(** 
	Exception** 
ex** 
)**  
{++ 
_ResponseDTO,, 
=,, 
new,, "
ResponseDTO,,# .
<,,. /
List,,/ 3
<,,3 4

UsuarioDTO,,4 >
>,,> ?
>,,? @
(,,@ A
),,A B
{,,C D
status,,E K
=,,L M
false,,N S
,,,S T
msg,,U X
=,,Y Z
ex,,[ ]
.,,] ^
Message,,^ e
,,,e f
value,,g l
=,,m n
null,,o s
},,t u
;,,u v
return-- 

StatusCode-- !
(--! "
StatusCodes--" -
.--- .(
Status500InternalServerError--. J
,--J K
_ResponseDTO--L X
)--X Y
;--Y Z
}.. 
}// 	
[11 	
HttpGet11	 
]11 
[22 	
Route22	 
(22 
$str22 
)22 
]22  
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
IniciarSesion33) 6
(336 7
string337 =
correo33> D
,33D E
string33F L
clave33M R
)33R S
{44 	
ResponseDTO55 
<55 

UsuarioDTO55 "
>55" #
_ResponseDTO55$ 0
=551 2
new553 6
ResponseDTO557 B
<55B C

UsuarioDTO55C M
>55M N
(55N O
)55O P
;55P Q
try66 
{77 

UsuarioDTO88 
_usuario88 #
=88$ %
new88& )

UsuarioDTO88* 4
(884 5
)885 6
;886 7

IQueryable99 
<99 
Usuario99 "
>99" #
query99$ )
=99* +
await99, 1
_usuarioRepositorio992 E
.99E F
	Consultar99F O
(99O P
u99P Q
=>99R T
u99U V
.99V W
Correo99W ]
==99^ `
correo99a g
&&99h j
u99k l
.99l m
Clave99m r
==99s u
clave99v {
)99{ |
;99| }
query:: 
=:: 
query:: 
.:: 
Include:: %
(::% &
r::& '
=>::( *
r::+ ,
.::, -"
IdRolUsuarioNavigation::- C
)::C D
;::D E
_usuario<< 
=<< 
_mapper<< #
.<<# $
Map<<$ '
<<<' (

UsuarioDTO<<( 2
><<2 3
(<<3 4
query<<4 9
.<<9 :
FirstOrDefault<<: H
(<<H I
)<<I J
)<<J K
;<<K L
if>> 
(>> 
_usuario>> 
!=>> 
null>>  $
)>>$ %
_ResponseDTO??  
=??! "
new??# &
ResponseDTO??' 2
<??2 3

UsuarioDTO??3 =
>??= >
(??> ?
)??? @
{??A B
status??C I
=??J K
true??L P
,??P Q
msg??R U
=??V W
$str??X \
,??\ ]
value??^ c
=??d e
_usuario??f n
}??o p
;??p q
else@@ 
_ResponseDTOAA  
=AA! "
newAA# &
ResponseDTOAA' 2
<AA2 3

UsuarioDTOAA3 =
>AA= >
(AA> ?
)AA? @
{AAA B
statusAAC I
=AAJ K
falseAAL Q
,AAQ R
msgAAS V
=AAW X
$strAAY h
,AAh i
valueAAj o
=AAp q
nullAAr v
}AAw x
;AAx y
returnCC 

StatusCodeCC !
(CC! "
StatusCodesCC" -
.CC- .
Status200OKCC. 9
,CC9 :
_ResponseDTOCC; G
)CCG H
;CCH I
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
_ResponseDTOGG 
=GG 
newGG "
ResponseDTOGG# .
<GG. /

UsuarioDTOGG/ 9
>GG9 :
(GG: ;
)GG; <
{GG= >
statusGG? E
=GGF G
falseGGH M
,GGM N
msgGGO R
=GGS T
exGGU W
.GGW X
MessageGGX _
,GG_ `
valueGGa f
=GGg h
nullGGi m
}GGn o
;GGo p
returnHH 

StatusCodeHH !
(HH! "
StatusCodesHH" -
.HH- .(
Status500InternalServerErrorHH. J
,HHJ K
_ResponseDTOHHL X
)HHX Y
;HHY Z
}II 
}JJ 	
[LL 	
HttpPostLL	 
]LL 
[MM 	
RouteMM	 
(MM 
$strMM 
)MM 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (
GuardarNN) 0
(NN0 1
[NN1 2
FromBodyNN2 :
]NN: ;

UsuarioDTONN< F
requestNNG N
)NNN O
{OO 	
ResponseDTOPP 
<PP 

UsuarioDTOPP "
>PP" #
_ResponseDTOPP$ 0
=PP1 2
newPP3 6
ResponseDTOPP7 B
<PPB C

UsuarioDTOPPC M
>PPM N
(PPN O
)PPO P
;PPP Q
tryQQ 
{RR 
UsuarioSS 
_usuarioSS  
=SS! "
_mapperSS# *
.SS* +
MapSS+ .
<SS. /
UsuarioSS/ 6
>SS6 7
(SS7 8
requestSS8 ?
)SS? @
;SS@ A
UsuarioUU 
_usuarioCreadoUU &
=UU' (
awaitUU) .
_usuarioRepositorioUU/ B
.UUB C
CrearUUC H
(UUH I
_usuarioUUI Q
)UUQ R
;UUR S
ifWW 
(WW 
_usuarioCreadoWW "
.WW" #
	IdUsuarioWW# ,
!=WW- /
$numWW0 1
)WW1 2
_ResponseDTOXX  
=XX! "
newXX# &
ResponseDTOXX' 2
<XX2 3

UsuarioDTOXX3 =
>XX= >
(XX> ?
)XX? @
{XXA B
statusXXC I
=XXJ K
trueXXL P
,XXP Q
msgXXR U
=XXV W
$strXXX \
,XX\ ]
valueXX^ c
=XXd e
_mapperXXf m
.XXm n
MapXXn q
<XXq r

UsuarioDTOXXr |
>XX| }
(XX} ~
_usuarioCreado	XX~ å
)
XXå ç
}
XXé è
;
XXè ê
elseYY 
_ResponseDTOZZ  
=ZZ! "
newZZ# &
ResponseDTOZZ' 2
<ZZ2 3

UsuarioDTOZZ3 =
>ZZ= >
(ZZ> ?
)ZZ? @
{ZZA B
statusZZC I
=ZZJ K
falseZZL Q
,ZZQ R
msgZZS V
=ZZW X
$strZZY v
}ZZw x
;ZZx y
return\\ 

StatusCode\\ !
(\\! "
StatusCodes\\" -
.\\- .
Status200OK\\. 9
,\\9 :
_ResponseDTO\\; G
)\\G H
;\\H I
}]] 
catch^^ 
(^^ 
	Exception^^ 
ex^^ 
)^^  
{__ 
_ResponseDTO`` 
=`` 
new`` "
ResponseDTO``# .
<``. /

UsuarioDTO``/ 9
>``9 :
(``: ;
)``; <
{``= >
status``? E
=``F G
false``H M
,``M N
msg``O R
=``S T
ex``U W
.``W X
Message``X _
}``` a
;``a b
returnaa 

StatusCodeaa !
(aa! "
StatusCodesaa" -
.aa- .(
Status500InternalServerErroraa. J
,aaJ K
_ResponseDTOaaL X
)aaX Y
;aaY Z
}bb 
}cc 	
[ee 	
HttpPutee	 
]ee 
[ff 	
Routeff	 
(ff 
$strff 
)ff 
]ff 
publicgg 
asyncgg 
Taskgg 
<gg 
IActionResultgg '
>gg' (
Editargg) /
(gg/ 0
[gg0 1
FromBodygg1 9
]gg9 :

UsuarioDTOgg; E
requestggF M
)ggM N
{hh 	
ResponseDTOii 
<ii 

UsuarioDTOii "
>ii" #
_ResponseDTOii$ 0
=ii1 2
newii3 6
ResponseDTOii7 B
<iiB C

UsuarioDTOiiC M
>iiM N
(iiN O
)iiO P
;iiP Q
tryjj 
{kk 
Usuarioll 
_usuarioll  
=ll! "
_mapperll# *
.ll* +
Mapll+ .
<ll. /
Usuarioll/ 6
>ll6 7
(ll7 8
requestll8 ?
)ll? @
;ll@ A
Usuariomm 
_usuarioParaEditarmm *
=mm+ ,
awaitmm- 2
_usuarioRepositoriomm3 F
.mmF G
ObtenermmG N
(mmN O
ummO P
=>mmQ S
ummT U
.mmU V
	IdUsuariommV _
==mm` b
_usuariommc k
.mmk l
	IdUsuariomml u
)mmu v
;mmv w
ifoo 
(oo 
_usuarioParaEditaroo &
!=oo' )
nulloo* .
)oo. /
{pp 
_usuarioParaEditarrr &
.rr& '
NombreCompletorr' 5
=rr6 7
_usuariorr8 @
.rr@ A
NombreCompletorrA O
;rrO P
_usuarioParaEditarss &
.ss& '
Correoss' -
=ss. /
_usuarioss0 8
.ss8 9
Correoss9 ?
;ss? @
_usuarioParaEditartt &
.tt& '
IdRolUsuariott' 3
=tt4 5
_usuariott6 >
.tt> ?
IdRolUsuariott? K
;ttK L
_usuarioParaEditaruu &
.uu& '
Claveuu' ,
=uu- .
_usuariouu/ 7
.uu7 8
Claveuu8 =
;uu= >
boolww 
	respuestaww "
=ww# $
awaitww% *
_usuarioRepositorioww+ >
.ww> ?
Editarww? E
(wwE F
_usuarioParaEditarwwF X
)wwX Y
;wwY Z
ifyy 
(yy 
	respuestayy !
)yy! "
_ResponseDTOzz $
=zz% &
newzz' *
ResponseDTOzz+ 6
<zz6 7

UsuarioDTOzz7 A
>zzA B
(zzB C
)zzC D
{zzE F
statuszzG M
=zzN O
truezzP T
,zzT U
msgzzV Y
=zzZ [
$strzz\ `
,zz` a
valuezzb g
=zzh i
_mapperzzj q
.zzq r
Mapzzr u
<zzu v

UsuarioDTO	zzv Ä
>
zzÄ Å
(
zzÅ Ç 
_usuarioParaEditar
zzÇ î
)
zzî ï
}
zzñ ó
;
zzó ò
else{{ 
_ResponseDTO|| $
=||% &
new||' *
ResponseDTO||+ 6
<||6 7

UsuarioDTO||7 A
>||A B
(||B C
)||C D
{||E F
status||G M
=||N O
false||P U
,||U V
msg||W Z
=||[ \
$str||] {
}||| }
;||} ~
}}} 
else~~ 
{ 
_ResponseDTO
ÄÄ  
=
ÄÄ! "
new
ÄÄ# &
ResponseDTO
ÄÄ' 2
<
ÄÄ2 3

UsuarioDTO
ÄÄ3 =
>
ÄÄ= >
(
ÄÄ> ?
)
ÄÄ? @
{
ÄÄA B
status
ÄÄC I
=
ÄÄJ K
false
ÄÄL Q
,
ÄÄQ R
msg
ÄÄS V
=
ÄÄW X
$str
ÄÄY t
}
ÄÄu v
;
ÄÄv w
}
ÅÅ 
return
ÉÉ 

StatusCode
ÉÉ !
(
ÉÉ! "
StatusCodes
ÉÉ" -
.
ÉÉ- .
Status200OK
ÉÉ. 9
,
ÉÉ9 :
_ResponseDTO
ÉÉ; G
)
ÉÉG H
;
ÉÉH I
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ 
ex
ÖÖ 
)
ÖÖ  
{
ÜÜ 
_ResponseDTO
áá 
=
áá 
new
áá "
ResponseDTO
áá# .
<
áá. /

UsuarioDTO
áá/ 9
>
áá9 :
(
áá: ;
)
áá; <
{
áá= >
status
áá? E
=
ááF G
false
ááH M
,
ááM N
msg
ááO R
=
ááS T
ex
ááU W
.
ááW X
Message
ááX _
}
áá` a
;
ááa b
return
àà 

StatusCode
àà !
(
àà! "
StatusCodes
àà" -
.
àà- .*
Status500InternalServerError
àà. J
,
ààJ K
_ResponseDTO
ààL X
)
ààX Y
;
ààY Z
}
ââ 
}
ää 	
[
éé 	

HttpDelete
éé	 
]
éé 
[
èè 	
Route
èè	 
(
èè 
$str
èè "
)
èè" #
]
èè# $
public
êê 
async
êê 
Task
êê 
<
êê 
IActionResult
êê '
>
êê' (
Eliminar
êê) 1
(
êê1 2
int
êê2 5
id
êê6 8
)
êê8 9
{
ëë 	
ResponseDTO
íí 
<
íí 
string
íí 
>
íí 
_ResponseDTO
íí  ,
=
íí- .
new
íí/ 2
ResponseDTO
íí3 >
<
íí> ?
string
íí? E
>
ííE F
(
ííF G
)
ííG H
;
ííH I
try
ìì 
{
îî 
Usuario
ïï 
_usuarioEliminar
ïï (
=
ïï) *
await
ïï+ 0!
_usuarioRepositorio
ïï1 D
.
ïïD E
Obtener
ïïE L
(
ïïL M
u
ïïM N
=>
ïïO Q
u
ïïR S
.
ïïS T
	IdUsuario
ïïT ]
==
ïï^ `
id
ïïa c
)
ïïc d
;
ïïd e
if
óó 
(
óó 
_usuarioEliminar
óó $
!=
óó% '
null
óó( ,
)
óó, -
{
òò 
bool
öö 
	respuesta
öö "
=
öö# $
await
öö% *!
_usuarioRepositorio
öö+ >
.
öö> ?
Eliminar
öö? G
(
ööG H
_usuarioEliminar
ööH X
)
ööX Y
;
ööY Z
if
úú 
(
úú 
	respuesta
úú !
)
úú! "
_ResponseDTO
ùù $
=
ùù% &
new
ùù' *
ResponseDTO
ùù+ 6
<
ùù6 7
string
ùù7 =
>
ùù= >
(
ùù> ?
)
ùù? @
{
ùùA B
status
ùùC I
=
ùùJ K
true
ùùL P
,
ùùP Q
msg
ùùR U
=
ùùV W
$str
ùùX \
,
ùù\ ]
value
ùù^ c
=
ùùd e
$str
ùùf h
}
ùùi j
;
ùùj k
else
ûû 
_ResponseDTO
üü $
=
üü% &
new
üü' *
ResponseDTO
üü+ 6
<
üü6 7
string
üü7 =
>
üü= >
(
üü> ?
)
üü? @
{
üüA B
status
üüC I
=
üüJ K
false
üüL Q
,
üüQ R
msg
üüS V
=
üüW X
$str
üüY y
,
üüy z
valueüü{ Ä
=üüÅ Ç
$strüüÉ Ö
}üüÜ á
;üüá à
}
†† 
return
¢¢ 

StatusCode
¢¢ !
(
¢¢! "
StatusCodes
¢¢" -
.
¢¢- .
Status200OK
¢¢. 9
,
¢¢9 :
_ResponseDTO
¢¢; G
)
¢¢G H
;
¢¢H I
}
££ 
catch
§§ 
(
§§ 
	Exception
§§ 
ex
§§ 
)
§§  
{
•• 
_ResponseDTO
¶¶ 
=
¶¶ 
new
¶¶ "
ResponseDTO
¶¶# .
<
¶¶. /
string
¶¶/ 5
>
¶¶5 6
(
¶¶6 7
)
¶¶7 8
{
¶¶9 :
status
¶¶; A
=
¶¶B C
false
¶¶D I
,
¶¶I J
msg
¶¶K N
=
¶¶O P
ex
¶¶Q S
.
¶¶S T
Message
¶¶T [
}
¶¶\ ]
;
¶¶] ^
return
ßß 

StatusCode
ßß !
(
ßß! "
StatusCodes
ßß" -
.
ßß- .*
Status500InternalServerError
ßß. J
,
ßßJ K
_ResponseDTO
ßßL X
)
ßßX Y
;
ßßY Z
}
®® 
}
©© 	
}
´´ 
}¨¨ ﬁ
{C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Controllers\WeatherForecastController.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Controllers )
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{		 
private

 
static

 
readonly

 
string

  &
[

& '
]

' (
	Summaries

) 2
=

3 4
new

5 8
[

8 9
]

9 :
{ 	
$str 
, 
$str 
, 
$str '
,' (
$str) /
,/ 0
$str1 7
,7 8
$str9 ?
,? @
$strA H
,H I
$strJ O
,O P
$strQ ]
,] ^
$str_ j
} 
; 
private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateOnly 
.  
FromDateTime  ,
(, -
DateTime- 5
.5 6
Now6 9
.9 :
AddDays: A
(A B
indexB G
)G H
)H I
,I J
TemperatureC 
= 
Random %
.% &
Shared& ,
., -
Next- 1
(1 2
-2 3
$num3 5
,5 6
$num7 9
)9 :
,: ;
Summary 
= 
	Summaries #
[# $
Random$ *
.* +
Shared+ 1
.1 2
Next2 6
(6 7
	Summaries7 @
.@ A
LengthA G
)G H
]H I
} 
) 
. 
ToArray 
( 
) 
; 
}   	
}!! 
}"" ﬁ

fC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Categoria.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
	Categoria 
{ 
public 

int 
IdCategoria 
{ 
get  
;  !
set" %
;% &
}' (
public

 

string

 
?

 
Descripcion

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
ICollection 
< 

Habitacion )
>) *
Habitacions+ 6
{7 8
get9 <
;< =
}> ?
=@ A
newB E
ListF J
<J K

HabitacionK U
>U V
(V W
)W X
;X Y
} ›
dC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Cliente.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
Cliente 
{ 
public 

int 
	IdCliente 
{ 
get 
; 
set  #
;# $
}% &
public

 

string

 
?

 
TipoDocumento

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 

string 
? 
	Documento 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
NombreCompleto !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

string 
? 
Correo 
{ 
get 
;  
set! $
;$ %
}& '
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
ICollection 
< 
	Recepcion (
>( )

Recepcions* 4
{5 6
get7 :
;: ;
}< =
=> ?
new@ C
ListD H
<H I
	RecepcionI R
>R S
(S T
)T U
;U V
} Ó»
qC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\DbhotelBlazorContext.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class  
DbhotelBlazorContext )
:* +
	DbContext, 5
{ 
public		 
 
DbhotelBlazorContext		 
(		  
)		  !
{

 
} 
public 
 
DbhotelBlazorContext 
(  
DbContextOptions  0
<0 1 
DbhotelBlazorContext1 E
>E F
optionsG N
)N O
: 	
base
 
( 
options 
) 
{ 
} 
public 

virtual 
DbSet 
< 
	Categoria "
>" #
	Categoria$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 

virtual 
DbSet 
< 
Cliente  
>  !
Clientes" *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

virtual 
DbSet 
< 
EstadoHabitacion )
>) *
EstadoHabitacions+ <
{= >
get? B
;B C
setD G
;G H
}I J
public 

virtual 
DbSet 
< 

Habitacion #
># $
Habitacions% 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 

virtual 
DbSet 
< 
Piso 
> 
Pisos $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

virtual 
DbSet 
< 
	Recepcion "
>" #

Recepcions$ .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 

virtual 
DbSet 
< 

RolUsuario #
># $
RolUsuarios% 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public   

virtual   
DbSet   
<   
Usuario    
>    !
Usuarios  " *
{  + ,
get  - 0
;  0 1
set  2 5
;  5 6
}  7 8
	protected"" 
override"" 
void"" 
OnConfiguring"" )
("") *#
DbContextOptionsBuilder""* A
optionsBuilder""B P
)""P Q
{""R S
}""T U
	protected$$ 
override$$ 
void$$ 
OnModelCreating$$ +
($$+ ,
ModelBuilder$$, 8
modelBuilder$$9 E
)$$E F
{%% 
modelBuilder&& 
.&& 
Entity&& 
<&& 
	Categoria&& %
>&&% &
(&&& '
entity&&' -
=>&&. 0
{'' 	
entity(( 
.(( 
HasKey(( 
((( 
e(( 
=>(( 
e((  
.((  !
IdCategoria((! ,
)((, -
.((- .
HasName((. 5
(((5 6
$str((6 V
)((V W
;((W X
entity** 
.** 
Property** 
(** 
e** 
=>**  
e**! "
.**" #
Descripcion**# .
)**. /
.++ 
HasMaxLength++ 
(++ 
$num++  
)++  !
.,, 
	IsUnicode,, 
(,, 
false,,  
),,  !
;,,! "
entity-- 
.-- 
Property-- 
(-- 
e-- 
=>--  
e--! "
.--" #
Estado--# )
)--) *
.--* +
HasDefaultValueSql--+ =
(--= >
$str--> E
)--E F
;--F G
entity.. 
... 
Property.. 
(.. 
e.. 
=>..  
e..! "
..." #
FechaCreacion..# 0
)..0 1
.// 
HasDefaultValueSql// #
(//# $
$str//$ 1
)//1 2
.00 
HasColumnType00 
(00 
$str00 )
)00) *
;00* +
}11 	
)11	 

;11
 
modelBuilder33 
.33 
Entity33 
<33 
Cliente33 #
>33# $
(33$ %
entity33% +
=>33, .
{44 	
entity55 
.55 
HasKey55 
(55 
e55 
=>55 
e55  
.55  !
	IdCliente55! *
)55* +
.55+ ,
HasName55, 3
(553 4
$str554 S
)55S T
;55T U
entity77 
.77 
ToTable77 
(77 
$str77 $
)77$ %
;77% &
entity99 
.99 
Property99 
(99 
e99 
=>99  
e99! "
.99" #
Correo99# )
)99) *
.:: 
HasMaxLength:: 
(:: 
$num::  
)::  !
.;; 
	IsUnicode;; 
(;; 
false;;  
);;  !
;;;! "
entity<< 
.<< 
Property<< 
(<< 
e<< 
=><<  
e<<! "
.<<" #
	Documento<<# ,
)<<, -
.== 
HasMaxLength== 
(== 
$num==  
)==  !
.>> 
	IsUnicode>> 
(>> 
false>>  
)>>  !
;>>! "
entity?? 
.?? 
Property?? 
(?? 
e?? 
=>??  
e??! "
.??" #
Estado??# )
)??) *
.??* +
HasDefaultValueSql??+ =
(??= >
$str??> E
)??E F
;??F G
entity@@ 
.@@ 
Property@@ 
(@@ 
e@@ 
=>@@  
e@@! "
.@@" #
FechaCreacion@@# 0
)@@0 1
.AA 
HasDefaultValueSqlAA #
(AA# $
$strAA$ 1
)AA1 2
.BB 
HasColumnTypeBB 
(BB 
$strBB )
)BB) *
;BB* +
entityCC 
.CC 
PropertyCC 
(CC 
eCC 
=>CC  
eCC! "
.CC" #
NombreCompletoCC# 1
)CC1 2
.DD 
HasMaxLengthDD 
(DD 
$numDD  
)DD  !
.EE 
	IsUnicodeEE 
(EE 
falseEE  
)EE  !
;EE! "
entityFF 
.FF 
PropertyFF 
(FF 
eFF 
=>FF  
eFF! "
.FF" #
TipoDocumentoFF# 0
)FF0 1
.GG 
HasMaxLengthGG 
(GG 
$numGG  
)GG  !
.HH 
	IsUnicodeHH 
(HH 
falseHH  
)HH  !
;HH! "
}II 	
)II	 

;II
 
modelBuilderKK 
.KK 
EntityKK 
<KK 
EstadoHabitacionKK ,
>KK, -
(KK- .
entityKK. 4
=>KK5 7
{LL 	
entityMM 
.MM 
HasKeyMM 
(MM 
eMM 
=>MM 
eMM  
.MM  !
IdEstadoHabitacionMM! 3
)MM3 4
.MM4 5
HasNameMM5 <
(MM< =
$strMM= ]
)MM] ^
;MM^ _
entityOO 
.OO 
ToTableOO 
(OO 
$strOO -
)OO- .
;OO. /
entityQQ 
.QQ 
PropertyQQ 
(QQ 
eQQ 
=>QQ  
eQQ! "
.QQ" #
IdEstadoHabitacionQQ# 5
)QQ5 6
.QQ6 7
ValueGeneratedNeverQQ7 J
(QQJ K
)QQK L
;QQL M
entityRR 
.RR 
PropertyRR 
(RR 
eRR 
=>RR  
eRR! "
.RR" #
DescripcionRR# .
)RR. /
.SS 
HasMaxLengthSS 
(SS 
$numSS  
)SS  !
.TT 
	IsUnicodeTT 
(TT 
falseTT  
)TT  !
;TT! "
entityUU 
.UU 
PropertyUU 
(UU 
eUU 
=>UU  
eUU! "
.UU" #
EstadoUU# )
)UU) *
.UU* +
HasDefaultValueSqlUU+ =
(UU= >
$strUU> E
)UUE F
;UUF G
entityVV 
.VV 
PropertyVV 
(VV 
eVV 
=>VV  
eVV! "
.VV" #
FechaCreacionVV# 0
)VV0 1
.WW 
HasDefaultValueSqlWW #
(WW# $
$strWW$ 1
)WW1 2
.XX 
HasColumnTypeXX 
(XX 
$strXX )
)XX) *
;XX* +
}YY 	
)YY	 

;YY
 
modelBuilder[[ 
.[[ 
Entity[[ 
<[[ 

Habitacion[[ &
>[[& '
([[' (
entity[[( .
=>[[/ 1
{\\ 	
entity]] 
.]] 
HasKey]] 
(]] 
e]] 
=>]] 
e]]  
.]]  !
IdHabitacion]]! -
)]]- .
.]]. /
HasName]]/ 6
(]]6 7
$str]]7 W
)]]W X
;]]X Y
entity__ 
.__ 
ToTable__ 
(__ 
$str__ '
)__' (
;__( )
entityaa 
.aa 
Propertyaa 
(aa 
eaa 
=>aa  
eaa! "
.aa" #
Detalleaa# *
)aa* +
.bb 
HasMaxLengthbb 
(bb 
$numbb !
)bb! "
.cc 
	IsUnicodecc 
(cc 
falsecc  
)cc  !
;cc! "
entitydd 
.dd 
Propertydd 
(dd 
edd 
=>dd  
edd! "
.dd" #
Estadodd# )
)dd) *
.dd* +
HasDefaultValueSqldd+ =
(dd= >
$strdd> E
)ddE F
;ddF G
entityee 
.ee 
Propertyee 
(ee 
eee 
=>ee  
eee! "
.ee" #
FechaCreacionee# 0
)ee0 1
.ff 
HasDefaultValueSqlff #
(ff# $
$strff$ 1
)ff1 2
.gg 
HasColumnTypegg 
(gg 
$strgg )
)gg) *
;gg* +
entityhh 
.hh 
Propertyhh 
(hh 
ehh 
=>hh  
ehh! "
.hh" #
Numerohh# )
)hh) *
.ii 
HasMaxLengthii 
(ii 
$numii  
)ii  !
.jj 
	IsUnicodejj 
(jj 
falsejj  
)jj  !
;jj! "
entitykk 
.kk 
Propertykk 
(kk 
ekk 
=>kk  
ekk! "
.kk" #
Preciokk# )
)kk) *
.kk* +
HasColumnTypekk+ 8
(kk8 9
$strkk9 I
)kkI J
;kkJ K
entitymm 
.mm 
HasOnemm 
(mm 
dmm 
=>mm 
dmm  
.mm  !!
IdCategoriaNavigationmm! 6
)mm6 7
.mm7 8
WithManymm8 @
(mm@ A
pmmA B
=>mmC E
pmmF G
.mmG H
HabitacionsmmH S
)mmS T
.nn 
HasForeignKeynn 
(nn 
dnn  
=>nn! #
dnn$ %
.nn% &
IdCategoriann& 1
)nn1 2
.oo 
HasConstraintNameoo "
(oo" #
$stroo# C
)ooC D
;ooD E
entityqq 
.qq 
HasOneqq 
(qq 
dqq 
=>qq 
dqq  
.qq  !(
IdEstadoHabitacionNavigationqq! =
)qq= >
.qq> ?
WithManyqq? G
(qqG H
pqqH I
=>qqJ L
pqqM N
.qqN O
HabitacionsqqO Z
)qqZ [
.rr 
HasForeignKeyrr 
(rr 
drr  
=>rr! #
drr$ %
.rr% &
IdEstadoHabitacionrr& 8
)rr8 9
.ss 
HasConstraintNamess "
(ss" #
$strss# C
)ssC D
;ssD E
entityuu 
.uu 
HasOneuu 
(uu 
duu 
=>uu 
duu  
.uu  !
IdPisoNavigationuu! 1
)uu1 2
.uu2 3
WithManyuu3 ;
(uu; <
puu< =
=>uu> @
puuA B
.uuB C
HabitacionsuuC N
)uuN O
.vv 
HasForeignKeyvv 
(vv 
dvv  
=>vv! #
dvv$ %
.vv% &
IdPisovv& ,
)vv, -
.ww 
HasConstraintNameww "
(ww" #
$strww# C
)wwC D
;wwD E
}xx 	
)xx	 

;xx
 
modelBuilderzz 
.zz 
Entityzz 
<zz 
Pisozz  
>zz  !
(zz! "
entityzz" (
=>zz) +
{{{ 	
entity|| 
.|| 
HasKey|| 
(|| 
e|| 
=>|| 
e||  
.||  !
IdPiso||! '
)||' (
.||( )
HasName||) 0
(||0 1
$str||1 M
)||M N
;||N O
entity~~ 
.~~ 
ToTable~~ 
(~~ 
$str~~ !
)~~! "
;~~" #
entity
ÄÄ 
.
ÄÄ 
Property
ÄÄ 
(
ÄÄ 
e
ÄÄ 
=>
ÄÄ  
e
ÄÄ! "
.
ÄÄ" #
Descripcion
ÄÄ# .
)
ÄÄ. /
.
ÅÅ 
HasMaxLength
ÅÅ 
(
ÅÅ 
$num
ÅÅ  
)
ÅÅ  !
.
ÇÇ 
	IsUnicode
ÇÇ 
(
ÇÇ 
false
ÇÇ  
)
ÇÇ  !
;
ÇÇ! "
entity
ÉÉ 
.
ÉÉ 
Property
ÉÉ 
(
ÉÉ 
e
ÉÉ 
=>
ÉÉ  
e
ÉÉ! "
.
ÉÉ" #
Estado
ÉÉ# )
)
ÉÉ) *
.
ÉÉ* + 
HasDefaultValueSql
ÉÉ+ =
(
ÉÉ= >
$str
ÉÉ> E
)
ÉÉE F
;
ÉÉF G
entity
ÑÑ 
.
ÑÑ 
Property
ÑÑ 
(
ÑÑ 
e
ÑÑ 
=>
ÑÑ  
e
ÑÑ! "
.
ÑÑ" #
FechaCreacion
ÑÑ# 0
)
ÑÑ0 1
.
ÖÖ  
HasDefaultValueSql
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ 1
)
ÖÖ1 2
.
ÜÜ 
HasColumnType
ÜÜ 
(
ÜÜ 
$str
ÜÜ )
)
ÜÜ) *
;
ÜÜ* +
}
áá 	
)
áá	 

;
áá
 
modelBuilder
ââ 
.
ââ 
Entity
ââ 
<
ââ 
	Recepcion
ââ %
>
ââ% &
(
ââ& '
entity
ââ' -
=>
ââ. 0
{
ää 	
entity
ãã 
.
ãã 
HasKey
ãã 
(
ãã 
e
ãã 
=>
ãã 
e
ãã  
.
ãã  !
IdRecepcion
ãã! ,
)
ãã, -
.
ãã- .
HasName
ãã. 5
(
ãã5 6
$str
ãã6 V
)
ããV W
;
ããW X
entity
çç 
.
çç 
ToTable
çç 
(
çç 
$str
çç &
)
çç& '
;
çç' (
entity
èè 
.
èè 
Property
èè 
(
èè 
e
èè 
=>
èè  
e
èè! "
.
èè" #
Adelanto
èè# +
)
èè+ ,
.
èè, -
HasColumnType
èè- :
(
èè: ;
$str
èè; K
)
èèK L
;
èèL M
entity
êê 
.
êê 
Property
êê 
(
êê 
e
êê 
=>
êê  
e
êê! "
.
êê" #
CostoPenalidad
êê# 1
)
êê1 2
.
ëë  
HasDefaultValueSql
ëë #
(
ëë# $
$str
ëë$ +
)
ëë+ ,
.
íí 
HasColumnType
íí 
(
íí 
$str
íí /
)
íí/ 0
;
íí0 1
entity
ìì 
.
ìì 
Property
ìì 
(
ìì 
e
ìì 
=>
ìì  
e
ìì! "
.
ìì" #
FechaEntrada
ìì# /
)
ìì/ 0
.
îî  
HasDefaultValueSql
îî #
(
îî# $
$str
îî$ 1
)
îî1 2
.
ïï 
HasColumnType
ïï 
(
ïï 
$str
ïï )
)
ïï) *
;
ïï* +
entity
ññ 
.
ññ 
Property
ññ 
(
ññ 
e
ññ 
=>
ññ  
e
ññ! "
.
ññ" #
FechaSalida
ññ# .
)
ññ. /
.
ññ/ 0
HasColumnType
ññ0 =
(
ññ= >
$str
ññ> H
)
ññH I
;
ññI J
entity
óó 
.
óó 
Property
óó 
(
óó 
e
óó 
=>
óó  
e
óó! "
.
óó" #%
FechaSalidaConfirmacion
óó# :
)
óó: ;
.
óó; <
HasColumnType
óó< I
(
óóI J
$str
óóJ T
)
óóT U
;
óóU V
entity
òò 
.
òò 
Property
òò 
(
òò 
e
òò 
=>
òò  
e
òò! "
.
òò" #
Observacion
òò# .
)
òò. /
.
ôô 
HasMaxLength
ôô 
(
ôô 
$num
ôô !
)
ôô! "
.
öö 
	IsUnicode
öö 
(
öö 
false
öö  
)
öö  !
;
öö! "
entity
õõ 
.
õõ 
Property
õõ 
(
õõ 
e
õõ 
=>
õõ  
e
õõ! "
.
õõ" #
PrecioInicial
õõ# 0
)
õõ0 1
.
õõ1 2
HasColumnType
õõ2 ?
(
õõ? @
$str
õõ@ P
)
õõP Q
;
õõQ R
entity
úú 
.
úú 
Property
úú 
(
úú 
e
úú 
=>
úú  
e
úú! "
.
úú" #
PrecioRestante
úú# 1
)
úú1 2
.
úú2 3
HasColumnType
úú3 @
(
úú@ A
$str
úúA Q
)
úúQ R
;
úúR S
entity
ùù 
.
ùù 
Property
ùù 
(
ùù 
e
ùù 
=>
ùù  
e
ùù! "
.
ùù" #
TotalPagado
ùù# .
)
ùù. /
.
ûû  
HasDefaultValueSql
ûû #
(
ûû# $
$str
ûû$ +
)
ûû+ ,
.
üü 
HasColumnType
üü 
(
üü 
$str
üü /
)
üü/ 0
;
üü0 1
entity
°° 
.
°° 
HasOne
°° 
(
°° 
d
°° 
=>
°° 
d
°°  
.
°°  !!
IdClienteNavigation
°°! 4
)
°°4 5
.
°°5 6
WithMany
°°6 >
(
°°> ?
p
°°? @
=>
°°A C
p
°°D E
.
°°E F

Recepcions
°°F P
)
°°P Q
.
¢¢ 
HasForeignKey
¢¢ 
(
¢¢ 
d
¢¢  
=>
¢¢! #
d
¢¢$ %
.
¢¢% &
	IdCliente
¢¢& /
)
¢¢/ 0
.
££ 
HasConstraintName
££ "
(
££" #
$str
££# C
)
££C D
;
££D E
entity
•• 
.
•• 
HasOne
•• 
(
•• 
d
•• 
=>
•• 
d
••  
.
••  !$
IdHabitacionNavigation
••! 7
)
••7 8
.
••8 9
WithMany
••9 A
(
••A B
p
••B C
=>
••D F
p
••G H
.
••H I

Recepcions
••I S
)
••S T
.
¶¶ 
HasForeignKey
¶¶ 
(
¶¶ 
d
¶¶  
=>
¶¶! #
d
¶¶$ %
.
¶¶% &
IdHabitacion
¶¶& 2
)
¶¶2 3
.
ßß 
HasConstraintName
ßß "
(
ßß" #
$str
ßß# C
)
ßßC D
;
ßßD E
}
®® 	
)
®®	 

;
®®
 
modelBuilder
™™ 
.
™™ 
Entity
™™ 
<
™™ 

RolUsuario
™™ &
>
™™& '
(
™™' (
entity
™™( .
=>
™™/ 1
{
´´ 	
entity
¨¨ 
.
¨¨ 
HasKey
¨¨ 
(
¨¨ 
e
¨¨ 
=>
¨¨ 
e
¨¨  
.
¨¨  !
IdRolUsuario
¨¨! -
)
¨¨- .
.
¨¨. /
HasName
¨¨/ 6
(
¨¨6 7
$str
¨¨7 W
)
¨¨W X
;
¨¨X Y
entity
ÆÆ 
.
ÆÆ 
ToTable
ÆÆ 
(
ÆÆ 
$str
ÆÆ '
)
ÆÆ' (
;
ÆÆ( )
entity
∞∞ 
.
∞∞ 
Property
∞∞ 
(
∞∞ 
e
∞∞ 
=>
∞∞  
e
∞∞! "
.
∞∞" #
Descripcion
∞∞# .
)
∞∞. /
.
±± 
HasMaxLength
±± 
(
±± 
$num
±±  
)
±±  !
.
≤≤ 
	IsUnicode
≤≤ 
(
≤≤ 
false
≤≤  
)
≤≤  !
;
≤≤! "
entity
≥≥ 
.
≥≥ 
Property
≥≥ 
(
≥≥ 
e
≥≥ 
=>
≥≥  
e
≥≥! "
.
≥≥" #
Estado
≥≥# )
)
≥≥) *
.
≥≥* + 
HasDefaultValueSql
≥≥+ =
(
≥≥= >
$str
≥≥> E
)
≥≥E F
;
≥≥F G
entity
¥¥ 
.
¥¥ 
Property
¥¥ 
(
¥¥ 
e
¥¥ 
=>
¥¥  
e
¥¥! "
.
¥¥" #
FechaCreacion
¥¥# 0
)
¥¥0 1
.
µµ  
HasDefaultValueSql
µµ #
(
µµ# $
$str
µµ$ 1
)
µµ1 2
.
∂∂ 
HasColumnType
∂∂ 
(
∂∂ 
$str
∂∂ )
)
∂∂) *
;
∂∂* +
}
∑∑ 	
)
∑∑	 

;
∑∑
 
modelBuilder
ππ 
.
ππ 
Entity
ππ 
<
ππ 
Usuario
ππ #
>
ππ# $
(
ππ$ %
entity
ππ% +
=>
ππ, .
{
∫∫ 	
entity
ªª 
.
ªª 
HasKey
ªª 
(
ªª 
e
ªª 
=>
ªª 
e
ªª  
.
ªª  !
	IdUsuario
ªª! *
)
ªª* +
.
ªª+ ,
HasName
ªª, 3
(
ªª3 4
$str
ªª4 S
)
ªªS T
;
ªªT U
entity
ΩΩ 
.
ΩΩ 
ToTable
ΩΩ 
(
ΩΩ 
$str
ΩΩ $
)
ΩΩ$ %
;
ΩΩ% &
entity
øø 
.
øø 
Property
øø 
(
øø 
e
øø 
=>
øø  
e
øø! "
.
øø" #
Clave
øø# (
)
øø( )
.
¿¿ 
HasMaxLength
¿¿ 
(
¿¿ 
$num
¿¿  
)
¿¿  !
.
¡¡ 
	IsUnicode
¡¡ 
(
¡¡ 
false
¡¡  
)
¡¡  !
;
¡¡! "
entity
¬¬ 
.
¬¬ 
Property
¬¬ 
(
¬¬ 
e
¬¬ 
=>
¬¬  
e
¬¬! "
.
¬¬" #
Correo
¬¬# )
)
¬¬) *
.
√√ 
HasMaxLength
√√ 
(
√√ 
$num
√√  
)
√√  !
.
ƒƒ 
	IsUnicode
ƒƒ 
(
ƒƒ 
false
ƒƒ  
)
ƒƒ  !
;
ƒƒ! "
entity
≈≈ 
.
≈≈ 
Property
≈≈ 
(
≈≈ 
e
≈≈ 
=>
≈≈  
e
≈≈! "
.
≈≈" #
Estado
≈≈# )
)
≈≈) *
.
≈≈* + 
HasDefaultValueSql
≈≈+ =
(
≈≈= >
$str
≈≈> E
)
≈≈E F
;
≈≈F G
entity
∆∆ 
.
∆∆ 
Property
∆∆ 
(
∆∆ 
e
∆∆ 
=>
∆∆  
e
∆∆! "
.
∆∆" #
FechaCreacion
∆∆# 0
)
∆∆0 1
.
««  
HasDefaultValueSql
«« #
(
««# $
$str
««$ 1
)
««1 2
.
»» 
HasColumnType
»» 
(
»» 
$str
»» )
)
»») *
;
»»* +
entity
…… 
.
…… 
Property
…… 
(
…… 
e
…… 
=>
……  
e
……! "
.
……" #
NombreCompleto
……# 1
)
……1 2
.
   
HasMaxLength
   
(
   
$num
    
)
    !
.
ÀÀ 
	IsUnicode
ÀÀ 
(
ÀÀ 
false
ÀÀ  
)
ÀÀ  !
;
ÀÀ! "
entity
ÕÕ 
.
ÕÕ 
HasOne
ÕÕ 
(
ÕÕ 
d
ÕÕ 
=>
ÕÕ 
d
ÕÕ  
.
ÕÕ  !$
IdRolUsuarioNavigation
ÕÕ! 7
)
ÕÕ7 8
.
ÕÕ8 9
WithMany
ÕÕ9 A
(
ÕÕA B
p
ÕÕB C
=>
ÕÕD F
p
ÕÕG H
.
ÕÕH I
Usuarios
ÕÕI Q
)
ÕÕQ R
.
ŒŒ 
HasForeignKey
ŒŒ 
(
ŒŒ 
d
ŒŒ  
=>
ŒŒ! #
d
ŒŒ$ %
.
ŒŒ% &
IdRolUsuario
ŒŒ& 2
)
ŒŒ2 3
.
œœ 
HasConstraintName
œœ "
(
œœ" #
$str
œœ# C
)
œœC D
;
œœD E
}
–– 	
)
––	 

;
––
 $
OnModelCreatingPartial
““ 
(
““ 
modelBuilder
““ +
)
““+ ,
;
““, -
}
”” 
partial
’’ 
void
’’ $
OnModelCreatingPartial
’’ '
(
’’' (
ModelBuilder
’’( 4
modelBuilder
’’5 A
)
’’A B
;
’’B C
}÷÷ Û

mC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\EstadoHabitacion.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
EstadoHabitacion %
{ 
public 

int 
IdEstadoHabitacion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 

string

 
?

 
Descripcion

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
ICollection 
< 

Habitacion )
>) *
Habitacions+ 6
{7 8
get9 <
;< =
}> ?
=@ A
newB E
ListF J
<J K

HabitacionK U
>U V
(V W
)W X
;X Y
} §
gC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Habitacion.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 

Habitacion 
{ 
public 

int 
IdHabitacion 
{ 
get !
;! "
set# &
;& '
}( )
public

 

string

 
?

 
Numero

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

string 
? 
Detalle 
{ 
get  
;  !
set" %
;% &
}' (
public 

decimal 
? 
Precio 
{ 
get  
;  !
set" %
;% &
}' (
public 

int 
? 
IdEstadoHabitacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

int 
? 
IdPiso 
{ 
get 
; 
set !
;! "
}# $
public 

int 
? 
IdCategoria 
{ 
get !
;! "
set# &
;& '
}( )
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
	Categoria 
? !
IdCategoriaNavigation 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 

virtual 
EstadoHabitacion #
?# $(
IdEstadoHabitacionNavigation% A
{B C
getD G
;G H
setI L
;L M
}N O
public 

virtual 
Piso 
? 
IdPisoNavigation )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public   

virtual   
ICollection   
<   
	Recepcion   (
>  ( )

Recepcions  * 4
{  5 6
get  7 :
;  : ;
}  < =
=  > ?
new  @ C
List  D H
<  H I
	Recepcion  I R
>  R S
(  S T
)  T U
;  U V
}!! œ

aC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Piso.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
Piso 
{ 
public 

int 
IdPiso 
{ 
get 
; 
set  
;  !
}" #
public

 

string

 
?

 
Descripcion

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
ICollection 
< 

Habitacion )
>) *
Habitacions+ 6
{7 8
get9 <
;< =
}> ?
=@ A
newB E
ListF J
<J K

HabitacionK U
>U V
(V W
)W X
;X Y
} »
fC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Recepcion.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
	Recepcion 
{ 
public 

int 
IdRecepcion 
{ 
get  
;  !
set" %
;% &
}' (
public

 

int

 
?

 
	IdCliente

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 

int 
? 
IdHabitacion 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
? 
FechaEntrada !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

DateTime 
? 
FechaSalida  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

DateTime 
? #
FechaSalidaConfirmacion ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 

decimal 
? 
PrecioInicial !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

decimal 
? 
Adelanto 
{ 
get "
;" #
set$ '
;' (
}) *
public 

decimal 
? 
PrecioRestante "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

decimal 
? 
TotalPagado 
{  !
get" %
;% &
set' *
;* +
}, -
public 

decimal 
? 
CostoPenalidad "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
Observacion 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   

bool   
?   
Estado   
{   
get   
;   
set   "
;  " #
}  $ %
public"" 

virtual"" 
Cliente"" 
?"" 
IdClienteNavigation"" /
{""0 1
get""2 5
;""5 6
set""7 :
;"": ;
}""< =
public$$ 

virtual$$ 

Habitacion$$ 
?$$ "
IdHabitacionNavigation$$ 5
{$$6 7
get$$8 ;
;$$; <
set$$= @
;$$@ A
}$$B C
}%% ÿ

gC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\RolUsuario.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 

RolUsuario 
{ 
public 

int 
IdRolUsuario 
{ 
get !
;! "
set# &
;& '
}( )
public

 

string

 
?

 
Descripcion

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 
ICollection 
< 
Usuario &
>& '
Usuarios( 0
{1 2
get3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E
UsuarioE L
>L M
(M N
)N O
;O P
} ∆
dC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Models\Usuario.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Models $
;$ %
public 
partial 
class 
Usuario 
{ 
public 

int 
	IdUsuario 
{ 
get 
; 
set  #
;# $
}% &
public

 

string

 
?

 
NombreCompleto

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 

string 
? 
Correo 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
? 
IdRolUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
? 
Clave 
{ 
get 
; 
set  #
;# $
}% &
public 

bool 
? 
Estado 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
? 
FechaCreacion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

virtual 

RolUsuario 
? "
IdRolUsuarioNavigation 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} •
hC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Pages\Error.cshtml.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Pages #
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
[ "
IgnoreAntiforgeryToken 
] 
public		 

class		 

ErrorModel		 
:		 
	PageModel		 '
{

 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} Â$
]C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddRazorPages 
( 
)  
;  !
builder 
. 
Services 
. 
AddDbContext 
<  
DbhotelBlazorContext 2
>2 3
(3 4
options4 ;
=>< >
{ 
options 
. 
UseSqlServer 
( 
builder  
.  !
Configuration! .
.. /
GetConnectionString/ B
(B C
$strC N
)N O
)O P
;P Q
} 
) 
; 
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
AutoMapperProfile& 7
)7 8
)8 9
;9 :
builder 
. 
Services 
. 
	AddScoped 
< 
IUsuarioRepositorio .
,. /
UsuarioRepositorio0 B
>B C
(C D
)D E
;E F
builder 
. 
Services 
. 
	AddScoped 
< "
IRolUsuarioRepositorio 1
,1 2!
RolUsuarioRepositorio3 H
>H I
(I J
)J K
;K L
builder 
. 
Services 
. 
	AddScoped 
< !
ICategoriaRepositorio 0
,0 1 
CategoriaRepositorio2 F
>F G
(G H
)H I
;I J
builder 
. 
Services 
. 
	AddScoped 
< 
IPisoRepositorio +
,+ ,
PisoRepositorio- <
>< =
(= >
)> ?
;? @
builder 
. 
Services 
. 
	AddScoped 
< 
IClienteRepositorio .
,. /
ClienteRepositorio0 B
>B C
(C D
)D E
;E F
builder 
. 
Services 
. 
	AddScoped 
< "
IHabitacionRepositorio 1
,1 2!
HabitacionRepositorio3 H
>H I
(I J
)J K
;K L
builder 
. 
Services 
. 
	AddScoped 
< !
IRecepcionRepositorio 0
,0 1 
RecepcionRepositorio2 F
>F G
(G H
)H I
;I J
builder 
. 
Services 
. 
	AddScoped 
< !
IDashBoardRepositorio 0
,0 1 
DashBoardRepositorio2 F
>F G
(G H
)H I
;I J
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if!! 
(!! 
app!! 
.!! 
Environment!! 
.!! 
IsDevelopment!! !
(!!! "
)!!" #
)!!# $
{"" 
app## 
.## #
UseWebAssemblyDebugging## 
(##  
)##  !
;##! "
}$$ 
else%% 
{&& 
app'' 
.'' 
UseExceptionHandler'' 
('' 
$str'' $
)''$ %
;''% &
}(( 
app** 
.** #
UseBlazorFrameworkFiles** 
(** 
)** 
;** 
app++ 
.++ 
UseStaticFiles++ 
(++ 
)++ 
;++ 
app-- 
.-- 

UseRouting-- 
(-- 
)-- 
;-- 
app00 
.00 
MapRazorPages00 
(00 
)00 
;00 
app11 
.11 
MapControllers11 
(11 
)11 
;11 
app22 
.22 
MapFallbackToFile22 
(22 
$str22 "
)22" #
;22# $
app44 
.44 
Run44 
(44 
)44 	
;44	 
‰
ÅC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\ICategoriaRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface !
ICategoriaRepositorio *
{ 
Task 
< 
List 
< 
	Categoria 
> 
> 
Lista #
(# $
)$ %
;% &
Task		 
<		 
	Categoria		 
>		 
Obtener		 
(		  

Expression		  *
<		* +
Func		+ /
<		/ 0
	Categoria		0 9
,		9 :
bool		; ?
>		? @
>		@ A
filtro		B H
=		I J
null		K O
)		O P
;		P Q
Task

 
<

 
	Categoria

 
>

 
Crear

 
(

 
	Categoria

 '
entidad

( /
)

/ 0
;

0 1
Task 
< 
bool 
> 
Editar 
( 
	Categoria #
entidad$ +
)+ ,
;, -
Task 
< 
bool 
> 
Eliminar 
( 
	Categoria %
entidad& -
)- .
;. /
Task 
< 

IQueryable 
< 
	Categoria !
>! "
>" #
	Consultar$ -
(- .

Expression. 8
<8 9
Func9 =
<= >
	Categoria> G
,G H
boolI M
>M N
>N O
filtroP V
=W X
nullY ]
)] ^
;^ _
} 
} Õ
C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IClienteRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface 
IClienteRepositorio (
{ 
Task 
< 
List 
< 
Cliente 
> 
> 
Lista !
(! "
)" #
;# $
Task		 
<		 
Cliente		 
>		 
Obtener		 
(		 

Expression		 (
<		( )
Func		) -
<		- .
Cliente		. 5
,		5 6
bool		7 ;
>		; <
>		< =
filtro		> D
=		E F
null		G K
)		K L
;		L M
Task

 
<

 
Cliente

 
>

 
Crear

 
(

 
Cliente

 #
entidad

$ +
)

+ ,
;

, -
Task 
< 
bool 
> 
Editar 
( 
Cliente !
entidad" )
)) *
;* +
Task 
< 
bool 
> 
Eliminar 
( 
Cliente #
entidad$ +
)+ ,
;, -
Task 
< 

IQueryable 
< 
Cliente 
>  
>  !
	Consultar" +
(+ ,

Expression, 6
<6 7
Func7 ;
<; <
Cliente< C
,C D
boolE I
>I J
>J K
filtroL R
=S T
nullU Y
)Y Z
;Z [
} 
} Í
ÅC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IDashBoardRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface !
IDashBoardRepositorio *
{ 
Task 
< 
int 
> 
TotalHabitaciones #
(# $
)$ %
;% &
Task 
< 
int 
> #
HabitacionesDisponibles )
() *
)* +
;+ ,
Task 
< 
int 
>  
HabitacionesOcupadas &
(& '
)' (
;( )
Task 
< 
int 
>  
HabitacionesLimpieza &
(& '
)' (
;( )
}		 
}

 Ô
ÇC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IHabitacionRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface "
IHabitacionRepositorio +
{ 
Task 
< 
List 
< 

Habitacion 
> 
> 
Lista $
($ %
)% &
;& '
Task		 
<		 

Habitacion		 
>		 
Obtener		  
(		  !

Expression		! +
<		+ ,
Func		, 0
<		0 1

Habitacion		1 ;
,		; <
bool		= A
>		A B
>		B C
filtro		D J
=		K L
null		M Q
)		Q R
;		R S
Task

 
<

 

Habitacion

 
>

 
Crear

 
(

 

Habitacion

 )
entidad

* 1
)

1 2
;

2 3
Task 
< 
bool 
> 
Editar 
( 

Habitacion $
entidad% ,
), -
;- .
Task 
< 
bool 
> 
Eliminar 
( 

Habitacion &
entidad' .
). /
;/ 0
Task 
< 

IQueryable 
< 

Habitacion "
>" #
># $
	Consultar% .
(. /

Expression/ 9
<9 :
Func: >
<> ?

Habitacion? I
,I J
boolK O
>O P
>P Q
filtroR X
=Y Z
null[ _
)_ `
;` a
} 
} ¨
|C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IPisoRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface 
IPisoRepositorio %
{ 
Task 
< 
List 
< 
Piso 
> 
> 
Lista 
( 
)  
;  !
Task		 
<		 
Piso		 
>		 
Obtener		 
(		 

Expression		 %
<		% &
Func		& *
<		* +
Piso		+ /
,		/ 0
bool		1 5
>		5 6
>		6 7
filtro		8 >
=		? @
null		A E
)		E F
;		F G
Task

 
<

 
Piso

 
>

 
Crear

 
(

 
Piso

 
entidad

 %
)

% &
;

& '
Task 
< 
bool 
> 
Editar 
( 
Piso 
entidad &
)& '
;' (
Task 
< 
bool 
> 
Eliminar 
( 
Piso  
entidad! (
)( )
;) *
Task 
< 

IQueryable 
< 
Piso 
> 
> 
	Consultar (
(( )

Expression) 3
<3 4
Func4 8
<8 9
Piso9 =
,= >
bool? C
>C D
>D E
filtroF L
=M N
nullO S
)S T
;T U
} 
} õ
ÅC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IRecepcionRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface !
IRecepcionRepositorio *
{ 
Task		 
<		 

IQueryable		 
<		 
	Recepcion		 !
>		! "
>		" #
	Consultar		$ -
(		- .

Expression		. 8
<		8 9
Func		9 =
<		= >
	Recepcion		> G
,		G H
bool		I M
>		M N
>		N O
filtro		P V
=		W X
null		Y ]
)		] ^
;		^ _
Task

 
<

 
	Recepcion

 
>

 
Obtener

 
(

  

Expression

  *
<

* +
Func

+ /
<

/ 0
	Recepcion

0 9
,

9 :
bool

; ?
>

? @
>

@ A
filtro

B H
=

I J
null

K O
)

O P
;

P Q
Task 
< 
	Recepcion 
> 
Crear 
( 
	Recepcion '
entidad( /
)/ 0
;0 1
Task 
< 
bool 
> 
Editar 
( 
	Recepcion #
entidad$ +
)+ ,
;, -
Task 
< 
List 
< 
	Recepcion 
> 
> 
Reporte %
(% &
string& ,
FechaInicio- 8
,8 9
string: @
FechaFinA I
)I J
;J K
} 
} ‰
ÇC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IRolUsuarioRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface "
IRolUsuarioRepositorio +
{ 
Task 
< 
List 
< 

RolUsuario 
> 
> 
Lista $
($ %
)% &
;& '
} 
}		 Õ
C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Contratos\IUsuarioRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
	Contratos* 3
{ 
public 

	interface 
IUsuarioRepositorio (
{ 
Task 
< 
List 
< 
Usuario 
> 
> 
Lista !
(! "
)" #
;# $
Task		 
<		 
Usuario		 
>		 
Obtener		 
(		 

Expression		 (
<		( )
Func		) -
<		- .
Usuario		. 5
,		5 6
bool		7 ;
>		; <
>		< =
filtro		> D
=		E F
null		G K
)		K L
;		L M
Task

 
<

 
Usuario

 
>

 
Crear

 
(

 
Usuario

 #
entidad

$ +
)

+ ,
;

, -
Task 
< 
bool 
> 
Editar 
( 
Usuario !
entidad" )
)) *
;* +
Task 
< 
bool 
> 
Eliminar 
( 
Usuario #
entidad$ +
)+ ,
;, -
Task 
< 

IQueryable 
< 
Usuario 
>  
>  !
	Consultar" +
(+ ,

Expression, 6
<6 7
Func7 ;
<; <
Usuario< C
,C D
boolE I
>I J
>J K
filtroL R
=S T
nullU Y
)Y Z
;Z [
} 
} Ó)
ÖC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\CategoriaRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public		 

class		  
CategoriaRepositorio		 %
:		& '!
ICategoriaRepositorio		( =
{

 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public  
CategoriaRepositorio #
(# $ 
DbhotelBlazorContext$ 8
	dbContext9 B
)B C
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
	Categoria% .
>. /
>/ 0
	Consultar1 :
(: ;

Expression; E
<E F
FuncF J
<J K
	CategoriaK T
,T U
boolV Z
>Z [
>[ \
filtro] c
=d e
nullf j
)j k
{ 	

IQueryable 
< 
	Categoria  
>  !
queryEntidad" .
=/ 0
filtro1 7
==8 :
null; ?
?@ A

_dbContextB L
.L M
	CategoriaM V
:W X

_dbContextY c
.c d
	Categoriad m
.m n
Wheren s
(s t
filtrot z
)z {
;{ |
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 
	Categoria #
># $
Crear% *
(* +
	Categoria+ 4
entidad5 <
)< =
{ 	
try 
{ 

_dbContext 
. 
Set 
< 
	Categoria (
>( )
() *
)* +
.+ ,
Add, /
(/ 0
entidad0 7
)7 8
;8 9
await 

_dbContext  
.  !
SaveChangesAsync! 1
(1 2
)2 3
;3 4
return 
entidad 
; 
} 
catch   
{!! 
throw"" 
;"" 
}## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
bool&& 
>&& 
Editar&&  &
(&&& '
	Categoria&&' 0
entidad&&1 8
)&&8 9
{'' 	
try(( 
{)) 

_dbContext** 
.** 
	Categoria** $
.**$ %
Update**% +
(**+ ,
entidad**, 3
)**3 4
;**4 5
await++ 

_dbContext++  
.++  !
SaveChangesAsync++! 1
(++1 2
)++2 3
;++3 4
return,, 
true,, 
;,, 
}-- 
catch.. 
{// 
throw00 
;00 
}11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 
Eliminar44  (
(44( )
	Categoria44) 2
entidad443 :
)44: ;
{55 	
try66 
{77 

_dbContext88 
.88 
	Categoria88 $
.88$ %
Remove88% +
(88+ ,
entidad88, 3
)883 4
;884 5
await99 

_dbContext99  
.99  !
SaveChangesAsync99! 1
(991 2
)992 3
;993 4
return:: 
true:: 
;:: 
};; 
catch<< 
{== 
throw>> 
;>> 
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 
	CategoriaBB (
>BB( )
>BB) *
ListaBB+ 0
(BB0 1
)BB1 2
{CC 	
tryDD 
{EE 
returnFF 
awaitFF 

_dbContextFF '
.FF' (
	CategoriaFF( 1
.FF1 2
ToListAsyncFF2 =
(FF= >
)FF> ?
;FF? @
}GG 
catchHH 
{II 
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
	CategoriaNN #
>NN# $
ObtenerNN% ,
(NN, -

ExpressionNN- 7
<NN7 8
FuncNN8 <
<NN< =
	CategoriaNN= F
,NNF G
boolNNH L
>NNL M
>NNM N
filtroNNO U
=NNV W
nullNNX \
)NN\ ]
{OO 	
tryPP 
{QQ 
returnRR 
awaitRR 

_dbContextRR '
.RR' (
	CategoriaRR( 1
.RR1 2
WhereRR2 7
(RR7 8
filtroRR8 >
)RR> ?
.RR? @
FirstOrDefaultAsyncRR@ S
(RRS T
)RRT U
;RRU V
}SS 
catchTT 
{UU 
throwVV 
;VV 
}WW 
}XX 	
}YY 
}ZZ  )
ÉC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\ClienteRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public		 

class		 
ClienteRepositorio		 #
:		$ %
IClienteRepositorio		& 9
{

 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public 
ClienteRepositorio !
(! " 
DbhotelBlazorContext" 6
	dbContext7 @
)@ A
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
Cliente% ,
>, -
>- .
	Consultar/ 8
(8 9

Expression9 C
<C D
FuncD H
<H I
ClienteI P
,P Q
boolR V
>V W
>W X
filtroY _
=` a
nullb f
)f g
{ 	

IQueryable 
< 
Cliente 
> 
queryEntidad  ,
=- .
filtro/ 5
==6 8
null9 =
?> ?

_dbContext@ J
.J K
ClientesK S
:T U

_dbContextV `
.` a
Clientesa i
.i j
Wherej o
(o p
filtrop v
)v w
;w x
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 
Cliente !
>! "
Crear# (
(( )
Cliente) 0
entidad1 8
)8 9
{ 	
try 
{ 

_dbContext 
. 
Set 
< 
Cliente &
>& '
(' (
)( )
.) *
Add* -
(- .
entidad. 5
)5 6
;6 7
await 

_dbContext  
.  !
SaveChangesAsync! 1
(1 2
)2 3
;3 4
return 
entidad 
; 
} 
catch 
{   
throw!! 
;!! 
}"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
bool%% 
>%% 
Editar%%  &
(%%& '
Cliente%%' .
entidad%%/ 6
)%%6 7
{&& 	
try'' 
{(( 

_dbContext)) 
.)) 
Clientes)) #
.))# $
Update))$ *
())* +
entidad))+ 2
)))2 3
;))3 4
await** 

_dbContext**  
.**  !
SaveChangesAsync**! 1
(**1 2
)**2 3
;**3 4
return++ 
true++ 
;++ 
},, 
catch-- 
{.. 
throw// 
;// 
}00 
}11 	
public33 
async33 
Task33 
<33 
bool33 
>33 
Eliminar33  (
(33( )
Cliente33) 0
entidad331 8
)338 9
{44 	
try55 
{66 

_dbContext77 
.77 
Clientes77 #
.77# $
Remove77$ *
(77* +
entidad77+ 2
)772 3
;773 4
await88 

_dbContext88  
.88  !
SaveChangesAsync88! 1
(881 2
)882 3
;883 4
return99 
true99 
;99 
}:: 
catch;; 
{<< 
throw== 
;== 
}>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ListAA 
<AA 
ClienteAA &
>AA& '
>AA' (
ListaAA) .
(AA. /
)AA/ 0
{BB 	
tryCC 
{DD 
returnEE 
awaitEE 

_dbContextEE '
.EE' (
ClientesEE( 0
.EE0 1
ToListAsyncEE1 <
(EE< =
)EE= >
;EE> ?
}FF 
catchGG 
{HH 
throwII 
;II 
}JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
ClienteMM !
>MM! "
ObtenerMM# *
(MM* +

ExpressionMM+ 5
<MM5 6
FuncMM6 :
<MM: ;
ClienteMM; B
,MMB C
boolMMD H
>MMH I
>MMI J
filtroMMK Q
=MMR S
nullMMT X
)MMX Y
{NN 	
tryOO 
{PP 
returnQQ 
awaitQQ 

_dbContextQQ '
.QQ' (
ClientesQQ( 0
.QQ0 1
WhereQQ1 6
(QQ6 7
filtroQQ7 =
)QQ= >
.QQ> ?
FirstOrDefaultAsyncQQ? R
(QQR S
)QQS T
;QQT U
}RR 
catchSS 
{TT 
throwUU 
;UU 
}VV 
}WW 	
}XX 
}YY —!
ÖC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\DashBoardRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public 

class  
DashBoardRepositorio %
:& '!
IDashBoardRepositorio( =
{ 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public

  
DashBoardRepositorio

 #
(

# $ 
DbhotelBlazorContext

$ 8
	dbContext

9 B
)

B C
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
int 
> #
HabitacionesDisponibles 6
(6 7
)7 8
{ 	
try 
{ 

IQueryable 
< 

Habitacion %
>% &
query' ,
=- .

_dbContext/ 9
.9 :
Habitacions: E
;E F
int 
total 
= 
query !
.! "
Where" '
(' (
h( )
=>* ,
h- .
.. /
IdEstadoHabitacion/ A
==B D
$numE F
)F G
.G H
CountH M
(M N
)N O
;O P
return 
total 
; 
} 
catch 
{ 
throw 
; 
} 
} 	
public 
async 
Task 
< 
int 
>  
HabitacionesLimpieza 3
(3 4
)4 5
{ 	
try 
{   

IQueryable!! 
<!! 

Habitacion!! %
>!!% &
query!!' ,
=!!- .

_dbContext!!/ 9
.!!9 :
Habitacions!!: E
;!!E F
int"" 
total"" 
="" 
query"" !
.""! "
Where""" '
(""' (
h""( )
=>""* ,
h""- .
."". /
IdEstadoHabitacion""/ A
==""B D
$num""E F
)""F G
.""G H
Count""H M
(""M N
)""N O
;""O P
return## 
total## 
;## 
}$$ 
catch%% 
{&& 
throw'' 
;'' 
}(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
int++ 
>++  
HabitacionesOcupadas++ 3
(++3 4
)++4 5
{,, 	
try-- 
{.. 

IQueryable// 
<// 

Habitacion// %
>//% &
query//' ,
=//- .

_dbContext/// 9
.//9 :
Habitacions//: E
;//E F
int00 
total00 
=00 
query00 !
.00! "
Where00" '
(00' (
h00( )
=>00* ,
h00- .
.00. /
IdEstadoHabitacion00/ A
==00B D
$num00E F
)00F G
.00G H
Count00H M
(00M N
)00N O
;00O P
return11 
total11 
;11 
}22 
catch33 
{44 
throw55 
;55 
}66 
}77 	
public99 
async99 
Task99 
<99 
int99 
>99 
TotalHabitaciones99 0
(990 1
)991 2
{:: 	
try;; 
{<< 

IQueryable== 
<== 

Habitacion== %
>==% &
query==' ,
===- .

_dbContext==/ 9
.==9 :
Habitacions==: E
;==E F
int>> 
total>> 
=>> 
query>> !
.>>! "
Count>>" '
(>>' (
)>>( )
;>>) *
return?? 
total?? 
;?? 
}@@ 
catchAA 
{BB 
throwCC 
;CC 
}DD 
}EE 	
}FF 
}GG å*
ÜC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\HabitacionRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public		 

class		 !
HabitacionRepositorio		 &
:		' ("
IHabitacionRepositorio		) ?
{

 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public !
HabitacionRepositorio $
($ % 
DbhotelBlazorContext% 9
	dbContext: C
)C D
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %

Habitacion% /
>/ 0
>0 1
	Consultar2 ;
(; <

Expression< F
<F G
FuncG K
<K L

HabitacionL V
,V W
boolX \
>\ ]
>] ^
filtro_ e
=f g
nullh l
)l m
{ 	

IQueryable 
< 

Habitacion !
>! "
queryEntidad# /
=0 1
filtro2 8
==9 ;
null< @
?A B

_dbContextC M
.M N
HabitacionsN Y
:Z [

_dbContext\ f
.f g
Habitacionsg r
.r s
Wheres x
(x y
filtroy 
)	 Ä
;
Ä Å
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 

Habitacion $
>$ %
Crear& +
(+ ,

Habitacion, 6
entidad7 >
)> ?
{ 	
try 
{ 

_dbContext 
. 
Set 
< 

Habitacion )
>) *
(* +
)+ ,
., -
Add- 0
(0 1
entidad1 8
)8 9
;9 :
await 

_dbContext  
.  !
SaveChangesAsync! 1
(1 2
)2 3
;3 4
return 
entidad 
; 
} 
catch   
{!! 
throw"" 
;"" 
}## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
bool&& 
>&& 
Editar&&  &
(&&& '

Habitacion&&' 1
entidad&&2 9
)&&9 :
{'' 	
try(( 
{)) 

_dbContext** 
.** 
Habitacions** &
.**& '
Update**' -
(**- .
entidad**. 5
)**5 6
;**6 7
await++ 

_dbContext++  
.++  !
SaveChangesAsync++! 1
(++1 2
)++2 3
;++3 4
return,, 
true,, 
;,, 
}-- 
catch.. 
{// 
throw00 
;00 
}11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 
Eliminar44  (
(44( )

Habitacion44) 3
entidad444 ;
)44; <
{55 	
try66 
{77 

_dbContext88 
.88 
Habitacions88 &
.88& '
Remove88' -
(88- .
entidad88. 5
)885 6
;886 7
await99 

_dbContext99  
.99  !
SaveChangesAsync99! 1
(991 2
)992 3
;993 4
return:: 
true:: 
;:: 
};; 
catch<< 
{== 
throw>> 
;>> 
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 

HabitacionBB )
>BB) *
>BB* +
ListaBB, 1
(BB1 2
)BB2 3
{CC 	
tryDD 
{EE 
returnFF 
awaitFF 

_dbContextFF '
.FF' (
HabitacionsFF( 3
.FF3 4
ToListAsyncFF4 ?
(FF? @
)FF@ A
;FFA B
}GG 
catchHH 
{II 
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 

HabitacionNN $
>NN$ %
ObtenerNN& -
(NN- .

ExpressionNN. 8
<NN8 9
FuncNN9 =
<NN= >

HabitacionNN> H
,NNH I
boolNNJ N
>NNN O
>NNO P
filtroNNQ W
=NNX Y
nullNNZ ^
)NN^ _
{OO 	
tryPP 
{QQ 
returnRR 
awaitRR 

_dbContextRR '
.RR' (
HabitacionsRR( 3
.RR3 4
WhereRR4 9
(RR9 :
filtroRR: @
)RR@ A
.RRA B
FirstOrDefaultAsyncRRB U
(RRU V
)RRV W
;RRW X
}SS 
catchTT 
{UU 
throwVV 
;VV 
}WW 
}XX 	
}YY 
}ZZ ã)
ÄC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\PisoRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public		 

class		 
PisoRepositorio		  
:		! "
IPisoRepositorio		# 3
{

 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public 
PisoRepositorio 
(  
DbhotelBlazorContext 3
	dbContext4 =
)= >
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
Piso% )
>) *
>* +
	Consultar, 5
(5 6

Expression6 @
<@ A
FuncA E
<E F
PisoF J
,J K
boolL P
>P Q
>Q R
filtroS Y
=Z [
null\ `
)` a
{ 	

IQueryable 
< 
Piso 
> 
queryEntidad )
=* +
filtro, 2
==3 5
null6 :
?; <

_dbContext= G
.G H
PisosH M
:N O

_dbContextP Z
.Z [
Pisos[ `
.` a
Wherea f
(f g
filtrog m
)m n
;n o
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 
Piso 
> 
Crear  %
(% &
Piso& *
entidad+ 2
)2 3
{ 	
try 
{ 

_dbContext 
. 
Set 
< 
Piso #
># $
($ %
)% &
.& '
Add' *
(* +
entidad+ 2
)2 3
;3 4
await 

_dbContext  
.  !
SaveChangesAsync! 1
(1 2
)2 3
;3 4
return 
entidad 
; 
} 
catch   
{!! 
throw"" 
;"" 
}## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
bool&& 
>&& 
Editar&&  &
(&&& '
Piso&&' +
entidad&&, 3
)&&3 4
{'' 	
try(( 
{)) 

_dbContext** 
.** 
Pisos**  
.**  !
Update**! '
(**' (
entidad**( /
)**/ 0
;**0 1
await++ 

_dbContext++  
.++  !
SaveChangesAsync++! 1
(++1 2
)++2 3
;++3 4
return,, 
true,, 
;,, 
}-- 
catch.. 
{// 
throw00 
;00 
}11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 
Eliminar44  (
(44( )
Piso44) -
entidad44. 5
)445 6
{55 	
try66 
{77 

_dbContext88 
.88 
Pisos88  
.88  !
Remove88! '
(88' (
entidad88( /
)88/ 0
;880 1
await99 

_dbContext99  
.99  !
SaveChangesAsync99! 1
(991 2
)992 3
;993 4
return:: 
true:: 
;:: 
};; 
catch<< 
{== 
throw>> 
;>> 
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 
PisoBB #
>BB# $
>BB$ %
ListaBB& +
(BB+ ,
)BB, -
{CC 	
tryDD 
{EE 
returnFF 
awaitFF 

_dbContextFF '
.FF' (
PisosFF( -
.FF- .
ToListAsyncFF. 9
(FF9 :
)FF: ;
;FF; <
}GG 
catchHH 
{II 
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
PisoNN 
>NN 
ObtenerNN  '
(NN' (

ExpressionNN( 2
<NN2 3
FuncNN3 7
<NN7 8
PisoNN8 <
,NN< =
boolNN> B
>NNB C
>NNC D
filtroNNE K
=NNL M
nullNNN R
)NNR S
{OO 	
tryPP 
{QQ 
returnRR 
awaitRR 

_dbContextRR '
.RR' (
PisosRR( -
.RR- .
WhereRR. 3
(RR3 4
filtroRR4 :
)RR: ;
.RR; <
FirstOrDefaultAsyncRR< O
(RRO P
)RRP Q
;RRQ R
}SS 
catchTT 
{UU 
throwVV 
;VV 
}WW 
}XX 	
}YY 
}ZZ ¶T
ÖC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\RecepcionRepositorio.cs
	namespace		 	
SistemaHotel		
 
.		 
Server		 
.		 
Repositorio		 )
.		) *
Implementacion		* 8
{

 
public 

class  
RecepcionRepositorio %
:& '!
IRecepcionRepositorio( =
{ 
private 
readonly  
DbhotelBlazorContext -

_dbContext. 8
;8 9
public  
RecepcionRepositorio #
(# $ 
DbhotelBlazorContext$ 8
	dbContext9 B
)B C
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
	Recepcion% .
>. /
>/ 0
	Consultar1 :
(: ;

Expression; E
<E F
FuncF J
<J K
	RecepcionK T
,T U
boolV Z
>Z [
>[ \
filtro] c
=d e
nullf j
)j k
{ 	

IQueryable 
< 
	Recepcion  
>  !
queryEntidad" .
=/ 0
filtro1 7
==8 :
null; ?
?@ A

_dbContextB L
.L M

RecepcionsM W
:X Y

_dbContextZ d
.d e

Recepcionse o
.o p
Wherep u
(u v
filtrov |
)| }
;} ~
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 
	Recepcion #
># $
Crear% *
(* +
	Recepcion+ 4
entidad5 <
)< =
{ 	
using 
( 
var 
transaction "
=# $

_dbContext% /
./ 0
Database0 8
.8 9
BeginTransaction9 I
(I J
)J K
)K L
{ 
try 
{   
if"" 
("" 
entidad"" 
."" 
IdClienteNavigation"" 2
.""2 3
	IdCliente""3 <
==""= ?
$num""@ A
)""A B
{## 
var$$ 
cliente$$ #
=$$$ %
entidad$$& -
.$$- .
IdClienteNavigation$$. A
;$$A B

_dbContext%% "
.%%" #
Clientes%%# +
.%%+ ,
Add%%, /
(%%/ 0
cliente%%0 7
)%%7 8
;%%8 9
await&& 

_dbContext&& (
.&&( )
SaveChangesAsync&&) 9
(&&9 :
)&&: ;
;&&; <
entidad(( 
.((  
	IdCliente((  )
=((* +
cliente((, 3
.((3 4
	IdCliente((4 =
;((= >
entidad)) 
.))  
IdClienteNavigation))  3
=))4 5
null))6 :
;)): ;
}** 
else++ 
{,, 
entidad-- 
.--  
	IdCliente--  )
=--* +
entidad--, 3
.--3 4
IdClienteNavigation--4 G
.--G H
	IdCliente--H Q
;--Q R
entidad.. 
...  
IdClienteNavigation..  3
=..4 5
null..6 :
;..: ;
}// 
var11 

habitacion11 "
=11# $
await11% *

_dbContext11+ 5
.115 6
Habitacions116 A
.11A B
Where11B G
(11G H
h11H I
=>11J L
h11M N
.11N O
IdHabitacion11O [
==11\ ^
entidad11_ f
.11f g
IdHabitacion11g s
)11s t
.11t u

FirstAsync11u 
(	11 Ä
)
11Ä Å
;
11Å Ç

habitacion33 
.33 
IdEstadoHabitacion33 1
=332 3
$num334 5
;335 6

_dbContext44 
.44 
Habitacions44 *
.44* +
Update44+ 1
(441 2

habitacion442 <
)44< =
;44= >
await55 

_dbContext55 $
.55$ %
SaveChangesAsync55% 5
(555 6
)556 7
;557 8
if88 
(88 
entidad88 
.88  
Adelanto88  (
==88) +
null88, 0
)880 1
entidad99 
.99  
Adelanto99  (
=99) *
$num99+ ,
;99, -

_dbContext;; 
.;; 

Recepcions;; )
.;;) *
Add;;* -
(;;- .
entidad;;. 5
);;5 6
;;;6 7
await<< 

_dbContext<< $
.<<$ %
SaveChangesAsync<<% 5
(<<5 6
)<<6 7
;<<7 8
transaction>> 
.>>  
Commit>>  &
(>>& '
)>>' (
;>>( )
return@@ 
entidad@@ "
;@@" #
}AA 
catchBB 
{CC 
transactionDD 
.DD  
RollbackDD  (
(DD( )
)DD) *
;DD* +
throwEE 
;EE 
}FF 
}GG 
}HH 	
publicKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK 
EditarKK  &
(KK& '
	RecepcionKK' 0
entidadKK1 8
)KK8 9
{LL 	
usingMM 
(MM 
varMM 
transactionMM "
=MM# $

_dbContextMM% /
.MM/ 0
DatabaseMM0 8
.MM8 9
BeginTransactionMM9 I
(MMI J
)MMJ K
)MMK L
{NN 
tryOO 
{PP 
varQQ 

habitacionQQ "
=QQ# $
awaitQQ% *

_dbContextQQ+ 5
.QQ5 6
HabitacionsQQ6 A
.QQA B
WhereQQB G
(QQG H
hQQH I
=>QQJ L
hQQM N
.QQN O
IdHabitacionQQO [
==QQ\ ^
entidadQQ_ f
.QQf g
IdHabitacionQQg s
)QQs t
.QQt u

FirstAsyncQQu 
(	QQ Ä
)
QQÄ Å
;
QQÅ Ç

habitacionSS 
.SS 
IdEstadoHabitacionSS 1
=SS2 3
$numSS4 5
;SS5 6

_dbContextTT 
.TT 
HabitacionsTT *
.TT* +
UpdateTT+ 1
(TT1 2

habitacionTT2 <
)TT< =
;TT= >
awaitUU 

_dbContextUU $
.UU$ %
SaveChangesAsyncUU% 5
(UU5 6
)UU6 7
;UU7 8
entidadWW 
.WW 
EstadoWW "
=WW# $
falseWW% *
;WW* +
entidadXX 
.XX "
IdHabitacionNavigationXX 2
=XX3 4
nullXX5 9
;XX9 :
entidadYY 
.YY 
IdClienteNavigationYY /
=YY0 1
nullYY2 6
;YY6 7

_dbContextZZ 
.ZZ 

RecepcionsZZ )
.ZZ) *
UpdateZZ* 0
(ZZ0 1
entidadZZ1 8
)ZZ8 9
;ZZ9 :
await[[ 

_dbContext[[ $
.[[$ %
SaveChangesAsync[[% 5
([[5 6
)[[6 7
;[[7 8
transaction]] 
.]]  
Commit]]  &
(]]& '
)]]' (
;]]( )
return__ 
true__ 
;__  
}`` 
catchaa 
{bb 
transactioncc 
.cc  
Rollbackcc  (
(cc( )
)cc) *
;cc* +
throwdd 
;dd 
}ee 
}ff 
}gg 	
publickk 
asynckk 
Taskkk 
<kk 
	Recepcionkk #
>kk# $
Obtenerkk% ,
(kk, -

Expressionkk- 7
<kk7 8
Funckk8 <
<kk< =
	Recepcionkk= F
,kkF G
boolkkH L
>kkL M
>kkM N
filtrokkO U
=kkV W
nullkkX \
)kk\ ]
{ll 	
trymm 
{nn 
returnoo 
awaitoo 

_dbContextoo '
.oo' (

Recepcionsoo( 2
.oo2 3
Whereoo3 8
(oo8 9
filtrooo9 ?
)oo? @
.oo@ A
FirstOrDefaultAsyncooA T
(ooT U
)ooU V
;ooV W
}pp 
catchqq 
{rr 
throwss 
;ss 
}tt 
}uu 	
publicww 
asyncww 
Taskww 
<ww 
Listww 
<ww  
	Recepcionww  )
>ww) *
>ww* +
Reporteww, 3
(ww3 4
stringww4 :
FechaInicioww; F
,wwF G
stringwwH N
FechaFinwwO W
)wwW X
{xx 	
DateTimeyy 
fech_Inicioyy  
=yy! "
DateTimeyy# +
.yy+ ,

ParseExactyy, 6
(yy6 7
FechaInicioyy7 B
,yyB C
$stryyD P
,yyP Q
newyyR U
CultureInfoyyV a
(yya b
$stryyb i
)yyi j
)yyj k
;yyk l
DateTimezz 
fech_Finzz 
=zz 
DateTimezz  (
.zz( )

ParseExactzz) 3
(zz3 4
FechaFinzz4 <
,zz< =
$strzz> J
,zzJ K
newzzL O
CultureInfozzP [
(zz[ \
$strzz\ c
)zzc d
)zzd e
;zze f
List|| 
<|| 
	Recepcion|| 
>|| 
listaResumen|| (
=||) *
await||+ 0

_dbContext||1 ;
.||; <

Recepcions||< F
.}} 
Include}} 
(}} 
p}} 
=>}} 
p}} 
.}}  
IdClienteNavigation}}  3
)}}3 4
.~~ 
Include~~ 
(~~ 
v~~ 
=>~~ 
v~~ 
.~~  "
IdHabitacionNavigation~~  6
)~~6 7
. 
Where 
( 
dv 
=> 
dv  
.  !
FechaEntrada! -
.- .
Value. 3
.3 4
Date4 8
>=9 ;
fech_Inicio< G
.G H
DateH L
&&M O
dvP R
.R S
FechaEntradaS _
._ `
Value` e
.e f
Datef j
<=k m
fech_Finn v
.v w
Datew {
){ |
.
ÄÄ 
ToListAsync
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
return
ÇÇ 
listaResumen
ÇÇ 
;
ÇÇ  
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ¸

ÜC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\RolUsuarioRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public 

class !
RolUsuarioRepositorio &
:' ("
IRolUsuarioRepositorio) ?
{ 
private		 
readonly		  
DbhotelBlazorContext		 -

_dbContext		. 8
;		8 9
public !
RolUsuarioRepositorio $
($ % 
DbhotelBlazorContext% 9
	dbContext: C
)C D
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
List 
< 

RolUsuario )
>) *
>* +
Lista, 1
(1 2
)2 3
{ 	
try 
{ 
return 
await 

_dbContext '
.' (
RolUsuarios( 3
.3 4
ToListAsync4 ?
(? @
)@ A
;A B
} 
catch 
{ 
throw 
; 
} 
} 	
} 
} Ä)
ÉC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Repositorio\Implementacion\UsuarioRepositorio.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 
Repositorio )
.) *
Implementacion* 8
{ 
public 

class 
UsuarioRepositorio #
:$ %
IUsuarioRepositorio& 9
{		 
private

 
readonly

  
DbhotelBlazorContext

 -

_dbContext

. 8
;

8 9
public 
UsuarioRepositorio !
(! " 
DbhotelBlazorContext" 6
	dbContext7 @
)@ A
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
Usuario% ,
>, -
>- .
	Consultar/ 8
(8 9

Expression9 C
<C D
FuncD H
<H I
UsuarioI P
,P Q
boolR V
>V W
>W X
filtroY _
=` a
nullb f
)f g
{ 	

IQueryable 
< 
Usuario 
> 
queryEntidad  ,
=- .
filtro/ 5
==6 8
null9 =
?> ?

_dbContext@ J
.J K
UsuariosK S
:T U

_dbContextV `
.` a
Usuariosa i
.i j
Wherej o
(o p
filtrop v
)v w
;w x
return 
queryEntidad 
;  
} 	
public 
async 
Task 
< 
Usuario !
>! "
Crear# (
(( )
Usuario) 0
entidad1 8
)8 9
{ 	
try 
{ 

_dbContext 
. 
Set 
< 
Usuario &
>& '
(' (
)( )
.) *
Add* -
(- .
entidad. 5
)5 6
;6 7
await 

_dbContext  
.  !
SaveChangesAsync! 1
(1 2
)2 3
;3 4
return 
entidad 
; 
} 
catch   
{!! 
throw"" 
;"" 
}## 
}$$ 	
public&& 
async&& 
Task&& 
<&& 
bool&& 
>&& 
Editar&&  &
(&&& '
Usuario&&' .
entidad&&/ 6
)&&6 7
{'' 	
try(( 
{)) 

_dbContext** 
.** 
Update** !
(**! "
entidad**" )
)**) *
;*** +
await++ 

_dbContext++  
.++  !
SaveChangesAsync++! 1
(++1 2
)++2 3
;++3 4
return,, 
true,, 
;,, 
}-- 
catch.. 
{// 
throw00 
;00 
}11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 
Eliminar44  (
(44( )
Usuario44) 0
entidad441 8
)448 9
{55 	
try66 
{77 

_dbContext88 
.88 
Remove88 !
(88! "
entidad88" )
)88) *
;88* +
await99 

_dbContext99  
.99  !
SaveChangesAsync99! 1
(991 2
)992 3
;993 4
return:: 
true:: 
;:: 
};; 
catch<< 
{== 
throw>> 
;>> 
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 
UsuarioBB &
>BB& '
>BB' (
ListaBB) .
(BB. /
)BB/ 0
{CC 	
tryDD 
{EE 
returnFF 
awaitFF 

_dbContextFF '
.FF' (
UsuariosFF( 0
.FF0 1
ToListAsyncFF1 <
(FF< =
)FF= >
;FF> ?
}GG 
catchHH 
{II 
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
UsuarioNN !
>NN! "
ObtenerNN# *
(NN* +

ExpressionNN+ 5
<NN5 6
FuncNN6 :
<NN: ;
UsuarioNN; B
,NNB C
boolNND H
>NNH I
>NNI J
filtroNNK Q
=NNR S
nullNNT X
)NNX Y
{OO 	
tryPP 
{QQ 
returnRR 
awaitRR 

_dbContextRR '
.RR' (
UsuariosRR( 0
.RR0 1
WhereRR1 6
(RR6 7
filtroRR7 =
)RR= >
.RR> ?
FirstOrDefaultAsyncRR? R
(RRR S
)RRS T
;RRT U
}SS 
catchTT 
{UU 
throwVV 
;VV 
}WW 
}XX 	
}YY 
}ZZ ›?
rC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Server\Utilidades\AutoMapperProfile.cs
	namespace 	
SistemaHotel
 
. 
Server 
. 

Utilidades (
{ 
public 

class 
AutoMapperProfile "
:# $
Profile% ,
{ 
public		 
AutoMapperProfile		  
(		  !
)		! "
{

 	
	CreateMap 
< 
	Categoria 
,  
CategoriaDTO! -
>- .
(. /
)/ 0
;0 1
	CreateMap 
< 
CategoriaDTO "
," #
	Categoria$ -
>- .
(. /
)/ 0
;0 1
	CreateMap 
< 

RolUsuario  
,  !
RolUsuarioDTO" /
>/ 0
(0 1
)1 2
;2 3
	CreateMap 
< 
RolUsuarioDTO #
,# $

RolUsuario% /
>/ 0
(0 1
)1 2
;2 3
	CreateMap 
< 
Usuario 
, 

UsuarioDTO )
>) *
(* +
)+ ,
;, -
	CreateMap 
< 

UsuarioDTO  
,  !
Usuario" )
>) *
(* +
)+ ,
. 
	ForMember 
( 
destino 
=> !
destino 
. 
Estado "
," #
opt 
=> 
opt 
. 
MapFrom &
(& '
src' *
=>+ -
true. 2
)2 3
) 
. 
	ForMember 
( 
destino #
=>$ &
destino 
. "
IdRolUsuarioNavigation 2
,2 3
opt 
=> 
opt 
. 
Ignore %
(% &
)& '
) 
; 
	CreateMap## 
<## 
Cliente## 
,## 

ClienteDTO## )
>##) *
(##* +
)##+ ,
;##, -
	CreateMap$$ 
<$$ 

ClienteDTO$$  
,$$  !
Cliente$$" )
>$$) *
($$* +
)$$+ ,
.%% 
	ForMember%% 
(%% 
destino%% 
=>%% !
destino&& 
.&& 
Estado&& "
,&&" #
opt'' 
=>'' 
opt'' 
.'' 
MapFrom'' &
(''& '
src''' *
=>''+ -
true''. 2
)''2 3
)(( 
;(( 
	CreateMap,, 
<,, 
EstadoHabitacion,, &
,,,& '
EstadoHabitacionDTO,,( ;
>,,; <
(,,< =
),,= >
;,,> ?
	CreateMap-- 
<-- 
EstadoHabitacionDTO-- )
,--) *
EstadoHabitacion--+ ;
>--; <
(--< =
)--= >
;--> ?
	CreateMap11 
<11 
Piso11 
,11 
PisoDTO11 #
>11# $
(11$ %
)11% &
;11& '
	CreateMap22 
<22 
PisoDTO22 
,22 
Piso22 #
>22# $
(22$ %
)22% &
;22& '
	CreateMap77 
<77 

Habitacion77  
,77  !
HabitacionDTO77" /
>77/ 0
(770 1
)771 2
;772 3
	CreateMap88 
<88 
HabitacionDTO88 #
,88# $

Habitacion88% /
>88/ 0
(880 1
)881 2
.99 
	ForMember99 
(99 
destino99 
=>99 !
destino:: 
.:: 
Estado:: "
,::" #
opt;; 
=>;; 
opt;; 
.;; 
MapFrom;; &
(;;& '
src;;' *
=>;;+ -
true;;. 2
);;2 3
)<< 
;<< 
	CreateMap@@ 
<@@ 
	Recepcion@@ 
,@@  
RecepcionDTO@@! -
>@@- .
(@@. /
)@@/ 0
;@@0 1
	CreateMapAA 
<AA 
RecepcionDTOAA "
,AA" #
	RecepcionAA$ -
>AA- .
(AA. /
)AA/ 0
.BB 
	ForMemberBB 
(BB 
destinoBB 
=>BB !
destinoCC 
.CC 
EstadoCC "
,CC" #
optDD 
=>DD 
optDD 
.DD 
MapFromDD &
(DD& '
srcDD' *
=>DD+ -
trueDD. 2
)DD2 3
)EE 
;EE 
	CreateMapGG 
<GG 
	RecepcionGG 
,GG  

ReporteDTOGG! +
>GG+ ,
(GG, -
)GG- .
.HH 
	ForMemberHH 
(HH 
destinoHH "
=>HH# %
destinoII 
.II 
NombreClienteII )
,II) *
optJJ 
=>JJ 
optJJ 
.JJ 
MapFromJJ &
(JJ& '
srcJJ' *
=>JJ+ -
srcJJ. 1
.JJ1 2
IdClienteNavigationJJ2 E
.JJE F
NombreCompletoJJF T
)JJT U
)KK 
.LL 
	ForMemberLL 
(LL 
destinoLL "
=>LL# %
destinoMM 
.MM 
TipoDocumentoMM )
,MM) *
optNN 
=>NN 
optNN 
.NN 
MapFromNN &
(NN& '
srcNN' *
=>NN+ -
srcNN. 1
.NN1 2
IdClienteNavigationNN2 E
.NNE F
TipoDocumentoNNF S
)NNS T
)OO 
.PP 
	ForMemberPP 
(PP 
destinoPP #
=>PP$ &
destinoQQ 
.QQ 
NroDocumentoQQ (
,QQ( )
optRR 
=>RR 
optRR 
.RR 
MapFromRR &
(RR& '
srcRR' *
=>RR+ -
srcRR. 1
.RR1 2
IdClienteNavigationRR2 E
.RRE F
	DocumentoRRF O
)RRO P
)SS 
.TT 
	ForMemberTT 
(TT 
destinoTT $
=>TT% '
destinoUU 
.UU 
NroHabitacionUU )
,UU) *
optVV 
=>VV 
optVV 
.VV 
MapFromVV &
(VV& '
srcVV' *
=>VV+ -
srcVV. 1
.VV1 2"
IdHabitacionNavigationVV2 H
.VVH I
NumeroVVI O
)VVO P
)WW 
.XX 
	ForMemberXX 
(XX 
destinoXX %
=>XX& (
destinoYY 
.YY 
FechaEntradaYY (
,YY( )
optZZ 
=>ZZ 
optZZ 
.ZZ 
MapFromZZ &
(ZZ& '
srcZZ' *
=>ZZ+ -
srcZZ. 1
.ZZ1 2
FechaEntradaZZ2 >
.ZZ> ?
ValueZZ? D
.ZZD E
ToStringZZE M
(ZZM N
$strZZN Z
)ZZZ [
)ZZ[ \
)[[ 
.\\ 
	ForMember\\ 
(\\  
destino\\  '
=>\\( *
destino]] 
.]] 
FechaSalida]] '
,]]' (
opt^^ 
=>^^ 
opt^^ 
.^^ 
MapFrom^^ &
(^^& '
src^^' *
=>^^+ -
src^^. 1
.^^1 2
FechaSalida^^2 =
.^^= >
Value^^> C
.^^C D
ToString^^D L
(^^L M
$str^^M Y
)^^Y Z
)^^Z [
)__ 
.`` 
	ForMember`` 
(``  
destino``  '
=>``( *
destinoaa 
.aa 
TotalPagadoaa '
,aa' (
optbb 
=>bb 
optbb 
.bb 
MapFrombb &
(bb& '
srcbb' *
=>bb+ -
srcbb. 1
.bb1 2
TotalPagadobb2 =
.bb= >
ToStringbb> F
(bbF G
)bbG H
)bbH I
)cc 
;dd 
}ff 	
}gg 
}hh 