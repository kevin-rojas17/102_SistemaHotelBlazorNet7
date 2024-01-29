π 
]C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Program.cs
var 
builder 
= "
WebAssemblyHostBuilder $
.$ %
CreateDefault% 2
(2 3
args3 7
)7 8
;8 9
builder 
. 
RootComponents 
. 
Add 
< 
App 
> 
(  
$str  &
)& '
;' (
builder 
. 
RootComponents 
. 
Add 
< 

HeadOutlet %
>% &
(& '
$str' 4
)4 5
;5 6
builder 
. 
Services 
. 
	AddScoped 
( 
sp 
=>  
new! $

HttpClient% /
{0 1
BaseAddress2 =
=> ?
new@ C
UriD G
(G H
builderH O
.O P
HostEnvironmentP _
._ `
BaseAddress` k
)k l
}m n
)n o
;o p
builder 
. 
Services 
. 
	AddScoped 
< 
IUsuarioServicio +
,+ ,
UsuarioServicio- <
>< =
(= >
)> ?
;? @
builder 
. 
Services 
. 
	AddScoped 
< 
IRolUsuarioServicio .
,. /
RolUsuarioServicio0 B
>B C
(C D
)D E
;E F
builder 
. 
Services 
. 
	AddScoped 
< 
ICategoriaServicio -
,- .
CategoriaServicio/ @
>@ A
(A B
)B C
;C D
builder 
. 
Services 
. 
	AddScoped 
< 
IPisoServicio (
,( )
PisoServicio* 6
>6 7
(7 8
)8 9
;9 :
builder 
. 
Services 
. 
	AddScoped 
< 
IClienteServicio +
,+ ,
ClienteServicio- <
>< =
(= >
)> ?
;? @
builder 
. 
Services 
. 
	AddScoped 
< 
IHabitacionServicio .
,. /
HabitacionServicio0 B
>B C
(C D
)D E
;E F
builder 
. 
Services 
. 
	AddScoped 
< 
IRecepcionServicio -
,- .
RecepcionServicio/ @
>@ A
(A B
)B C
;C D
builder 
. 
Services 
. 
	AddScoped 
< 
IDashBoardServicio -
,- .
DashBoardServicio/ @
>@ A
(A B
)B C
;C D
builder 
. 
Services 
. %
AddBlazoredSessionStorage *
(* +
)+ ,
;, -
builder 
. 
Services 
. 
	AddScoped 
< '
AuthenticationStateProvider 6
,6 7"
AutenticacionExtension8 N
>N O
(O P
)P Q
;Q R
builder 
. 
Services 
.  
AddAuthorizationCore %
(% &
)& '
;' (
builder 
. 
Services 
. 
AddMudServices 
(  
)  !
;! "
builder!! 
.!! 
Services!! 
.!! 
AddSweetAlert2!! 
(!!  
)!!  !
;!!! "
await## 
builder## 
.## 
Build## 
(## 
)## 
.## 
RunAsync## 
(## 
)##  
;##  !ÿ	
|C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\ICategoriaServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
ICategoriaServicio '
{ 
Task 
< 
ResponseDTO 
< 
List 
< 
CategoriaDTO *
>* +
>+ ,
>, -
Lista. 3
(3 4
)4 5
;5 6
Task 
< 
ResponseDTO 
< 
CategoriaDTO %
>% &
>& '
Crear( -
(- .
CategoriaDTO. :
entidad; B
)B C
;C D
Task		 
<		 
bool		 
>		 
Editar		 
(		 
CategoriaDTO		 &
entidad		' .
)		. /
;		/ 0
Task

 
<

 
bool

 
>

 
Eliminar

 
(

 
int

 
id

  "
)

" #
;

# $
} 
} Ã	
zC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IClienteServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IClienteServicio %
{ 
Task 
< 
ResponseDTO 
< 
List 
< 

ClienteDTO (
>( )
>) *
>* +
Lista, 1
(1 2
)2 3
;3 4
Task 
< 
ResponseDTO 
< 

ClienteDTO #
># $
>$ %
Crear& +
(+ ,

ClienteDTO, 6
entidad7 >
)> ?
;? @
Task		 
<		 
bool		 
>		 
Editar		 
(		 

ClienteDTO		 $
entidad		% ,
)		, -
;		- .
Task

 
<

 
bool

 
>

 
Eliminar

 
(

 
int

 
id

  "
)

" #
;

# $
} 
} ‚
|C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IDashBoardServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IDashBoardServicio '
{ 
Task 
< 
ResponseDTO 
< 
DashBoardDTO %
>% &
>& '
Resumen( /
(/ 0
)0 1
;1 2
} 
}		 Õ
}C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IHabitacionServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IHabitacionServicio (
{ 
Task 
< 
ResponseDTO 
< 
HabitacionDTO &
>& '
>' (
Obtener) 0
(0 1
int1 4
idHabitacion5 A
)A B
;B C
Task 
< 
ResponseDTO 
< 
List 
< 
HabitacionDTO +
>+ ,
>, -
>- .
Lista/ 4
(4 5
)5 6
;6 7
Task		 
<		 
ResponseDTO		 
<		 
HabitacionDTO		 &
>		& '
>		' (
Crear		) .
(		. /
HabitacionDTO		/ <
entidad		= D
)		D E
;		E F
Task

 
<

 
bool

 
>

 
Editar

 
(

 
HabitacionDTO

 '
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
> 
Eliminar 
( 
int 
id  "
)" #
;# $
} 
} ∫	
wC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IPisoServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IPisoServicio "
{ 
Task 
< 
ResponseDTO 
< 
List 
< 
PisoDTO %
>% &
>& '
>' (
Lista) .
(. /
)/ 0
;0 1
Task 
< 
ResponseDTO 
< 
PisoDTO  
>  !
>! "
Crear# (
(( )
PisoDTO) 0
entidad1 8
)8 9
;9 :
Task		 
<		 
bool		 
>		 
Editar		 
(		 
PisoDTO		 !
entidad		" )
)		) *
;		* +
Task

 
<

 
bool

 
>

 
Eliminar

 
(

 
int

 
id

  "
)

