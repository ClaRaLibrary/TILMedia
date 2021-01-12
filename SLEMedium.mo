within TILMedia;
model SLEMedium
  "Medium with solid-liquid equilibrium (SLE), with h and p as independent variables"

  replaceable model SLEMediumType =
      .TILMedia.SLEMediumTypes.TILMedia_SodiumAcetate                               constrainedby
    .TILMedia.SLEMediumTypes.BaseSLEMedium "Type of the SLE medium"
    annotation(choicesAllMatching=true);

  input SI.SpecificEnthalpy h "Specific enthalpy" annotation(Dialog);
  SI.Density d "Density";
  input SI.AbsolutePressure p "Pressure" annotation(Dialog);
  input SI.MassFraction iota = 0 "metastable state transition [0,1]" annotation(Dialog);
  SI.Temperature T "Temperature";
  SI.SpecificHeatCapacity cp "Specific heat capacity";
  SI.MassFraction q "Liquid mass fraction";
  SI.ThermalConductivity lambda "Thermal conductivity";
  SI.SpecificEnthalpy h_fusion = sleMedium.h_fusion;
  constant SI.Temperature TStableLimit = sleMedium.TStableLimit
    "Above this temperature all cristals in the solution are dissolved. Metastable states are possible after exceeding this temperature.";
  constant SI.Temperature TSupercoolingLimit(min=-.Modelica.Constants.inf) = sleMedium.TSupercoolingLimit
    "There is no metastable state below this temperature. Crystallization starts when this temperature is reached.";

  function density_h = .TILMedia.Internals.SLEMediumFunctions.density_h(d_s = sleMedium.d_s, d_l = sleMedium.d_l, h_fusion = sleMedium.h_fusion);
  function specificEnthalpy_T =
      .TILMedia.Internals.SLEMediumFunctions.specificEnthalpy_T (TSupercoolingLimit = sleMedium.TSupercoolingLimit, cp_s = sleMedium.cp_s, cp_l = sleMedium.cp_l, T_s = sleMedium.T_s, T_l = sleMedium.T_l, h_fusion = sleMedium.h_fusion);
protected
  SLEMediumType sleMedium(T=T);
