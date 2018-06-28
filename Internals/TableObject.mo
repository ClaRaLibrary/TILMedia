within TILMedia.Internals;
class TableObject
   extends ExternalObject;
   function constructor "get memory"
      input String value1;
      input String value2;
    output TableObject pointer;
    external "C" pointer = TILMedia_allocateTable(value1, value2)
      annotation(__iti_dllNoExport = true,Include="void* TILMedia_allocateTable(char*, char*);",Library="TILMedia131ClaRa");
   end constructor;

   function destructor "free memory"
    input TableObject pointer;
    external "C" TILMedia_freeTable(pointer)
              annotation(__iti_dllNoExport = true,Include="void TILMedia_freeTable(void*);",Library="TILMedia131ClaRa");
   end destructor;

  annotation(__Dymola_Protection(
      nestedAllowDuplicate=false,
      nestedShowDiagram=false,
      nestedShowText=false));

end TableObject;