" #
;

# $
} 
} Ü
|C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IRecepcionServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IRecepcionServicio '
{ 
Task 
< 
ResponseDTO 
< 
RecepcionDTO %
>% &
>& '
Obtener( /
(/ 0
int0 3
idHabitacion4 @
)@ A
;A B
Task 
< 
ResponseDTO 
< 
RecepcionDTO %
>% &
>& '
Crear( -
(- .
RecepcionDTO. :
entidad; B
)B C
;C D
Task		 
<		 
bool		 
>		 
Editar		 
(		 
RecepcionDTO		 &
entidad		' .
)		. /
;		/ 0
Task

 
<

 
ResponseDTO

 
<

 
List

 
<

 

ReporteDTO

 (
>

( )
>

) *
>

* +
Reporte

, 3
(

3 4
string

4 :
fechaInicio

; F
,

F G
string

H N
fechaFin

O W
)

W X
;

X Y
} 
} ì
}C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IRolUsuarioServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IRolUsuarioServicio (
{ 
Task 
< 
ResponseDTO 
< 
List 
< 
RolUsuarioDTO +
>+ ,
>, -
>- .
Lista/ 4
(4 5
)5 6
;6 7
} 
}		 Ò
zC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Contratos\IUsuarioServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
	Contratos( 1
{ 
public 

	interface 
IUsuarioServicio %
{ 
Task 
< 
ResponseDTO 
< 
List 
< 

UsuarioDTO (
>( )
>) *
>* +
Lista, 1
(1 2
)2 3
;3 4
Task 
< 
ResponseDTO 
< 

UsuarioDTO #
># $
>$ %
IniciarSesion& 3
(3 4
string4 :
correo; A
,A B
stringC I
claveJ O
)O P
;P Q
Task		 
<		 
ResponseDTO		 
<		 

UsuarioDTO		 #
>		# $
>		$ %
Crear		& +
(		+ ,

UsuarioDTO		, 6
entidad		7 >
)		> ?
;		? @
Task

 
<

 
bool

 
>

 
Editar

 
(

 

UsuarioDTO

 $
entidad

% ,
)

, -
;

- .
Task 
< 
bool 
> 
Eliminar 
( 
int 
id  "
)" #
;# $
} 
} ®!
ÄC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\CategoriaServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
CategoriaServicio "
:# $
ICategoriaServicio% 7
{ 
private		 
readonly		 

HttpClient		 #
_http		$ )
;		) *
public

 
CategoriaServicio

  
(

  !

HttpClient

! +
http

, 0
)

