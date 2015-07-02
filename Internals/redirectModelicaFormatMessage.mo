within TILMedia.Internals;
function redirectModelicaFormatMessage
  input Real y=0;
  //protected
  output Integer x;
external"C" x = TILMedia_redirectModelicaFormatMessage_wrapper() annotation (
      Include="
#ifndef TILMEDIAMODELICAFORMATMESSAGE
#define TILMEDIAMODELICAFORMATMESSAGE
#ifdef DYMOLA_STATIC
int TILMedia_redirectModelicaFormatMessage(void* _str);
int TILMedia_redirectModelicaFormatError(void* _str);
int TILMedia_redirectDymolaErrorFunction(void* _str);
#ifdef _WIN32
  double __stdcall TILMedia_DymosimErrorLevWrapper(const char* message, int level) {
    return DymosimErrorLev(message, level);
  };
#endif


int TILMedia_redirectModelicaFormatMessage_wrapper(){
  TILMedia_redirectModelicaFormatMessage((void*)ModelicaFormatMessage);
  TILMedia_redirectModelicaFormatError((void*)ModelicaFormatError);
#ifdef _WIN32  
  TILMedia_redirectDymolaErrorFunction((void*)TILMedia_DymosimErrorLevWrapper);
#endif
  return 0;
}
#endif
#endif
",Library="TILMedia101ClaRa");
end redirectModelicaFormatMessage;
