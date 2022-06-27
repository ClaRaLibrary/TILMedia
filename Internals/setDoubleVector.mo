within TILMedia.Internals;
function setDoubleVector
  input Real[length] values;
  input TILMedia.Internals.TILMediaExternalObject cache;
  input Integer length;
  input Integer offset=0;
  external "C" TILMedia_setDoubleVector(values, offset, length, cache)
  annotation(Include="void TILMedia_setDoubleVector(double*, int, int, void*);",Library="TILMedia180ClaRa");
end setDoubleVector;
