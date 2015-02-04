within TILMedia.Internals;
function redirectModelicaFormatMessage
input Real y=0;
//protected
output Integer x;
  external"C" x=TILMedia_redirectModelicaFormatMessage_wrapper() annotation (Include="
#ifndef TILMEDIAMODELICAFORMATMESSAGE
#define TILMEDIAMODELICAFORMATMESSAGE
#ifdef DYMOLA_STATIC
int TILMedia_redirectModelicaFormatMessage(void* _str);
int TILMedia_redirectModelicaFormatError(void* _str);
int TILMedia_redirectDymolaContext(struct FunctionContext_* _str);
int TILMedia_redirectTime(double* Time);
int TILMedia_redirectModelicaFormatMessage_wrapper(){
  TILMedia_redirectModelicaFormatMessage((void*)ModelicaFormatMessage);
  TILMedia_redirectModelicaFormatError((void*)ModelicaFormatError);
  TILMedia_redirectDymolaContext(&modelContext_);
  TILMedia_redirectTime(&Time);
  return 0;
}
#endif
#endif
",Library="TILMedia100ClaRa");
end redirectModelicaFormatMessage;
