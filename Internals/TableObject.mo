within TILMedia.Internals;
class TableObject
   extends ExternalObject;
   function constructor "get memory"
      input String value1;
      input String value2;
    output TableObject pointer;
    external "C" pointer = TILMedia_allocateTable(value1, value2)
      annotation(__iti_dllNoExport = true,Include="
/* uncomment for source code version
#ifndef TILMEDIA_REAL_TIME
#define TILMEDIA_REAL_TIME
#define TILMEDIA_STATIC_LIBRARY
#if defined(FMU_SOURCE_CODE_EXPORT) && defined(DYMOLA_STATIC)
#include \"include/TILMediaTotal.c\"
#else
#include \"TILMediaTotal.c\"
#endif
#endif
*/
#ifndef TILMEDIATABLEALLOCATOR
#define TILMEDIATABLEALLOCATOR
#if defined(_JMI_GLOBAL_H) || defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM))
void* TILMedia_allocateTable_errorInterface(const char* table, const char* parameters, void* formatMessage, void* formatError, void* dymolaErrorLev);
#if defined(DYMOLA_STATIC)
#ifndef _WIN32
#define __stdcall
#endif
double __stdcall TILMedia_DymosimErrorLevWrapper_tableObject(const char* message, int level){
  return DymosimErrorLev(message, level);
};
#endif
void* TILMedia_allocateTable(const char* table, const char* parameters){
#if defined(DYMOLA_STATIC)
    return TILMedia_allocateTable_errorInterface(table, parameters, (void*)ModelicaFormatMessage, (void*)ModelicaFormatError, (void*)TILMedia_DymosimErrorLevWrapper_tableObject);
#else
    return TILMedia_allocateTable_errorInterface(table, parameters,(void*)ModelicaFormatMessage, (void*)ModelicaFormatError, 0);
#endif
}
#endif
#endif
",    Library="TILMedia170ClaRa");
   end constructor;

   function destructor "free memory"
    input TableObject pointer;
    external "C" TILMedia_freeTable(pointer)
              annotation(__iti_dllNoExport = true,Include="void TILMedia_freeTable(void*);",Library="TILMedia170ClaRa");
   end destructor;

  annotation(Protection(access=Access.documentation));

end TableObject;
