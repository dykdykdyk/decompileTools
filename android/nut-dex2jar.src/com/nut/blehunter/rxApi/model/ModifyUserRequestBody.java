package com.nut.blehunter.rxApi.model;

import com.google.gson.Gson;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.User;

public class ModifyUserRequestBody
{
  public final String alarmTime;
  public final String gender;
  public final String name;
  public final String safeRegionAndroid;
  public final String safeTime;
  public final String updateTime;

  private ModifyUserRequestBody(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.name = paramString1;
    this.gender = paramString2;
    this.alarmTime = paramString3;
    this.safeRegionAndroid = paramString4;
    this.updateTime = paramString5;
    this.safeTime = paramString6;
  }

  public static ModifyUserRequestBody createModifyUserRequestBody(User paramUser)
  {
    String str1 = paramUser.b;
    String str2 = paramUser.j;
    String str3 = paramUser.m;
    String str4 = paramUser.n;
    String str5 = paramUser.k;
    if (paramUser.r == null);
    for (paramUser = null; ; paramUser = e.a().toJson(paramUser.r))
      return new ModifyUserRequestBody(str1, str2, str3, str4, str5, paramUser);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.model.ModifyUserRequestBody
 * JD-Core Version:    0.6.2
 */