0 1
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
CategoriaDTO& 2
>2 3
>3 4
Crear5 :
(: ;
CategoriaDTO; G
entidadH O
)O P
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 L
,L M
entidadN U
)U V
;V W
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
CategoriaDTON Z
>Z [
>[ \
(\ ]
)] ^
;^ _
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '
CategoriaDTO' 3
entidad4 ;
); <
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 J
,J K
entidadL S
)S T
;T U
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
CategoriaDTON Z
>Z [
>[ \
(\ ]
)] ^
;^ _
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
bool 
> 
Eliminar  (
(( )
int) ,
id- /
)/ 0
{ 	
var   
result   
=   
await   
_http   $
.  $ %
DeleteAsync  % 0
(  0 1
$"  1 3
$str  3 J
{  J K
id  K M
}  M N
"  N O
)  O P
;  P Q
var!! 
response!! 
=!! 
await!!  
result!!! '
.!!' (
Content!!( /
.!!/ 0
ReadFromJsonAsync!!0 A
<!!A B
ResponseDTO!!B M
<!!M N
string!!N T
>!!T U
>!!U V
(!!V W
)!!W X
;!!X Y
return"" 
response"" 
!"" 
."" 
status"" #
;""# $
}## 	
public%% 
async%% 
Task%% 
<%% 
ResponseDTO%% %
<%%% &
List%%& *
<%%* +
CategoriaDTO%%+ 7
>%%7 8
>%%8 9
>%%9 :
Lista%%; @
(%%@ A
)%%A B
{&& 	
var'' 
result'' 
='' 
await'' 
_http'' $
.''$ %
GetFromJsonAsync''% 5
<''5 6
ResponseDTO''6 A
<''A B
List''B F
<''F G
CategoriaDTO''G S
>''S T
>''T U
>''U V
(''V W
$str''W l
)''l m
;''m n
return(( 
result(( 
!(( 
;(( 
})) 	
}** 
}++ ë!
~C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\ClienteServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
ClienteServicio  
:! "
IClienteServicio# 3
{		 
private

 
readonly

 

HttpClient

 #
_http

$ )
;

) *
public 
ClienteServicio 
( 

HttpClient )
http* .
). /
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &

ClienteDTO& 0
>0 1
>1 2
Crear3 8
(8 9

ClienteDTO9 C
entidadD K
)K L
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 J
,J K
entidadL S
)S T
;T U
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N

ClienteDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '

ClienteDTO' 1
entidad2 9
)9 :
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 H
,H I
entidadJ Q
)Q R
;R S
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N

ClienteDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
bool 
> 
Eliminar  (
(( )
int) ,
id- /
)/ 0
{ 	
var   
result   
=   
await   
_http   $
.  $ %
DeleteAsync  % 0
(  0 1
$"  1 3
$str  3 H
{  H I
id  I K
}  K L
"  L M
)  M N
;  N O
var!! 
response!! 
=!! 
await!!  
result!!! '
.!!' (
Content!!( /
.!!/ 0
ReadFromJsonAsync!!0 A
<!!A B
ResponseDTO!!B M
<!!M N
string!!N T
>!!T U
>!!U V
(!!V W
)!!W X
;!!X Y
return"" 
response"" 
!"" 
."" 
status"" #
;""# $
}## 	
public%% 
async%% 
Task%% 
<%% 
ResponseDTO%% %
<%%% &
List%%& *
<%%* +

ClienteDTO%%+ 5
>%%5 6
>%%6 7
>%%7 8
Lista%%9 >
(%%> ?
)%%? @
{&& 	
var'' 
result'' 
='' 
await'' 
_http'' $
.''$ %
GetFromJsonAsync''% 5
<''5 6
ResponseDTO''6 A
<''A B
List''B F
<''F G

ClienteDTO''G Q
>''Q R
>''R S
>''S T
(''T U
$str''U h
)''h i
;''i j
return(( 
result(( 
!(( 
;(( 
})) 	
}** 
}++ ß
ÄC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\DashBoardServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
DashBoardServicio "
:# $
IDashBoardServicio% 7
{ 
private		 
readonly		 

HttpClient		 #
_http		$ )
;		) *
public

 
DashBoardServicio

  
(

  !

HttpClient

! +
http

, 0
)

0 1
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
DashBoardDTO& 2
>2 3
>3 4
Resumen5 <
(< =
)= >
{ 	
var 
result 
= 
await 
_http $
.$ %
GetFromJsonAsync% 5
<5 6
ResponseDTO6 A
<A B
DashBoardDTOB N
>N O
>O P
(P Q
$"Q S
$strS h
"h i
)i j
;j k
return 
result 
! 
; 
} 	
} 
} ´'
ÅC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\HabitacionServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
HabitacionServicio #
:$ %
IHabitacionServicio& 9
{ 
private		 
readonly		 

HttpClient		 #
_http		$ )
;		) *
public

 
HabitacionServicio

 !
(

! "

HttpClient

" ,
http

- 1
)

1 2
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
HabitacionDTO& 3
>3 4
>4 5
Crear6 ;
(; <
HabitacionDTO< I
entidadJ Q
)Q R
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 M
,M N
entidadO V
)V W
;W X
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
HabitacionDTON [
>[ \
>\ ]
(] ^
)^ _
;_ `
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '
HabitacionDTO' 4
entidad5 <
)< =
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 K
,K L
entidadM T
)T U
;U V
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
HabitacionDTON [
>[ \
>\ ]
(] ^
)^ _
;_ `
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
bool 
> 
Eliminar  (
(( )
int) ,
id- /
)/ 0
{ 	
var 
result 
= 
await 
_http $
.$ %
DeleteAsync% 0
(0 1
$"1 3
$str3 K
{K L
idL N
}N O
"O P
)P Q
;Q R
var   
response   
=   
await    
result  ! '
.  ' (
Content  ( /
.  / 0
ReadFromJsonAsync  0 A
<  A B
ResponseDTO  B M
<  M N
string  N T
>  T U
>  U V
(  V W
)  W X
;  X Y
return!! 
response!! 
!!! 
.!! 
status!! #
;!!# $
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ResponseDTO$$ %
<$$% &
List$$& *
<$$* +
HabitacionDTO$$+ 8
>$$8 9
>$$9 :
>$$: ;
Lista$$< A
($$A B
)$$B C
{%% 	
var&& 
result&& 
=&& 
await&& 
_http&& $
.&&$ %
GetFromJsonAsync&&% 5
<&&5 6
ResponseDTO&&6 A
<&&A B
List&&B F
<&&F G
HabitacionDTO&&G T
>&&T U
>&&U V
>&&V W
(&&W X
$str&&X n
)&&n o
;&&o p
return'' 
result'' 
!'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
ResponseDTO** %
<**% &
HabitacionDTO**& 3
>**3 4
>**4 5
Obtener**6 =
(**= >
int**> A
idHabitacion**B N
)**N O
{++ 	
var,, 
result,, 
=,, 
await,, 
_http,, $
.,,$ %
GetFromJsonAsync,,% 5
<,,5 6
ResponseDTO,,6 A
<,,A B
HabitacionDTO,,B O
>,,O P
>,,P Q
(,,Q R
$",,R T
$str,,T k
{,,k l
idHabitacion,,l x
},,x y
",,y z
),,z {
;,,{ |
return-- 
result-- 
!-- 
;-- 
}.. 	
}// 
}00  
{C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\PisoServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
PisoServicio 
: 
IPisoServicio  -
{ 
private		 
readonly		 

HttpClient		 #
_http		$ )
;		) *
public

 
PisoServicio

 
(

 

HttpClient

 &
http

' +
)

+ ,
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
PisoDTO& -
>- .
>. /
Crear0 5
(5 6
PisoDTO6 =
entidad> E
)E F
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 G
,G H
entidadI P
)P Q
;Q R
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
PisoDTON U
>U V
>V W
(W X
)X Y
;Y Z
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '
PisoDTO' .
entidad/ 6
)6 7
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 E
,E F
entidadG N
)N O
;O P
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
PisoDTON U
>U V
>V W
(W X
)X Y
;Y Z
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
bool 
> 
Eliminar  (
(( )
int) ,
id- /
)/ 0
{ 	
var 
result 
= 
await 
_http $
.$ %
DeleteAsync% 0
(0 1
$"1 3
$str3 E
{E F
idF H
}H I
"I J
)J K
;K L
var   
response   
=   
await    
result  ! '
.  ' (
Content  ( /
.  / 0
ReadFromJsonAsync  0 A
<  A B
ResponseDTO  B M
<  M N
string  N T
>  T U
>  U V
(  V W
)  W X
;  X Y
return!! 
response!! 
!!! 
.!! 
status!! #
;!!# $
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ResponseDTO$$ %
<$$% &
List$$& *
<$$* +
PisoDTO$$+ 2
>$$2 3
>$$3 4
>$$4 5
Lista$$6 ;
($$; <
)$$< =
{%% 	
var&& 
result&& 
=&& 
await&& 
_http&& $
.&&$ %
GetFromJsonAsync&&% 5
<&&5 6
ResponseDTO&&6 A
<&&A B
List&&B F
<&&F G
PisoDTO&&G N
>&&N O
>&&O P
>&&P Q
(&&Q R
$str&&R b
)&&b c
;&&c d
return'' 
result'' 
!'' 
;'' 
}(( 	
})) 
}** ï"
ÄC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\RecepcionServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
RecepcionServicio "
:# $
IRecepcionServicio% 7
{ 
private

 
readonly

 

HttpClient

 #
_http

$ )
;

) *
public 
RecepcionServicio  
(  !

HttpClient! +
http, 0
)0 1
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
RecepcionDTO& 2
>2 3
>3 4
Crear5 :
(: ;
RecepcionDTO; G
entidadH O
)O P
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 L
,L M
entidadN U
)U V
;V W
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
RecepcionDTON Z
>Z [
>[ \
(\ ]
)] ^
;^ _
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '
RecepcionDTO' 3
entidad4 ;
); <
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 J
,J K
entidadL S
)S T
;T U
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N
RecepcionDTON Z
>Z [
>[ \
(\ ]
)] ^
;^ _
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
RecepcionDTO& 2
>2 3
>3 4
Obtener5 <
(< =
int= @
idHabitacionA M
)M N
{ 	
var   
result   
=   
await   
_http   $
.  $ %
GetFromJsonAsync  % 5
<  5 6
ResponseDTO  6 A
<  A B
RecepcionDTO  B N
>  N O
>  O P
(  P Q
$"  Q S
$str  S i
{  i j
idHabitacion  j v
}  v w
"  w x
)  x y
;  y z
return!! 
result!! 
!!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ResponseDTO$$ %
<$$% &
List$$& *
<$$* +

ReporteDTO$$+ 5
>$$5 6
>$$6 7
>$$7 8
Reporte$$9 @
($$@ A
string$$A G
fechaInicio$$H S
,$$S T
string$$U [
fechaFin$$\ d
)$$d e
{%% 	
var&& 
result&& 
=&& 
await&& 
_http&& $
.&&$ %
GetFromJsonAsync&&% 5
<&&5 6
ResponseDTO&&6 A
<&&A B
List&&B F
<&&F G

ReporteDTO&&G Q
>&&Q R
>&&R S
>&&S T
(&&T U
$"&&U W
$str&&W y
{&&y z
fechaInicio	&&z Ö
}
&&Ö Ü
$str
&&Ü ê
{
&&ê ë
fechaFin
&&ë ô
}
&&ô ö
"
&&ö õ
)
&&õ ú
;
&&ú ù
return'' 
result'' 
!'' 
;'' 
}(( 	
})) 
}** Ï
ÅC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\RolUsuarioServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
RolUsuarioServicio #
:$ %
IRolUsuarioServicio& 9
{ 
private		 
readonly		 

HttpClient		 #
_http		$ )
;		) *
public

 
RolUsuarioServicio

 !
