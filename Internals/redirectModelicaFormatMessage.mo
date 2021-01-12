within TILMedia.Internals;
function redirectModelicaFormatMessage
  input Real y=0;
  //protected
  output Integer x;
  external "C" x = TILMedia_redirectModelicaFormatMessage_wrapper() annotation(__iti_dllNoExport = true,Library="TILMedia160ClaRa",
    Include="
/* uncomment for source code version
#ifndef TILMEDIA_REAL_TIME
#define TILMEDIA_REAL_TIME
#define TILMEDIA_STATIC_LIBRARY
#include \"TILMediaTotal.c\"
#endif
*/
#ifndef TILMEDIAMODELICAFORMATMESSAGE
#define TILMEDIAMODELICAFORMATMESSAGE
#if defined(_JMI_GLOBAL_H) || defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM))
int TILMedia_redirectModelicaFormatMessage(void* _str);
int TILMedia_redirectModelicaFormatError(void* _str);
int TILMedia_redirectDymolaErrorFunction(void* _str);
#if defined(DYMOLA_STATIC)
#ifndef _WIN32
#define __stdcall
#endif
double __stdcall TILMedia_DymosimErrorLevWrapper(const char* message, int level) {
    return DymosimErrorLev(message, level);
}
#endif
int TILMedia_redirectModelicaFormatMessage_wrapper(void) {
    TILMedia_redirectModelicaFormatMessage((void*)ModelicaFormatMessage);
    TILMedia_redirectModelicaFormatError((void*)ModelicaFormatError);
#if defined(DYMOLA_STATIC)
    TILMedia_redirectDymolaErrorFunction((void*)TILMedia_DymosimErrorLevWrapper);
#endif
    return 0;
}
#endif
#endif
");
annotation(Inline=false, LateInline=true);
end redirectModelicaFormatMessage;
