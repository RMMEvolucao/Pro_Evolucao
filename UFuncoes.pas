unit UFuncoes;

interface

uses
  System.Classes, SysUtils, Winapi.Windows, Vcl.Forms, uFrmContasReceber;

function isCNPJ(CNPJ: string): boolean;
function imprimeCNPJ(CNPJ: string): string;
function isCPF(CPF: string): boolean;
function imprimeCPF(CPF: string): string;
function GetBuildInfo(Prog: string): string;
function TiraAcentos(str: char): string;
function PreencheZeroEsquerda(Texto: string; Quant: integer): String;
function lettersNotAccents(Str:String):String;
function FormatoBanco(valor : string ) : string;
procedure DigitaApenasNumero(var Key: Char);
function TirarMascara(Valor: string): double;


implementation




function TirarMascara(Valor: string): double;
var
  I: Integer;
  s: string;
begin
for I := 1 to length(valor) do
 if (valor[I] in ['0'..'9',',']) then
     s := s + valor[I];

 Result := StrToFloat(s);
end;


function PreencheZeroEsquerda(Texto: string; Quant: integer): String;
begin
 Result := Texto;
 Quant := Quant - Length(Result);
 if Quant > 0 then
 Result := StringOfChar('0', Quant) + Result;
end;


function isCNPJ(CNPJ: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            isCNPJ := false;
            exit;
          end;

// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then isCNPJ := true
    else isCNPJ := false;
  except
    isCNPJ := false
  end;
end;


function FormatoBanco(valor: string): string;
var
s : string;
v : double;
I : integer;
begin
//1º Passo : se o edit estiver vazio, nada pode ser feito.
If (valor = emptystr) then
valor := '0,00';

//2º Passo : obter o texto do edit, SEM a virgula e SEM o ponto decimal:
s := '';
for I := 1 to length(valor) do
if (valor[I] in ['0'..'9']) then
s := s + valor[I];

//3º Passo : fazer com que o conteúdo do edit apresente 2 casas decimais:
v := strtofloat(s);
v := (v /100); // para criar 2 casa decimais

//4º Passo : Formata o valor de (V) para aceitar valores do tipo 0,10.
valor := FormatFloat('###,##0.00',v);
result := valor;
end;

procedure DigitaApenasNumero(var Key: Char);
begin
  if (not (Key in ['0'..'9'])) and (Key <> #8) then
    Key := #0;
end;



function imprimeCNPJ(CNPJ: string): string;
begin
{ máscara do CNPJ: 99.999.999.9999-99 }
  imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;


function isCPF(CPF: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              isCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;

function imprimeCPF(CPF: string): string;
begin
  imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;


function GetBuildInfo(Prog: string): string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
begin
 try
   VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
   with (VerValue^) do
   begin
     V1 := dwFileVersionMS shr 16;
     V2 := dwFileVersionMS and $FFFF;
     V3 := dwFileVersionLS shr 16;
     V4 := dwFileVersionLS and $FFFF;
   end;
   FreeMem(VerInfo, VerInfoSize);
   Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
 except
   Result := '1.0.0';
 end;
end;


function TiraAcentos(str: char): string;
  var
    i: Integer;
  begin
    case str of
      'á': str := 'a';
      'é': str := 'e';
      'í': str := 'i';
      'ó': str := 'o';
      'ú': str := 'u';
      'à': str := 'a';
      'è': str := 'e';
      'ì': str := 'i';
      'ò': str := 'o';
      'ù': str := 'u';
      'â': str := 'a';
      'ê': str := 'e';
      'î': str := 'i';
      'ô': str := 'o';
      'û': str := 'u';
      'ä': str := 'a';
      'ë': str := 'e';
      'ï': str := 'i';
      'ö': str := 'o';
      'ü': str := 'u';
      'ã': str := 'a';
      'õ': str := 'o';
      'ñ': str := 'n';
      'ç': str := 'c';
      'Á': str := 'A';
      'É': str := 'E';
      'Í': str := 'I';
      'Ó': str := 'O';
      'Ú': str := 'U';
      'À': str := 'A';
      'È': str := 'E';
      'Ì': str := 'I';
      'Ò': str := 'O';
      'Ù': str := 'U';
      'Â': str := 'A';
      'Ê': str := 'E';
      'Î': str := 'I';
      'Ô': str := 'O';
      'Û': str := 'U';
      'Ä': str := 'A';
      'Ë': str := 'E';
      'Ï': str := 'I';
      'Ö': str := 'O';
      'Ü': str := 'U';
      'Ã': str := 'A';
      'Õ': str := 'O';
      'Ñ': str := 'N';
      'Ç': str := 'C';
    end;
    Result := str;
  end;

  Function SemAcentos ( Texto: string ): string;
var Contar, Posicao: integer;
    Acentos, TiraAcentos: string;
begin
     Acentos:='áäàãâÁÄÀÃÂéëèêÉËÈÊíïìîÍÏÌÎóöòõôÓÖÒÕÔúüùûÚÜÙÛçÇ';
     TiraAcentos:='aaaaaAAAAAeeeeEEEEiiiiIIIIoooooOOOOOuuuuUUUUcC';
     Result:='';
     For Contar:=1 to Length(Texto) do
      begin
         Posicao:=Pos(Copy(Texto,Contar,1),Acentos);
         If Posicao=0 then
            Result:=Result+Copy(Texto,Contar,1)
         else
            Result:=Result+Copy(TiraAcentos,Posicao,1);
      end;
end;


function lettersNotAccents(Str:String):String;
type
  USASCIIString = type AnsiString(20127);
  var
  C:Char;
  begin
   result:='';
   for C in Str do
   result:=result+String(USASCIIString(C));
  end;


end.
