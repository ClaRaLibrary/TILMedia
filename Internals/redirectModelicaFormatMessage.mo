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
#ifndef _WIN32
#define __stdcall
#endif
double __stdcall TILMedia_DymosimErrorLevWrapper(const char* message, int level) {
    return DymosimErrorLev(message, level);
};

int TILMedia_redirectModelicaFormatMessage_wrapper(){
  TILMedia_redirectModelicaFormatMessage((void*)ModelicaFormatMessage);
  TILMedia_redirectModelicaFormatError((void*)ModelicaFormatError);
  TILMedia_redirectDymolaErrorFunction((void*)TILMedia_DymosimErrorLevWrapper);
  return 0;
}
#endif
#endif
",Library="TILMedia110ClaRa");
end redirectModelicaFormatMessage;
