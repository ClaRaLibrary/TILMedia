within TILMedia.BaseClasses;
partial model PartialGas "Gas vapor model for object and member function based evaluation"

  replaceable parameter TILMedia.GasTypes.FlueGasTILMedia gasType
    constrainedby TILMedia.GasTypes.BaseGas
    "type record of the gas or gas mixture" annotation (choicesAllMatching=true);

  replaceable class PointerType = TILMedia.Internals.BasePointer;
  parameter PointerType gasPointer;

  parameter Boolean computeTransportProperties=false
    "=true, if transport properties are calculated"
    annotation (Dialog(tab="Advanced"));

  replaceable function d_phxi = GasObjectFunctions.density_phxi (
        gasPointer=gasPointer);
  replaceable function T_phxi = GasObjectFunctions.temperature_phxi (
        gasPointer=gasPointer);
  replaceable function s_phxi = GasObjectFunctions.specificEntropy_phxi (
       gasPointer=gasPointer);
  replaceable function cp_phxi =
      GasObjectFunctions.specificIsobaricHeatCapacity_phxi (gasPointer=
          gasPointer);
  replaceable function phi_phxi =
      GasObjectFunctions.relativeHumidity_phxi (gasPointer=gasPointer);
  replaceable function eta_phxi =
      GasObjectFunctions.dynamicViscosity_phxi (gasPointer=gasPointer);
  replaceable function Pr_phxi = GasObjectFunctions.prandtlNumber_phxi (
       gasPointer=gasPointer);
  replaceable function lambda_phxi =
      GasObjectFunctions.thermalConductivity_phxi (gasPointer=gasPointer);

  replaceable function d_pTxi = GasObjectFunctions.density_pTxi (
        gasPointer=gasPointer);
  replaceable function h_pTxi =
      GasObjectFunctions.specificEnthalpy_pTxi (gasPointer=gasPointer);
  replaceable function s_pTxi = GasObjectFunctions.specificEntropy_pTxi (
       gasPointer=gasPointer);
  replaceable function cp_pTxi =
      GasObjectFunctions.specificIsobaricHeatCapacity_pTxi (gasPointer=
          gasPointer);
  replaceable function phi_pTxi =
      GasObjectFunctions.relativeHumidity_pTxi (gasPointer=gasPointer);
  replaceable function xi_s_pTxidg =
      GasObjectFunctions.saturationMassFraction_pTxidg (gasPointer=gasPointer);
  replaceable function eta_pTxi =
      GasObjectFunctions.dynamicViscosity_pTxi (gasPointer=gasPointer);
  replaceable function Pr_pTxi = GasObjectFunctions.prandtlNumber_pTxi (
       gasPointer=gasPointer);
  replaceable function lambda_pTxi =
      GasObjectFunctions.thermalConductivity_pTxi (gasPointer=gasPointer);

  replaceable function d_psxi = GasObjectFunctions.density_psxi (
        gasPointer=gasPointer);
  replaceable function h_psxi =
      GasObjectFunctions.specificEnthalpy_psxi (gasPointer=gasPointer);
  replaceable function T_psxi = GasObjectFunctions.temperature_psxi (
        gasPointer=gasPointer);
  replaceable function cp_psxi =
      GasObjectFunctions.specificIsobaricHeatCapacity_psxi (gasPointer=
          gasPointer);
  replaceable function phi_psxi =
      GasObjectFunctions.relativeHumidity_psxi (gasPointer=gasPointer);
  replaceable function eta_psxi =
      GasObjectFunctions.dynamicViscosity_psxi (gasPointer=gasPointer);
  replaceable function Pr_psxi = GasObjectFunctions.prandtlNumber_psxi (
       gasPointer=gasPointer);
  replaceable function lambda_psxi =
      GasObjectFunctions.thermalConductivity_psxi (gasPointer=gasPointer);

  replaceable function p_s_T =
      GasObjectFunctions.saturationPartialPressure_T (gasPointer=gasPointer);
  replaceable function h_i_Tn =
      GasObjectFunctions.specificEnthalpyOfPureGas_Tn (gasPointer=gasPointer);
  replaceable function delta_hv_T =
      GasObjectFunctions.specificEnthalpyOfVaporisation_T (gasPointer=
          gasPointer);
  replaceable function delta_hd_T =
      GasObjectFunctions.specificEnthalpyOfDesublimation_T (gasPointer=
          gasPointer);
  replaceable function T_freeze = GasObjectFunctions.freezingPoint (
        gasPointer=gasPointer);

