declare proc {Accept In Out Token}
    case In of T|Rest then
      if T==Token then Out=Rest
          else raise parserError(Token T)  end
         end
    [] nil then raise parserError(Token eof) end
    end
   end
                      
declare proc {ParseExp In Out Result}
   local ParseTerm ParseTerms ParseFact ParseFacts in
   proc {ParseTerm In Out Result}
      local Term1 Out1 in
            {ParseFact In Out1 Term1}
            {ParseFacts Out1 Out Term1 Result}
   end
end

proc {ParseTerms In Out Previous Result}
   local Term1 Out1 in
      case In of '+'|Rest  then
            {ParseTerm Rest Out1 Term1}
            {ParseTerms Out1 Out  plus(Previous Term1) Result}
      [] '-'|Rest  then
               {ParseTerm Rest Out1 Term1}
               {ParseTerms Out1 Out  subtract(Previous Term1) Result}
      else Result=Previous
            Out=In
      end
   end
end
         
proc {ParseFacts In Out Previous Result}
   local Term1 Out1 in
      case In of '*'|Rest  then
            {ParseFact Rest Out1 Term1}
            {ParseFacts Out1 Out  times(Previous Term1) Result}
      else  Result=Previous
            Out=In
      end
   end
end

proc {ParseFact In Out Result}
   local  Out1 in
   case In of First|Rest then
   case First of '('  then
   {ParseExp Rest Out1 Result}
         {Accept Out1 Out ')'}
      [] var(Name) then 
   Out=Rest Result=Name 
      else
         if {IsNumber First} then 
   Out=Rest Result=First
         else raise parseError( [number name '('] First) end
         end
   end
   [] nil then raise parseError( [number name  '('] eof) end
      end
   end
end
              
local Term1 Out1  in 
{ParseTerm In Out1 Term1}
{ParseTerms Out1 Out Term1 Result}
end  end end
    
    
    
    
    
declare fun {IsDigit D}
   local X in
      {Char.isDigit D X}
      X
   end
end

declare fun {IsAlpha A}
   local X in
      {Char.isAlpha A X}
      X
   end
end

declare fun {IsAlphaNum A}
   local X in
      {Char.isAlNum A X}
      X
   end
end
    
declare  proc {Number String Num Rest}   
   case String of D|Ds andthen {IsDigit D} then
         local R in
   {Number Ds R Rest}
   Num = D|R
      end
   else Num=nil Rest=String end
end
    
declare  proc {Name String N Rest}   
   case String of D|Ds andthen {IsAlphaNum D} then
   local R in
   {Name Ds R Rest}
   N = D|R
   end
   else N=nil Rest=String end
end
   
declare  fun {Lexer String}
      case String of nil then nil
      [] D|Ds andthen {IsDigit D} then
         local R  Rest in
         {Number Ds R Rest}
         {StringToInt D|R}|{Lexer Rest}
         end
      [] D|Ds andthen {IsAlpha D} then
         local R  Rest in
         {Name Ds R Rest}
               if (D|R)=="print" then 
   t_print|{Lexer Rest}
   else var({StringToAtom D|R})|{Lexer Rest} end
   end
   [] D|Ds  andthen {Member D "+-*()="}  then 
   {StringToAtom [D]}|{Lexer Ds}
   [] D|_   then raise lexerError([D]) end
   end
end
   
declare proc {ToStr V  String}
   {Value.toVirtualString V 100 100 String}
end
    
    
    
    
    
    
declare fun {ExceptionString P}
   case P of parseError(eof F) then
   {Append "Syntax error!!!!  Unexpected " {Append {ToStr F} ", expecting EOF" }}
   []  parseError(H|T F) then
   {Append {Append "Syntax Error!!!  Unexpected " {ToStr F}}
   {Append ", expecting one of: " {ToStr H|T}}}	    
   []  lexerError(S)  then
   {Append {Append "Lexical error!!! Char: " S}  " is not in the language's alphabet"} 
   else
   {ToStr  P}	 
   end
end
   
declare fun {ParserT Parser  String}
   local  Rest Result  in
   try
   {Parser {Lexer String} Rest Result}
   case Rest of nil then  
   {ToStr Result}
   [] F|R then  raise parseError(eof F) end  
   end
   catch X
      then  {ExceptionString X}
   end
   end
end
            
declare [QTk]={Module.link ['x-oz://system/wp/QTk.ozf']}
     
local  ActionRead ActionClose  In Out D W  in
    ActionRead = proc{$}
    X  Y in
    {In get(X)}
    Y={ParserT ParseExp X} 
    {Out set(Y)}
    end
    ActionClose=proc {$} {W close} end
    
    D=td(title:"Test Parser"
        lr(label(text:"Input:" glue:w)
           text(handle:In tdscrollbar:true bg:white glue:we)
           glue:nwe)
        lr(label(text:"Output:" glue:w )
           text(handle:Out tdscrollbar:true glue:ww bg:pink)
           glue:nwe)
        lr(button(text:"send" action:ActionRead glue:nswe)
           button(text:"quit" action:ActionClose glue:nswe)
           glue:we))
    
       W={QTk.build D}
       {W show}
    
end	      
    
   declare In Out  W X
      fun {Txt T H S}  
         lr(glue:nswe
            label(text:T)
            text(handle:H glue:nswe tdscrollbar:S))  
      end 
   
      fun {But T A}  
         button(glue:we text:T action:A)  
      end 
   
      fun {E X}  {ParserT ParseExp X} end
   
   ActionRead=proc {$}
   X Y in
   {In get(X)}
   Y={E X} 
   {Out set(Y)}
   end
      
D=td(tdrubberframe(glue:nswe
      {Txt "Expression" In  false}
      {Txt "Result"     Out true})
   lr(glue:we
   {But "Eval" ActionRead

   }
   {But "Quit" toplevel#close}))

W={QTk.build D}
{W show}