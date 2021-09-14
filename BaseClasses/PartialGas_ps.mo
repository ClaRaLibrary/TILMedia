within TILMedia.BaseClasses;
partial model PartialGas_ps
  "Gas vapor model with p, s and xi as independent variables"
  replaceable parameter TILMedia.GasTypes.FlueGasTILMedia gasType
    constrainedby TILMedia.GasTypes.BaseGas
    "type record of the gas or gas mixture"
    annotation(choicesAllMatching=true);

  parameter TILMedia.Internals.TILMediaExternalObject gasPointer annotation(Dialog(tab="Advanced"));

  parameter Boolean stateSelectPreferForInputs = false
    "=true, StateSelect.prefer is set for input variables"
    annotation(Evaluate=true,Dialog(tab="Advanced",group "StateSelect"));
  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.AbsolutePressure p(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  input SI.SpecificEntropy s(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific entropy" annotation(Dialog);
  SI.Temperature T "Temperature";
  input SI.MassFraction xi[gasType.nc-1](each stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default) = gasType.xi_default
    "Mass fraction" annotation(Dialog);
  SI.MassFraction xi_dryGas[if (gasType.nc>1 and gasType.condensingIndex>0) then gasType.nc-2 else 0]
    "Mass fraction";
  SI.MoleFraction x[gasType.nc-1] "Mole fraction";
  SI.MolarMass M "Average molar mass";

  //Additional Properties
  SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  SI.Compressibility kappa "Isothermal compressibility";
  SI.Velocity w "Speed of sound";
  SI.DerDensityByEnthalpy drhodh_pxi
    "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  SI.DerDensityByPressure drhodp_hxi
    "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  TILMedia.Internals.Units.DensityDerMassFraction drhodxi_ph[gasType.nc-1]
    "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  SI.PartialPressure p_i[gasType.nc] "Partial pressure";
  SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  TILMedia.Internals.Units.RelativeHumidity phi(min=-1)
    "Relative humidity";

  //Pure Component Properties
  SI.PartialPressure p_s(min=-1) "Saturation partial pressure of condensing component";
  SI.MassFraction xi_s(min=-1)
    "Saturation mass fraction of condensing component";
  SI.SpecificEnthalpy delta_hv
    "Specific enthalpy of vaporation of condensing component";
  SI.SpecificEnthalpy delta_hd
    "Specific enthalpy of desublimation of condensing component";
  SI.SpecificEnthalpy h_i[gasType.nc]
    "Specific enthalpy of theoretical pure component";
  parameter SI.MolarMass M_i[gasType.nc] "Molar mass of component i";

  //Dry Component Specific Properties
  Real humRatio "Content of condensing component aka humidity ratio";
  Real humRatio_s
    "Saturation content of condensing component aka saturation humidity ratio";
  SI.SpecificEnthalpy h1px
    "Enthalpy H divided by the mass of components that cannot condense";

  TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}}, rotation=
           0)));

  annotation (defaultComponentName="gas", Icon(graphics={                                           Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAES9JREFUeNrsnX2IHOUdx5+7hrPG6J1GKZG8rChRGyWnsUKskk1LE4rVu6AWtIVbkR61VrxIEUoLOf8oraXopUVaIpK9P4qgSO5Q/2ikZg5fAtKYPZq0GhrcM+GsaJo7G00jyHa+88xc9jZ7e7O7zzPzPM98vzDZ5HI7O/Ps85nfy/N7nqejUqkISpN2dfT6f+b8ozf8ST58xc/WNHm2Kf8oh38v+ceMf3jB62ClZGsTDTz0aD5sF7RRj39sWuQtE+G945690aef9HReXwcBUQZD9CXnQwDWJ3wFk2GnkcdgxTMUCEDQHx59ik477h9jOHxgZgiIOUBExyZDr3IitDJe2sD4YODhMYS/av6oUf8Y8UEpEZBkgYiefPnwtduyO5gNn7Je8DpYmUkQjJEUHiJ4OAy1CwoBWRwMwFBQ6A6YIrglRR+UMY2u1EgCFiOORRlq1fUiIPWhyIXuQMFCS9GKZSkGnXmwUlYER394zm6D7rHgQzJGQNq3FkMGxxRJuCUj7VgVHw5YjUcMvb+dPiRDBKR5MGAphkXzqVdXNRW0x2Cl2KRLhfhmveH3hmxfPq7LlW1ACIYSUCyCo2lIsgkIwVAGSghHycK2jAVJtgCRYxfDGY4xVMQow9GYioWWo2lIOjMCRo9/4Om3j3C0pU1BG6It5biQzXCI8Nq9Rr/QmQE4kJkqi/Tz8S5p4E8ffPcjy+GYgyTMvGXMxZJPOFiNPvZntTowe6X4fflO125rW71xkk5H4YisBuFQrM+/PE88c2yri7dWDGMqhwGRsQbM5R7h/gh4KvrzdF6c9iFxUOgvI+4CIstDEHA9wm6sR++eWine+M/XnY6twuJKxwCRLlXJkaDRWO35aGMWbnPELUB2dQzRpUrGeuDIgDZVW5FOy+Eo+n8+xe6rX6+fXJel250raLQzzcsUbqJC5urBQz/J2m1fjBH2Tkvh8AhHcjowe1UWb7vfPhfLjfIG6/TOp1dmFpAlhINaFJDZ9gDxXZV5/9793AvCe2N/8Pf8rRvFuqvXinXXrBUXLD1flD847h/HxMuvviY+/uTEoufGe75xY6+4+Yb1Ird6VfBv6PC7R8Th946It9+ZjHWeOuqzJwYhHKkJmatfH71HKSDPj78cdNrv931PXHbp8gXfh997Ze9rC/5/bvVK8dMHBhqeA8I5Xnn1r+Kzz083e+mblxAOqpH+eWqV8nPe/p1vzz3pGwkAoVNH1qbWcjz28IOxznP7lm+Jz05/3hC2BZS3IQYpEo709MH/LlN+zjiduhqSehYiLmQQ3LZ6kMVQr9kWRI5zMFuVoj754iJt54abte/N/UEHBgSIIxCL1MK0+ZsbA3erWjffeO4z8+lnR4OYI/r/vP8+xCW7n3u+Ffcq8OKWGAxHEqvwUYtZkNOXaTkvnugI1mt/9tjDPz4HEnT2WkDqWRUE5pEACg78XotBOrS+01A4kGLjCLnDevvgZH1w3jzXFUInr3Wn6nV6xCS1lqUNOAJ1GghHLow7qAyq2grM83VWz08WIA187u+sFA89MCB+9/gvgsB8seyWfYDIjBVmdbHw0PH4YyHFjRXgji0UeAMMBPcA5f5772kqKWC6BRkWzFgZo0u7PjX6+hDDIDBv5EZhIDJuOriezAnSZdzByU4ZF9ykesLoet1YJgzGEdgja1Uvu4VzApQWxkEMsSBnq3OpjKs2gxUF2ou5XohdYE1+tuNXc6neaiFVbLOLVWTckS3VC6DxpMcAYNzAHYF4vexW8bnnY32eHS6WdK04GBjpwpw8oP+W5ZGiVp//sZaxEATPV6xaKd4/djzo1BEc9WKFfXVSv3CZEIjjPaizAkQYcIRQvHiui3a8lcucXJIyHNlzrdD5l/fK4/K8/NmKGIs9fjErxInSWWg+9ISY9hIJ1HUNFqKT5xf5HbhLtZ0bMAEOCEAFf1/kEfv2wZY2miqnbUFGnHetuvxnQK5fwoBjWYtrPHd1S5DmYNohXz6c8L/GMXlosDarv/px2+XurQpg1HOXmqnDis7TYi1WKb0YRC4k7W4pCaDY4nfawkn/UblbiLUDrcPRSABm41NC3Pu+EHf4FmVtQenpr112TEvz1JaO1Is7fvuHP9YNzhGM4/1xxkwanSeGvPTmg+zqgH/g1kLSsBbXDwlxdUEPDHEFd+zvI/L4ov29Ogcmt7f1/tr5IIH9e+LJoNNuDgoKVwbZK/w7mugU94kfTbi6wj9HFIgjpqmeMNXGdXcsSQmOglNwRGDg6DLAY8Q1bNghr+ct/zjSXph3Y/dR5W7WBUuXBq7PYpZk0Ud8gxH1NoVNTlNL8w475UrdXZIdssuwcArXA/furpJMCrQKyEVHRQY1lg4g0nrYv7MTslHw+bfsSdediqPl631IDvoQt/Zc2tD9LwJC69Gk1cBTeYVlXiKsHK67q6epty39yhlx6yX/yBIco9GuU8kC4oL1uGVEWo0uS7PTsCb3lZt2uW67+HCWAJlbnzdpC2Kv9cBTFy7VdQ7UUwJu3EuuP/Zbrll2PDgyoAnfepSSB0SWlKyxGo4VDmWlAQksYRPjJtu+tj8LgMx7iCeZ5h2yGo7lnKYCC4JYpNk9QgYeetSm2MOr/kEyFkROo91EOAzTgcebHiP5weWeON8P2h3UbL2HeFIulp3WY+uYu3AcGfUBaT4kREbrR6v+4mKLFOrtl54UIAXrmitfdCvmqNaJSTnC3qI2dB91Le07Wm+H22QAkcG5XTlRBK5rHa2jRJ3W3v62a7RgRTBXxAFN+nAs+ABPIki3y3pghPyWkXQ6LuZ7nJmRr5HO65FjFrguFSP2L+WVlcX//MoXgoWtdc0XSQIO+AqNfkFvNa+cEHXSqiZLMp0LVwdBcty5HEgaYE4Jxi9wNDtY6d3fduFirbA00C+P/NDGraERlPf61qOcJiCwHrutcq3yCVxuFCC38yRvtoIYn+npMeaAZGf5TpssCSxH/2JwJAEIHld2OPPocCjB0FlCgtl/6KQqZ/7hum8abjzCj899Ka+1+bCPoSXuVuBW1ctYpQHIjDUBOipdN+zQd/792+UEJl2C64XMW22cAjcOcCiYOBVHzxzb2vRAYoIabRSQJwuInFK7z5rAHFNWdQXfyBpNe8lYQUCS6zv72YDjRCnR5jwwe2UAikFxCeKNwkKp3EbSmebNC1ukeB73PDjQQZOAI/i8GQnjoZ1hUF5IHI7AGHcfFU9e+6wpYyV+8CVyrcCh24KgV5g/0qYz9njxhlQ66JxVTHlNLQh7HO75aGPwmrD8wEsM19ZWmQSIBbuDCpkF2qhhKxLdMYdlAiCvn1yXRHwCi1FsFwy9gNgUf8B6qJ4yWx6Xrg51jpDtOjB7VbD3uqqFILCoxJeVzicmP73iN3GzU3GlayS914pvCyPUquFA3LF/iCQsIBQ73nbJ4eCILAt20sVmoRhPWSxNjPIWrPaIBe2wZlfVJK5/i8GK8lRdtgG5WkNwDrfKAN/fFjWaqRjBErPmS0ufyzYgOcVuULRgG6VETRZDaulzutK85k+iUFX8V2s9EhqQo5Lpc+oB2dWRTesBKS4EpNLvezosSM6KxlyRV3s+ZK4Ye6StHhsAscOCXKr4Mstj7J7pK28DID3GN6OO+AMb2lDOKZsW5ELFXuCpKbpXtCAOSXX8MU3rQQviUpB+nmIvkNbDFOVsAMT85UWXK/YCGX+YIuV9bwnbVIHOKBocbHH/DiU6MMzvkYBosiCq5nzonPJLQBikx1ZXN795ioBQlFmA2FKHpTRAn2AvIiAxNVgpsUkpAkJRBISKJdVlKxQBcUrL1rANCAhFERCKohIAZMr4uz6l+BKxcDRlgqZsAKRsfDOqrr7t6mHXNENlGwAxX2cUrzyyvJddky5WbHnG37XqBaUJiCnybADEfKl2sRiDOCsd5e7ml5ucUh2DdEsr0q5l2tXR2vsGK+zJFlkQ84P0aQ1eIK2ICZoxHxBbChaxd59K6dqlikq17+mKQSaNb0zV88iXr2ddVrrS0ud0AZJNNyvNOeVUySZAvEwCsnaAVoSApHexSoVtCrDgNK0IAUkckMGKZ0WT6lhwGlaEGa00AnTPHkCkJqwABLtCqVa+yPqsZKWtr+kExHwrErhZGqwIJlFt5XYICcojILqka0/BFZukJaEISAOfcNb4pkV5iK6lexCPbBmju6VXszpjXt3Finb4GTqX3cz1CXGHx4pfS/uYbkDscLOmPb0LwGGU/a6DMgVMa2JVH6MFmWvmgv7PwOLU95WFuGVEzYAiznGHl3VAtPaxjkpFc6n0rg7cQJ8VTY2Oe90jCcY/kzKLhrqw6ZgdHRYI4ywojsz1qfyebIRj3I8/+m0HBDewx4rmRue7u5TeWlfRXofRUS1AgeuDu6bne7IRkG0+IJZbENn4qNO3Y88BBNOIF7Im+wBB9kp7QJfUlNuiNc2OtO/+7Qx9zVcifSopQEasanoMHh4ZZRc0WyPuADJYgUNt10YayGqdmGQ3NFMTYZ9yxoLYZ0Wgl/KEJMPWI1lAZLZhyqqvAcWMhMQ0TenOXKVlQaBh676OCBKXYxK7khKJ9qFk0rzV2tUB39HOTTVQKpLmVs3K4Z8V4q0hH/6iTdYjl+QHdrr+BFAqFDXu3aZnklXSgtsYWMaiTVedeN9J3oLYbkUgjGhjrkeuz87rP7RTiL8NS/fRrtgjl/SHdmblSaA8LtnbL8TLm9XvNaJTqFh+8QbpVtkFR2p9Jh0LIq2I5/+5yQlfHoWDNw2bu18hwIB7OO3Z2sIY98hnDRDc8D7hkgDK9UP6CgqbFZY1OjRiMxiRNqe1Uk56gEhIECEOCNeEgkeAkuuXK78nKbh87xVl8K16m4d0NOrDUUjrw9MGBNWY+Ba7hasCLAAF5eorNHmUcKEwrwSW4kTJpdZDujDnAzKTTUAkJPbMF1EhgAJoMBsQr83M8UBqFsE1IPikJF/dAqJW25IcNTcTEAmJPbMOdQvgRNNxz8y4DkAjaZ8taBMg7rtalFWuVSQz9iiUDVFgv6BCFUyAwxxAJCRws3ayb2ReO9OOO8wERGpY2LA7FaVLk8KwKgszYpD58Qgi1BLjkUzGHb1JzRS01YJE03P72V8yGXeUTbuoTiObSpYVcGmR7Gi7SXGH2S7WfHerKFwsRaGqlWopid2ASEg4iEg46GI19E2Z2XJR+E6HTL9I8wGRA0Z5QuIcHHlTBgNttyCEhHAQEEJCOAgIISEcFsFhHyDzIRlnn7NG4zbCAZmf5m0kjpPYIONTuW5ZkPnWBA3PEXdztd1mOOy3IGctCWq3YE1Y4GiGUHjYn9ZKJASkPiQ5IXc8Xc/+mXow3m9i4WH2XKz57lY5DN456So97QyD8bIrN+SOBaHLlbZLVTC1IpcW5Fxrgi8KLhdTwfo1LuQCC2Mu3pybFoTWhFaDFqRpa8Jta9Vp1GWrkS0LMt+aIIgfFq6sKp+8JoL2cyB9S0Aag1IIQVnDPh9LUyEYxazdeDYBISgEg4AQFIJBQFSDgozXUIZjFMQYI1kIvglIe6DkQlBgWVxPDyNdWwzBKPPLJyCtWBWA4trKKuMBGLQWBEQRKNiiAbDkw1fbLAssBWDwglcLJy8RELuAyYew5A2OWSZCILwsjV0QEHOB6a06ki67R5l5ae4gEATEAmgASk9oZUTVK5IAzaaUkXqNgmiv6nXGh6HExiYgFJW4OtkEFEVAKIqAUBQBoSgCQlEEhKIICEUREIoiIBRFQCiKIiAURUAoioBQFAGhKAJCUQSEoggIRREQiiIgFEVAKIoiIBRFQCiKgFAUAaEoAkJRBISiCAhFERCKIiAURREQiiIgFEVAKIqAUBQBoSgCQlEEhKIICEUREIoiIBRF1dP/BRgAmbNjlNQWqawAAAAASUVORK5CYII=",
          fileName="modelica://TILMedia/Resources/Images/Icon_Gas_ps.png"),
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name")}),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialGas_ps;
