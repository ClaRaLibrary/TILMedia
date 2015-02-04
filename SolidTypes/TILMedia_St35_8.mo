within TILMedia.SolidTypes;
model TILMedia_St35_8 "TILMedia.St35.8"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 7850.0,
    final cp_nominal = 430.0,
    final lambda_nominal = 57.0,
    final nu_nominal=-1,
    final E_nominal=-1,
    final G_nominal=-1,
    final beta_nominal=-1);

//   function density
//    input Real T;
//   input Real d0;
//   output Real d;
//   protected
//   Real fi;
//   final constant Real[2] TBar={373.15,873.15};
//   final constant Real[6] betaBar={12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6};
//   Real beta;
//   algorithm
//
//   if (TBar[1]>=T) then
//     beta:=betaBar[1];
//     d:=d0/(1+beta*(T-293.15))^3;
//     fi:=-1;
//   elseif (TBar[2]<=T) then
//     beta:=betaBar[6];
//     d:=d0/(1+beta*(T-293.15))^3;
//     fi:=-1;
//   else
//     fi:=(T-273.15)/100;
//     beta:=(betaBar[integer(floor(fi))+1] - betaBar[integer(floor(fi))])*(fi- floor(fi)) + betaBar[integer(floor(fi))];
//     d:=d0/(1+beta*(T-293.15))^3;
//   end if;
//     /*
//   //This version can be inlined:
//        d:=if ({373.15,873.15}[1]>=T) then
//            d0/(1+{12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6}[1]*(T-293.15))^3
//          elseif ({373.15,873.15}[2]<=T) then
//            d0/(1+{12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6}[6]*(T-293.15))^3
//          else
//            d0/(1+(({12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6}[integer(floor((T-273.15)/100))+1]
//            - {12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6}[integer(floor((T-273.15)/100))])*((T-273.15)/100- floor((T-273.15)/100))
//            + {12.2e-6, 12.9e-6, 13.4e-6, 14e-6, 14.3e-6, 14.6e-6}[integer(floor((T-273.15)/100))])*(T-293.15))^3;*/
//     annotation (Documentation(info="<html>see VDI-W&auml;rmeatlas pp. Dea 5</html>"));
//   end density;

  function specificHeatCapacity
  input Real T;
  output Real cp;
  protected
    Real fi;
    Integer li;
    constant Integer n=7;
    final constant Real[7] TBar={293.15, 373.15, 473.15, 573.15, 673.15, 773.15, 873.15};
    final constant Real[7] cpBar={430, 500, 540, 580, 620, 690, 780};
    Real beta;
  algorithm
    if (TBar[1]>=T) then
      cp:=cpBar[1];
    elseif (TBar[n]<=T) then
      cp:=cpBar[n];
    else
      li:=1;
      while (li <= n and TBar[li]<T) loop
        li:=li+1;
      end while;
      li := min(li,n);
      li := li-1;
      fi:=(T-293.15)/100;
      cp:=(cpBar[li+1] - cpBar[li])*((T-TBar[li])/(TBar[li+1]-TBar[li]))  + cpBar[li];
    end if;
    annotation (Documentation(info="<html>see VDI-W&auml;rmeatlas pp. Dea 5</html>"));
  end specificHeatCapacity;

  function thermalConductivity
  input Real T;
  output Real lambda;
  protected
    Real fi;
    Integer li;
    constant Integer n=7;
    final constant Real[7] TBar={293.15, 373.15, 473.15, 573.15, 673.15, 773.15, 873.15};
    final constant Real[7] lambdaBar={57, 57, 54, 50, 45, 42, 37};
    Real beta;
  algorithm
    if (TBar[1]>=T) then
      lambda:=lambdaBar[1];
    elseif (TBar[n]<=T) then
      lambda:=lambdaBar[n];
    else
      li:=1;
      while (li <= n and TBar[li]<T) loop
        li:=li+1;
      end while;
      li := min(li,n);
      li := li-1;
      fi:=(T-293.15)/100;
      lambda:=(lambdaBar[li+1] - lambdaBar[li])*((T-TBar[li])/(TBar[li+1]-TBar[li]))  + lambdaBar[li];
    end if;
    annotation (Documentation(info="<html>
<p>see VDI-W&auml;rmeatlas pp. Dea 5</p>
</html>"));
  end thermalConductivity;
equation
  //d=density(T, d_nominal);
  cp=specificHeatCapacity(T);
  lambda=thermalConductivity(T);
  nu = nu_nominal;
  E = E_nominal;
  G=G_nominal;
  beta = beta_nominal;
end TILMedia_St35_8;
