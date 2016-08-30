package com.nut.blehunter.rxApi.model;

import com.nut.blehunter.d.i;

public class ResetPasswordRequestBody
{
  public final String countryCode;
  public final String password;
  public final String phoneNumber;
  public final String plainPassword;
  public final String smsCaptcha;

  public ResetPasswordRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.countryCode = i.a(paramString1);
    this.phoneNumber = paramString2;
    this.smsCaptcha = paramString3;
    this.password = paramString4;
    this.plainPassword = paramString5;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.ResetPasswordRequestBody
 * JD-Core Version:    0.6.2
 */