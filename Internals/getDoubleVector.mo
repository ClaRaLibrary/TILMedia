within TILMedia.Internals;
function getDoubleVector
  input TILMedia.Internals.TILMediaExternalObject cache;
  input Integer length;
  input Integer offset=0;
  output Real[length] values;
  external "C" TILMedia_getDoubleVector(offset, length, cache, values)
annotation(Include="void TILMedia_getDoubleVector(int, int, void*, double*);",Library="TILMedia180ClaRa");
end getDoubleVector;
