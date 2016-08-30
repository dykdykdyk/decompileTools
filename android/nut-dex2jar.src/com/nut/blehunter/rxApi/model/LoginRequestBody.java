package com.nut.blehunter.rxApi.model;

import com.nut.blehunter.d.i;

public class LoginRequestBody
{
  public final String country_code;
  public final String email;
  public final String facebook_access_token;
  public final String password;
  public final String phone_number;
  public final String qq_access_token;
  public final String qq_open_id;
  public final String twitter_open_id;
  public final String weibo_access_token;
  public final String weibo_open_id;

  private LoginRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    this.email = paramString1;
    this.country_code = paramString2;
    this.phone_number = paramString3;
    this.password = paramString4;
    this.qq_open_id = paramString5;
    this.qq_access_token = paramString6;
    this.facebook_access_token = paramString7;
    this.twitter_open_id = paramString8;
    this.weibo_open_id = paramString9;
    this.weibo_access_token = paramString10;
  }

  public static LoginRequestBody createWithEmail(String paramString1, String paramString2)
  {
    return new LoginRequestBody(paramString1, null, null, paramString2, null, null, null, null, null, null);
  }

  public static LoginRequestBody createWithFacebook(String paramString)
  {
    return new LoginRequestBody(null, null, null, null, null, null, paramString, null, null, null);
  }

  public static LoginRequestBody createWithMobile(String paramString1, String paramString2, String paramString3)
  {
    return new LoginRequestBody(null, i.a(paramString1), paramString2, paramString3, null, null, null, null, null, null);
  }

  public static LoginRequestBody createWithQQ(String paramString1, String paramString2)
  {
    return new LoginRequestBody(null, null, null, null, paramString1, paramString2, null, null, null, null);
  }

  public static LoginRequestBody createWithTwitter(String paramString)
  {
    return new LoginRequestBody(null, null, null, null, null, null, null, paramString, null, null);
  }

  public static LoginRequestBody createWithWeibo(String paramString1, String paramString2)
  {
    return new LoginRequestBody(null, null, null, null, null, null, null, null, paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.LoginRequestBody
 * JD-Core Version:    0.6.2
 */