(

! "

HttpClient

" ,
http

- 1
)

1 2
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &
List& *
<* +
RolUsuarioDTO+ 8
>8 9
>9 :
>: ;
Lista< A
(A B
)B C
{ 	
var 
result 
= 
await 
_http $
.$ %
GetFromJsonAsync% 5
<5 6
ResponseDTO6 A
<A B
ListB F
<F G
RolUsuarioDTOG T
>T U
>U V
>V W
(W X
$strX n
)n o
;o p
return 
result 
! 
; 
} 	
} 
} Ü(
~C:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Servicios\Implementacion\UsuarioServicio.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 
	Servicios '
.' (
Implementacion( 6
{ 
public 

class 
UsuarioServicio  
:! "
IUsuarioServicio# 3
{ 
private

 
readonly

 

HttpClient

 #
_http

$ )
;

) *
public 
UsuarioServicio 
( 

HttpClient )
http* .
). /
{ 	
_http 
= 
http 
; 
} 	
public 
async 
Task 
< 
ResponseDTO %
<% &

UsuarioDTO& 0
>0 1
>1 2
Crear3 8
(8 9

UsuarioDTO9 C
entidadD K
)K L
{ 	
var 
result 
= 
await 
_http $
.$ %
PostAsJsonAsync% 4
(4 5
$str5 J
,J K
entidadL S
)S T
;T U
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N

UsuarioDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
return 
response 
! 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Editar  &
(& '

UsuarioDTO' 1
entidad2 9
)9 :
{ 	
var 
result 
= 
await 
_http $
.$ %
PutAsJsonAsync% 3
(3 4
$str4 H
,H I
entidadJ Q
)Q R
;R S
var 
response 
= 
await  
result! '
.' (
Content( /
./ 0
ReadFromJsonAsync0 A
<A B
ResponseDTOB M
<M N

UsuarioDTON X
>X Y
>Y Z
(Z [
)[ \
;\ ]
return 
response 
! 
. 
status #
;# $
} 	
public 
async 
Task 
< 
bool 
> 
Eliminar  (
(( )
int) ,
id- /
)/ 0
{ 	
var   
result   
=   
await   
_http   $
.  $ %
DeleteAsync  % 0
(  0 1
$"  1 3
$str  3 H
{  H I
id  I K
}  K L
"  L M
)  M N
;  N O
var!! 
response!! 
=!! 
await!!  
result!!! '
.!!' (
Content!!( /
.!!/ 0
ReadFromJsonAsync!!0 A
<!!A B
ResponseDTO!!B M
<!!M N
string!!N T
>!!T U
>!!U V
(!!V W
)!!W X
;!!X Y
return"" 
response"" 
!"" 
."" 
status"" #
;""# $
}## 	
public%% 
async%% 
Task%% 
<%% 
ResponseDTO%% %
<%%% &

UsuarioDTO%%& 0
>%%0 1
>%%1 2
IniciarSesion%%3 @
(%%@ A
string%%A G
correo%%H N
,%%N O
string%%P V
clave%%W \
)%%\ ]
{&& 	
var'' 
result'' 
='' 
await'' 
_http'' $
.''$ %
GetFromJsonAsync''% 5
<''5 6
ResponseDTO''6 A
<''A B

UsuarioDTO''B L
>''L M
>''M N
(''N O
$"''O Q
$str''Q r
{''r s
correo''s y
}''y z
$str	''z Å
{
''Å Ç
clave
''Ç á
}
''á à
"
''à â
)
''â ä
;
''ä ã
return(( 
result(( 
!(( 
;(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
ResponseDTO++ %
<++% &
List++& *
<++* +

UsuarioDTO+++ 5
>++5 6
>++6 7
>++7 8
Lista++9 >
(++> ?
)++? @
{,, 	
var-- 
result-- 
=-- 
await-- 
_http-- $
.--$ %
GetFromJsonAsync--% 5
<--5 6
ResponseDTO--6 A
<--A B
List--B F
<--F G

UsuarioDTO--G Q
>--Q R
>--R S
>--S T
(--T U
$str--U h
)--h i
;--i j
return.. 
result.. 
!.. 
;.. 
}// 	
}00 
}11 ç*
wC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Utilidades\AutenticacionExtension.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 

Utilidades (
{ 
public 

class "
AutenticacionExtension '
:( )'
AuthenticationStateProvider* E
{		 
private

 
readonly

 "
ISessionStorageService

 /
_sessionStorage

0 ?
;

? @
private 
ClaimsPrincipal 
_sinInformacion  /
=0 1
new2 5
ClaimsPrincipal6 E
(E F
newF I
ClaimsIdentityJ X
(X Y
)Y Z
)Z [
;[ \
public "
AutenticacionExtension %
(% &"
ISessionStorageService& <
sessionStorage= K
)K L
{ 	
_sessionStorage 
= 
sessionStorage ,
;, -
} 	
public 
async 
Task )
ActualizarEstadoAutenticacion 7
(7 8
	SesionDTO8 A
?A B
sesionUsuarioC P
)P Q
{ 	
ClaimsPrincipal 
claimsPrincipal +
;+ ,
if 
( 
sesionUsuario 
!=  
null! %
)% &
{ 
claimsPrincipal 
=  !
new" %
ClaimsPrincipal& 5
(5 6
new6 9
ClaimsIdentity: H
(H I
newI L
ListM Q
<Q R
ClaimR W
>W X
{ 
new 
Claim 
( 

ClaimTypes (
.( )
Name) -
,- .
sesionUsuario. ;
.; <
Nombre< B
)B C
,C D
new 
Claim 
( 

ClaimTypes (
.( )
Email) .
,. /
sesionUsuario/ <
.< =
Correo= C
)C D
,D E
new 
Claim 
( 

ClaimTypes (
.( )
Role) -
,- .
sesionUsuario. ;
.; <
Rol< ?
)? @
} 
, 
$str 
) 
) 
; 
await 
_sessionStorage %
.% &
GuardarStorage& 4
(4 5
$str5 D
,D E
sesionUsuarioF S
)S T
;T U
}   
else!! 
{"" 
claimsPrincipal## 
=##  !
_sinInformacion##" 1
;##1 2
await$$ 
_sessionStorage$$ %
.$$% &
RemoveItemAsync$$& 5
($$5 6
$str$$6 E
)$$E F
;$$F G
}%% ,
 NotifyAuthenticationStateChanged'' ,
('', -
Task''- 1
.''1 2

FromResult''2 <
(''< =
new''= @
AuthenticationState''A T
(''T U
claimsPrincipal''U d
)''d e
)''e f
)''f g
;''g h
})) 	
public,, 
override,, 
async,, 
Task,, "
<,," #
AuthenticationState,,# 6
>,,6 7'
GetAuthenticationStateAsync,,8 S
(,,S T
),,T U
{-- 	
var// 
sesionUsuario// 
=// 
await//  %
_sessionStorage//& 5
.//5 6
ObtenerStorage//6 D
<//D E
	SesionDTO//E N
>//N O
(//O P
$str//P _
)//_ `
;//` a
if11 
(11 
sesionUsuario11 
==11  
null11! %
)11% &
return22 
await22 
Task22 !
.22! "

FromResult22" ,
(22, -
new22- 0
AuthenticationState221 D
(22D E
_sinInformacion22E T
)22T U
)22U V
;22V W
var44 
claimPrincipal44 
=44  
new44! $
ClaimsPrincipal44% 4
(444 5
new445 8
ClaimsIdentity449 G
(44G H
new44H K
List44L P
<44P Q
Claim44Q V
>44V W
{55 
new66 
Claim66 
(66 

ClaimTypes66 (
.66( )
Name66) -
,66- .
sesionUsuario66. ;
.66; <
Nombre66< B
)66B C
,66C D
new77 
Claim77 
(77 

ClaimTypes77 (
.77( )
Email77) .
,77. /
sesionUsuario77/ <
.77< =
Correo77= C
)77C D
,77D E
new88 
Claim88 
(88 

ClaimTypes88 (
.88( )
Role88) -
,88- .
sesionUsuario88. ;
.88; <
Rol88< ?
)88? @
}99 
,99 
$str99 
)99 
)99 
;99 
return<< 
await<< 
Task<< 
.<< 

FromResult<< (
(<<( )
new<<) ,
AuthenticationState<<- @
(<<@ A
claimPrincipal<<A O
)<<O P
)<<P Q
;<<Q R
}>> 	
}?? 
}@@ ƒ
lC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Utilidades\Extensiones.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 

Utilidades (
{ 
public 

static 
class 
Extensiones #
{ 
public 
static 
async 
Task  
GenerarArchivo! /
(/ 0
this0 4

IJSRuntime5 ?
js@ B
,B C
stringD J
nombreK Q
,Q R
byteS W
[W X
]X Y

arrayBytesZ d
)d e
{ 	
await		 
js		 
.		 
InvokeAsync		  
<		  !
object		! '
>		' (
(		( )
$str		) ;
,		; <
nombre		= C
,		C D
Convert		E L
.		L M
ToBase64String		M [
(		[ \

arrayBytes		\ f
)		f g
)		g h
;		h i
}

 	
} 
} ˝
wC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Utilidades\SesionStorageExtension.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 

Utilidades (
{ 
public 

static 
class "
SesionStorageExtension .
{ 
public 
static 
async 
Task  
GuardarStorage! /
</ 0
T0 1
>1 2
(2 3
this		 "
ISessionStorageService		 '!
sessionStorageService		( =
,		= >
string

 
key

 
,

 
T

 
item

 
) 
where 
T 
: 
class 
{ 	
var 
itemJson 
= 
JsonSerializer )
.) *
	Serialize* 3
(3 4
item4 8
)8 9
;9 :
await !
sessionStorageService '
.' ( 
SetItemAsStringAsync( <
(< =
key= @
,@ A
itemJsonB J
)J K
;K L
} 	
public 
static 
async 
Task  
<  !
T! "
?" #
># $
ObtenerStorage% 3
<3 4
T4 5
>5 6
(6 7
this "
ISessionStorageService #!
sessionStorageService$ 9
,9 :
string 
key 
) 	
where
 
T 
: 
class 
{ 	
var 
itemJson 
= 
await  !
sessionStorageService! 6
.6 7 
GetItemAsStringAsync7 K
(K L
keyL O
)O P
;P Q
if 
( 
itemJson 
!= 
null  
)  !
{ 
var 
item 
= 
JsonSerializer )
.) *
Deserialize* 5
<5 6
T6 7
>7 8
(8 9
itemJson9 A
)A B
;B C
return 
item 
; 
} 
else 
return   
null   
;   
}!! 	
}$$ 
}%% Æ
mC:\Users\kevin\Desktop\102_SistemaHotelBlazorNet7\SistemaHotel\SistemaHotel\Client\Utilidades\UsuarioLogin.cs
	namespace 	
SistemaHotel
 
. 
Client 
. 

Utilidades (
{ 
public 

class 
UsuarioLogin 
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
correo 
{ 
get "
;" #
set$ '
;' (
}) *
[		 	
Required			 
(		 
ErrorMessage		 
=		  
$str		! >
)		> ?
]		? @
public

 
string

 
clave

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} 