equation

  annotation (
    defaultComponentName="gas",
    Icon(graphics={Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAADGJJREFUeNrsnT9vHMcZh5cHgW5skIHSMA3PjdLYIAOncsNTY1cCT3CauNG5YWvqE4T5BmSrJscmqQKRsBur8bKRmgQ+ImqsJseGbiKEQtTIzWV/N3s2KQsUT5qZnXf2eYDVGQKsu5ud5973nX+7MJlMCgjEvYX16s9uda3Xf9OrX/V3q3P+ayfVNa7/e1RdZ9VVTl+3JiMaOwwLCOJNhl4tQq8WYC3yJziuxXHX1qTkpiBI00LMro1EP+VRHWVKhEGQ0EIsV3/2ayH0umTsGzyrroNamINKmDNuKoL4EEMyDKprM7Nvdlhdw0qUA24ygswrhWqI7VqMpcy/7bOpKEWxW8ky5uYjyOuixXbCNUWMmmWXqIIgL4uhSLFTzD/0misn0/bYmgwRpM2CIAaiIAhiIAqCXFWMXi3GBn3+jWuUnTbNqbRDEDeHsVtdd+jjXtgvNJjRgrmU/AVxI1NKDZbo117R8PAg9xGvfAVxUUNibNKXg3JYi5JlNOlkHDXGyBGFzWlbuzYnghiIGirCv6TfNsJeXcSfIUh6cnQLtxhvjX7aKFp2389l2UonEzkU3kfIkQRr03uRScrVyUAOrZ26XzBKlRJL03vi7g0pVoNyDAvmNlJnv0q3BggSvxiXHIxS2cDsULA9QZwcJfWGyeK9Z02SDnJAxOK9rO8hgiAH5CBJBzkASSwLghxIgiCXMkSObCUZIsjbRQ81IEO5+bJZ32MEeQM5NAvLJGD+3El5xj3NeRC3juc+fadV3E5x81V6grhVuVp4yNqqdqEdiuuprQLuJCaHRjUOkKOVLE3vfWIjW6nVIDsFI1ZtZq3uA6RY1B1goR5JQxAXVsekVnCuHummsLAxlRRriBzwUj0yJIKQWv2S97ruEv8bu4tUq6WCtDG1Uue/vu6u3/Tc361c4STUH6us4+noZ2l+KIvitCTVylwQhdG8Z8sXq9+Abt/JoOtdz+dl/3BU/cQcuCvPaNPolt3mBHEHSX+brRiS4kZ1X7sRl5JJlu+r35wnw9xa82ZTB2Y3KYi+cF6nrCtafLhdFL8d+I8U86B07F+77voxizPcjipBeu0RxD2f4y/ZiaFrMaFySqI83M4lonzRxPNJmhJEyXIeD69RKvXxbrMR43U8PS6KcuCKfLucVIJ0Y79ppwE5BlnIodGoW1WW+Mn9tOUQ19eK4rPviuKjHcstvlr3ncwjSA7RQ1GjN0wrnZonmnzVs1qbRI8inchy2I8eSqcUNRaNTt0omnw+dvMwRJHkUiy7MV6FuFKqDzJ4soLk1nfpmjxfeidPQdySklXTcqxkNCotSRQJbwysffLVmCfHx4wg26bluM42lYSI1pfiFOluG+2/kSMx/vnn6jKb9b4fY3tuJzfjvfLpQb5yPNm3LEe0PhVLEHOJ7nQYd2UjTzk01PvQ/LNtBnkI4goqW2OiKlxvZLrIWMtPHvRzWKO1FKNYv0b0eAnNkGuuo4mOq6UgL84uLgl5Z9nNWehz+Zix1yRhPsvi1beCbqgKW6S7DVH/NdXkMYdzlepoIeFV93Jo0EB7SjR/oWveycryixyXwv8q5Iaq0BHE1kyUUqsYcswK5Hl/yZUWzTZHzbuCWO+ZnxyzPhbsi4WuQXpmmlkdLnRqpQ1Nf3vfrax92zRHskiyv1ap1+O9179vOSgyJWgf60Sw2wah93I8uhsm/5coGpH6+mZRPD95dRr3Tb/ImKBfLlwNYmlLrQrgPwaax5yNGp2WcaKghqdn23z13pLS9j6QqxBsS27ICGInvQq1HmnWQWPIMYsmknGWctnfJNV4X7vWekFmxW4Imvr1Vsql/ejtOVMrWF8LGUFsTEPrgIUQtYdqjiZ/vdt14NyGLUFc/WGnOPfN+ND9gkM8AvW5UBHExnY1zVD73k+uuuPRNh02PusIEiK98k27cn8EyVoQ31tOZwe2AYK8hvQ3Ufha/Pdy9MjjJEOLrNkQ5N5CO6OHyHOtk6VCfT19QXRcvQVWen7/PY1cUXs0zbIFQWxEkF97/pjjA7pn8/QsCLKcfDOGqD/0QBvIjnZGkPc8Z4FaRUt6RQTJBt/1xynRgwiSU5H+jucskOiRCl0LgqR/vKjvg5upP1LBe9+7Rpt64IWnycEmn99h+xC5YLRTEN8RxNey9o/+hCAtqEHSZ3GJOw8IApCWIFbWYXkt0I/oRQhyRbYmI5oUEAQAQeBK+F62AgiSFe+u0gYIAoAgABBBkJPkv/Vzzx9Rz+yAFDixIMg4+Wb0vfp2cZmumQZjC4KkzwvPJ49cX6drkmJdmTL5b+37zFwESYXSgiDp4zvFogbJlhDL3dNfbvLcdw2y5KLI20amewtv9v9tTejJhiJI+kX6aYAskCiSAmfpC2JlwaKe3eeTUE+pgkb7Xqga5Dj5xvS9j/z6GuuymiVInwslSDvTrCb3lMPIkiBlKwW5cYcogiDNfViv6DEFOnCaKIIg0QUJ9Mxq/4lggAOnFUUY0WqiQC/tCOI4MiGIngrlm96Q9VlxCdbXQgqSfhSZplkBoog2UX3K4xAiUiJIKEI9U3Blw0USQJBLcsJnyTetloeEOrpH9cgnB6RbYXkWsuYNvVjRRp4R8tjN7mZR3CpZ8Wu0j4UWxEaadVqGPQBOs+yffeeGgIkmpvoYEeSnZh6Efw8dTv35uCg+3vUzoah/41bZdkGC9rGFySTwUul7C/oCmyaaWh33gy8j1j/HbhRN68JOr9jRFYE0z6LFkd1Nn/fJohyHVf3Rty6IvsB9E82tzveHUXNnXc2edTi7ziMp9PmUroW5TxYFuV0JYjyCuMbXOn0bzxxQMa16oW3YE0SjV8ELulhbbodmml3Dvo/uUvqmT5Q+FUuQXVNNr8nDJ/t0wbTZzUeQrYkSalsP0tCo1tNjumGaHNV9KpsIYi+KiK96SNLi6BFXEDfacGLqNmgxI5KkxknokaumIojYMXc7ZpLkXJPYGpSI2ofiDPOe596CckebD9XQUpEmH9XsXf5nRfFwu5J/aCl6dGO+YSf3XwCvaFHjg9thNlnFRmnjNDIOLX3q6H0nfgSxHkWEZrS116O7afPzP94rin/suPTRVu3Rjf2mnbb8EnivSx70i+Lrm/6fNRISrVj+++9cWmVLjsb6TDMRxEWRsvpzI4tcXgsHf7+T7vMKJYbSw9PSagtr3qPXNkH0hb8tckKifLgdbkHhvOhYo8e7lsWYcbOpk3KaE8RJogrxTpEbWvAoUbp9d/J7TJTyfT90xbfvxzw0w34lx6CpN29aEK3G1F1cKnJFskgULVdfCZRRKoXSvhJFiqejnFpPw4XdSpCzdgriJLGzX8QHEkXSaDegXufZ46GhWRXXkuA/I/ealxAvczvmrHmagjhJ7Ow6DI3EmW3HfXGWuwCXEXy3oCVB8k+1wFRqNSONZxS6hhjQL6BmkIIc6QjiJFGatUffaD17TdcdaQri2CksPJ0KQnFcJLbKIo0a5GI9ogp1RD3SyrpjPdZOQasRZLY9t09/aWXdMU7tQ3WSbCq3rICjRdrD3ZTqjrRTrIvp1rDIcSkKnKfRpSS2BXGSMImIHKRYl+amjGzliO7pduofMn1B3IRRD0myk6OXymSg9QiCJMiBIEiCHAiCJMhhSA57glyU5JA+Z4ZDi3KI9Id5L4N5EgskP5SbVwS5GE3U8My4p8tdy3LYjyA/RxKt3VI0YYFjGmjhYb+pk0gQ5NWSdAv3xNM1+mfjxXg/xYWH7UuxLqZb47p4Z9NVc+zVxfg4ly+UTwQh5Wo6pRqkuiKXCPLLaKIbpZSLoeDwHBbugIWDHL9cnhGEaELUIILMHU14bK0/9nOOGu2KIBejiYr4nSKXU+XjczRtvwyGbxHkclEGtSir9PkrcVKLMWzbF2+nIIiCGAiCKIiBIL5F0YjXdotrFNUYu20ovhHk7UTp1qIosuQ+PKzh2mEtxpibjyBvElUkSm4nqxxOxSBaIIgnUfSIBsnSq1+tRRZFCslQTl8Nbl5CEFvC9GpZegnXLEe1EGWb5i4QJF1h1s9dsZfda5n56KcLIRDEgDQSZbmOMsW5Vw0CzDukrKHXWRFdnns9q2QY0dgIAhCdDk0AgCAACAKAIAAIAoAgAAgCgCAACAKAIACAIAAIAoAgAAgCgCAACAKAIAAIAoAgAAgCAAgCgCAACAKAIAAIAoAgAAgCgCAACAIACAKAIAAIAoAgAAgCgCAACAKAIAAIAoAgAPAq/i/AAMaheLoHuSPZAAAAAElFTkSuQmCC",
          fileName="modelica://TILMedia/Images/Icon_Gas.png"), Text(
          extent={{-120,-60},{120,-100}},
          lineColor={255,153,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The gas model Gas_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end PartialGas;
