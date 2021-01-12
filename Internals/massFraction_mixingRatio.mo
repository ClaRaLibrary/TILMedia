within TILMedia.Internals;
function massFraction_mixingRatio "conversion function"
  input Real[:] mixingRatio;
  output Real[size(mixingRatio, 1)-1] massFraction=mixingRatio[1:end - 1]/sum(mixingRatio);
algorithm
end massFraction_mixingRatio;