equation
  q = .TILMedia.Internals.SLEMediumFunctions.quality_h(h, iota, sleMedium.cp_s, sleMedium.cp_l, sleMedium.h_fusion, sleMedium.T_s, sleMedium.T_l);
  T = .TILMedia.Internals.SLEMediumFunctions.temperature_h(h, iota, sleMedium.cp_s, sleMedium.cp_l, sleMedium.h_fusion, sleMedium.T_s, sleMedium.T_l);

  cp = sleMedium.cp_s + (sleMedium.cp_l - sleMedium.cp_s)*q;
  1/d = 1/sleMedium.d_s + (1/sleMedium.d_l - 1/sleMedium.d_s)*q;
  lambda = sleMedium.lambda_s + (sleMedium.lambda_l - sleMedium.lambda_s)*q;

  annotation (Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={204,105,176},
          textString=
               "%name"), Bitmap(extent={{-100,-100},{100,100}},
          imageSource=
              "iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAADvlJREFUeNrsnV1sXEcZhmeNyS+tE9WBiKTJqk1KAi12Y7WlJZBVRXJRLmyEuGglFCPBTSq1ToTEj0Rl2gsKQq0DNEIC1LWQUgkkakvtRVtU1hBRSpRgC0L+yzrEUVq7itMSpymBZd71nGiz2N49uzNzZs68j3S0aRqv9+yZ53zzffNzMqVSSRAzHNo13ClfsvLA6wr1KtTfrY/5duPyKKo/F9TrKP6ua1/3qK/f0c6H9+TkS67iO9pW40dG5DGtzr0w+MxTBZOfL0NBtMkQXeTo6LD8EcaUQGgwo1KagqNCQIIedXRrettheQzhkMJMUxB3hIiObY5+zBElTCFpYaQYuGn04Y+Gf9WgPAakKKMUxK4Q0Z0vp17bPDuFi+ouC1GGpDDTFsUYSOAmgptDX7OiUJDaYkCGXo3dAVdAtyQvRRky2JUasBAx6okofY12vSjI3FJkVXeg18NI0UhkyaMxS1mKmuToUe/Z5tA59kpJhihI89Giz+Gcwka3ZKCZqCLlQNR41NHz2ysl6aMg8cVApOgX8UuvaQUl5X4pSj5mlwr5TYfj54ZqX67eLlfQglAMPaJ4JEdsSYIUhGLoE0XJMerhd1mXJEEJosYu+gPOMXTkKP3RmIqHkSO2JK2BiOFKydF3cGP5nfw+y6VTkfFaDqE+O86hM9gIoipT6Bq0sX3r46XM0fePi7cWpeR05q1upVYQFTUgRjebs15OiynxYuZI2k7rC3ONk7SkOGoUKYd+roir4pXM8TSeWl7lVOnNQVTUQBL+KJuyGX6fOSXel5KkkDaVp/amsoulpocMeZ40Os1ZMS1+kxlL+2neWTnBsSUlcqBLNUo5zPJ6ZjyE0xxIVQ4i5UD14XnBKpXx6DEhpkM41W1qir7/OYiUIy84tmGFo5nzxt5bdmn+7+9+8OOfiiPHTiR1utFMbj8jCJJxeQxRDjugcnVUvBnSKe+MKlotPsohZkc/WcK1xBtiKsTT7vFOkAo5mIxb5HTmbQpCOQgjyHV0eyMI5UiOs2FUruZORB7ek2uhHGQhJjLTIZ9+zocIkqccyTEpLoV8+p1Oj4OocQ5WqxLkHfFeIr/3ranZwsAnNt0m7r6zQ2TX3SyPteLSzOXy+MjBv4yKPx82Pu0l2+qwHDZ24SM1mBL/SuT3zszMiK88+CWR23rvdX+/fNlScfeWjvKRvflV8avhF0x+jI5WR+VAie1pNs9w+e439ohV7Tct+G8+v+N+ceT4CaMj7i0OypFVeQcJmFpyXMuiP32v0c/R4pgcqFhhCgknHgacf1SCPAPdqMKB1+b8/+hqmcS1Lla/YMXKGW4USxL73ZMySf/JLwZF8czZa3/3j3+eLeclc0WbySkzo/3ORBCVd3AlICnz7HO/vk4OcPDw3Bu1f7jO7pi3glRssEDIvKDEaxtXIkieeQdxkcQFUV0rDgY6Srv4UMinP9aSsBzsWjFRd5li0hFkgF0rt1kllod8+qOJCaI2kuZUEsdZU1oR8ukXkowg/Wx+7rNWhCsInsGeiCDq+Rx8BIEn3CJT9QDBQ04Tq2IxenjEraWbQjztoUQEUdGDT3ZiBKEgjB7pYLFoFZvFR4JKP6KnTlndvFpFj2fZ5PwjkI2rI65tYG07gjB6eAqqWWvCqGiNJLK7u5pSwtzDY+4pBXH5rruJ24wgfWxi/keRlOciyD0K1gVRy2g57pECPlvaIBal8+HIF+e6iduKIIweKQEVre2lj6Xx1Hrnel66LUF62bTSw62iPW1drcG5nnBrRRCVnHPGbsrYXtqUlrUiY1KOeW/gNiIIo0dK+WKpw3dJMLCTW+gfGB0oVAuiLrAppRdsDbQ/c8jHR0MjKe+U0aO40D8yXY7oSfIbuHHTKrFs3Qpxg3xtXfbB8p8rmTkzLa7O/Fu8e2yy/Od35CuJ+R2LJeKhUpd4IXMksW1KG4wcPbXksCFIzvaZL25fLlbv2CBWblkjPiClWIhIGIgE/iNluXB4Qh7ntMjSta/+pfYy2lr9nuJ8tnq45/Jl8b2nnxFnJs550a2aq2KV6ggSidG+Ndvwe0Ao/DwORJTzL58sy0Jqs2zpUvHEt78ufvbL58SBPx109WMOLpSQWxVELam1Ur1Cg17b8/GaESPWBZfR5Zav3lWOJBNDfy8LQ2rztS8/KLZ88vayKJcvv+fKx0K+0TtfKXchTFaxrHSvVu/YKNY/1KFVjuo85rZH7msqMoVGV8cd4qknviO2fuouJ6KGPLKNyGG6i5WzIccaGTlMA/kg4fJ1bWJ8/xgNqLPLhWjyGSnJ8y++JI6dPG37I4zIo796bpVLghide7Vyy0etyFHdlbt05qKYOlCkAXWyaeMG8a2+DVKQU+IPMjexkJ8gYuSbFcOoICr/MHxH77R+sZGwU47GRcFx/9LN4rVXXy8/e13X46WxJPi/ovT9onj7yXqrU0lHEKOtd5W8k5vKOeYDSfr4/lG29CZZ0rpIbBarxebS6vJ/Y6UinqSLh4Vi0LHWWApG7jH2gg3tsGdXxbZE57v2dWuvpJgSxFgEgRjIPRpp4KhIYazjWj953Qp5tJVLxAuBn0HuUfmzRA9o4Gvn2ZxuUsmyqr7pLEZuyqYEyZrLPdbEih6Q4oxs3Fem5n+cMURZtXX9vJUqRI6Qy7wnf/RHbe91ZWqm/p5CvHleXgli7ClRqCTFkaOeizvbfcLA4Kly4o8CQATGQEIfLPRkCo6RNqd9HEQm6Ebzj+r5VAvx5ssnY97dLok3fn6wfMxOOzlXHk0nfmCi7ZmIIFlXBGn0zgcx0BVYqFtGnET7tismRtI70/BNo9vFpNw7cj4I4gycHkJcFCRn8gPHqSZhAmOcLhlhBPE+gsQpE6IczImGxDVBjLbGuOMR0UTD2x//HEVJP1kfBDG6P2WjYxIYLYconT98oDwSX2v0nHiJ9rbn3RZ5KL2ifBstk40LIgoGA3Fg4qGu5bVpptnlufUO2LqIl3tIYgCwUUEqiZbXQjqMomM9Oku7xOskPbojYQqILqLu1x2Pby+/svtFvBYEYAqI7gmE0aYNSOhNLuMlFMQKJ2S/1tQsW4iCiFI5cZFQEK9AvgBJTK3yQwTBzia2l/YSCqJVEixmMrmgKdo5hYRHap6EMluynSgvx0WD1p0/zFa7Zjj9nRHE72iCBvzXx14pV7l0T1fnACMjSKpEwYE7PxJtHeMms+vhNwS3N1azg3xXPR5bak37xUXXCwcEgSjNzsfCz2NQMaTFVCHPNDDRxRp39SLjzv+3x35b7n41k9Cz9Oss2tueiQhSFA4/D312WslJMSmjSqMJPdeYOEuRSbrmPOXokyMNTaEn7GI1ilfbDyKiYLAxTk6hI+EnRij4IIh3O6whmkwdGGfzIumLILpWCfIBOYwgNpN0K2D6BwTBbotnm6xMxe2WESfRfpfTHkG69nVbiSCoPkXRA6+bv7mtqdzghhg/G2fjCGIPE23PVBXL6FAzRKieYYspIBsfua+hBU8o28bZMf5dLtF1ESNtztRIOkw2Mv01erjmQjkJDqw1jx7pXCuHWRtzOruJkWWdlbFLmneF1F21u2Rm18pR3wTZqftNoy186hmHwGh3NOKNBl29lShEw4WPO6aB9zGR0CP66QJzp3RKrPOzmfh8vgpiICnvbGgUGyLougtOshzsKkbanJEcRCZLBd3vWf3cjiTAXY/PKHQ2QS94I4hiROebJV05QvfsDB8B7Sojpt7YpCBajcadG/Omkti3Klr7zvEPZykEL0iUIGO1oM1HokVycKSdgpjoE1400WCjx6SZvqMj52hkti+xykVT+QcwvaJwSBgo94LZcY5z5XEMLIPVuVY82oqUCbkXDJl8c9OCFEwJUpmbVC6pjfuY6OouHMq4FIPdq4hMqVQy9uaHdg1j0OKC7W8sGgRc3L5MLJKRZbn872ppIAM2E8ArKmTcuNpbVsou1rSXgihJEAK7eR2JAYalHD0mf4GNJbd5Xkfia9syHkFUFEEIbOP1JBpB9cr47hktaTGdMHr4LMgAryfxsU1ZEUSGwqIwOF+GBMeIalOpiSCMIsTLtmQlSa9I1mH9el5f0gTjMnpkbf0y2zsr9vP6Ep/akNUIwihCfIoeSUQQRhHiVduxHkEYRYgv0SOpCMIoQrxpM4lEEBVFCvJlG687qQOMe+SS+MUtod0RCKOHF4KoZZKDvPakBoMml9S6HEFAnzCwbp2khouqjYggBVErwXrZDsg89JpcLehDBIEkWHE4zLZAqhhWbUMELUh0p2BXi1R1rZzoWTghCLtaxLWulWsRJOpq7WXbCJ69LnStnBNE0S8MP52KOM2YcGx8LLGR9Pk4tGs4K2af9cBNHsLLOzptrRT0NYJEy3OZj4RHj2tyOClIRT6ym20mGHYnOVruVRerqruVF4b39iWJg6kkzvYYnBZEScKtS9OL8a1DU9nFqgJ3F1a20seYD7mm84KoAaMcJUmdHDlXBgN9jyCUhHJQEEpCOSgIJaEcHsnhnSBVknCKvD8M+igHcL7MuxAcJ/FDDpfHOVIXQaqiCb54jri7y26f5fA+glREEgw2IZpwgqMblBc8uTRtPWhBlCRZMfvM7A62z8STcScnHgbXxarqbhVV8s5FV8mxVyXjxbScUGoiCLtc7FIxgtQfTXCh0OViKdg8+I6zaZQjtRGE0YRRgxEkfjThNqf6GExz1AgqglRFEyTx/YK7yjcKnlTc7+rqPwqiT5ReJQof4lMf40qMfGgnHqQgFIViUBCKQjEoiHZRUPHqCzhHQY4xEELyTUGaEyWrREFkSXt5GOXavBKjyKtPQRqJKhAlbTurYIAvz2hBQXSJskK+QJacevUtsiBSQIYCXn1cvERB/BImp2TJOZyzjCghCiGNXVAQd4XprDhsT7vHNPPR6KAQFMQHaSDKChVlRMUrigBxS8oovUZJdKHidVrKMMpvm4IQYp0WfgWEUBBCKAghFIQQCkIIBSGEghBCQQihIIRQEEIIBSGEghBCQQihIIRQEEIoCCEUhBAKQggFIYSCEEIoCCEUhBAKQggFIYSCEEJBCKEghFAQQigIIYSCEEJBCKEghFAQQigIIRSEEApCCAUhhIIQQkEIIXPxPwEGAI1XCM+0NC++AAAAAElFTkSuQmCC",
          fileName="modelica://TILMedia/Images/Icon_SLE_h.png")}),
          defaultComponentName="sleMedium",
    Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The SLE medium model calculates the thermophysical property data with given input: pressure (p), enthalpy (h), meta stable (iota) and the parameter sleMediumType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"modelica://TILMedia.Testers.TestSLEMedium\">TestSLEMedium</a>.
                   </p>
                   <hr>
                   </html>"));
end SLEMedium;
