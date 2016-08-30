package com.nut.blehunter;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.ShareUserInfo;
import com.nut.blehunter.entity.r;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class e
{
  private static Gson a;

  public static Gson a()
  {
    try
    {
      if (a == null)
        a = new Gson();
      Gson localGson = a;
      return localGson;
    }
    finally
    {
    }
  }

  public static <T> T a(String paramString, Class<T> paramClass)
  {
    return a().fromJson(paramString, paramClass);
  }

  public static List<Nut> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    Type localType = new f().getType();
    return (List)a().fromJson(paramString, localType);
  }

  public static List<ShareUserInfo> b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    Type localType = new g().getType();
    return (List)a().fromJson(paramString, localType);
  }

  public static ArrayList<r> c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    Type localType = new h().getType();
    return (ArrayList)a().fromJson(paramString, localType);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.e
 * JD-Core Version:    0.6.2
 */