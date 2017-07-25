within TILMedia.Internals;
function calcComputeFlags
  input Boolean computeTransportProperties;
  input Boolean interpolateTransportProperties;
  input Boolean computeSurfaceTension;
  input Boolean deactivateTwoPhaseRegion;
  output Integer flags;
algorithm
  flags := array(1,2,4,8)*array(if (computeTransportProperties) then 1 else 0,if (interpolateTransportProperties) then 1 else 0,if (computeSurfaceTension) then 1 else 0,if (deactivateTwoPhaseRegion) then 1 else 0);
//  flags := 0;
/*  if computeTransportProperties then
    flags := flags + 1;
  end if;
  if interpolateTransportProperties then
    flags := flags + 2;
  end if;
  if computeSurfaceTension then
    flags := flags + 4;
  end if;*/

  annotation(Inline=true);
end calcComputeFlags;
