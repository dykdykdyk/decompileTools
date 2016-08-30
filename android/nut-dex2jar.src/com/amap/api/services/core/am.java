package com.amap.api.services.core;

import android.content.Context;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public class am
{
  public static am.a a(Context paramContext, ar paramar, String paramString)
  {
    try
    {
      paramContext = a(new cf().a(new am.b(paramContext, paramar, paramString)));
      return paramContext;
    }
    catch (ai paramContext)
    {
      ay.a(paramContext, "ConfigManager", "loadConfig");
      return new am.a();
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "ConfigManager", "loadConfig");
    }
  }

  public static am.a a(byte[] paramArrayOfByte)
  {
    boolean bool2 = false;
    am.a locala = new am.a();
    if (paramArrayOfByte != null)
      while (true)
      {
        try
        {
          if (paramArrayOfByte.length == 0)
            return locala;
          paramArrayOfByte = new JSONObject(new String(paramArrayOfByte, "UTF-8"));
          if ((!"1".equals(a(paramArrayOfByte, "status"))) || (!paramArrayOfByte.has("result")))
            break;
          paramArrayOfByte = paramArrayOfByte.getJSONObject("result");
          if (paramArrayOfByte == null)
            break;
          if (as.a(paramArrayOfByte, "exception"))
          {
            bool1 = b(paramArrayOfByte.getJSONObject("exception"));
            if (as.a(paramArrayOfByte, "common"))
              bool2 = a(paramArrayOfByte.getJSONObject("common"));
            Object localObject1 = new am.a.a();
            ((am.a.a)localObject1).a = bool1;
            ((am.a.a)localObject1).b = bool2;
            locala.d = ((am.a.a)localObject1);
            Object localObject2;
            if (paramArrayOfByte.has("sdkupdate"))
            {
              localObject1 = paramArrayOfByte.getJSONObject("sdkupdate");
              localObject2 = new am.a.c();
              a((JSONObject)localObject1, (am.a.c)localObject2);
              locala.e = ((am.a.c)localObject2);
            }
            if (as.a(paramArrayOfByte, "sdkcoordinate"))
            {
              localObject1 = paramArrayOfByte.getJSONObject("sdkcoordinate");
              localObject2 = new am.a.b();
              a((JSONObject)localObject1, (am.a.b)localObject2);
              locala.f = ((am.a.b)localObject2);
            }
            if (as.a(paramArrayOfByte, "callamap"))
              locala.b = paramArrayOfByte.getJSONObject("callamap");
            if (as.a(paramArrayOfByte, "ca"))
              locala.c = paramArrayOfByte.getJSONObject("ca");
            if (!as.a(paramArrayOfByte, "locate"))
              break;
            locala.a = paramArrayOfByte.getJSONObject("locate");
            return locala;
          }
        }
        catch (JSONException paramArrayOfByte)
        {
          ay.a(paramArrayOfByte, "ConfigManager", "loadConfig");
          return locala;
        }
        catch (UnsupportedEncodingException paramArrayOfByte)
        {
          ay.a(paramArrayOfByte, "ConfigManager", "loadConfig");
          return locala;
        }
        catch (Throwable paramArrayOfByte)
        {
          ay.a(paramArrayOfByte, "ConfigManager", "loadConfig");
          return locala;
        }
        boolean bool1 = false;
      }
    return locala;
  }

  public static String a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (paramJSONObject == null);
    while ((!paramJSONObject.has(paramString)) || (paramJSONObject.getString(paramString).equals("[]")))
      return "";
    return paramJSONObject.optString(paramString);
  }

  private static void a(JSONObject paramJSONObject, am.a.b paramb)
  {
    if (paramJSONObject != null);
    try
    {
      String str = a(paramJSONObject, "md5");
      paramJSONObject = a(paramJSONObject, "url");
      paramb.b = str;
      paramb.a = paramJSONObject;
      return;
    }
    catch (JSONException paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseSDKCoordinate");
      return;
    }
    catch (Throwable paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseSDKCoordinate");
    }
  }

  private static void a(JSONObject paramJSONObject, am.a.c paramc)
  {
    if (paramJSONObject != null)
      try
      {
        String str1 = a(paramJSONObject, "md5");
        String str2 = a(paramJSONObject, "url");
        paramJSONObject = a(paramJSONObject, "sdkversion");
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
        {
          if (TextUtils.isEmpty(paramJSONObject))
            return;
          paramc.a = str2;
          paramc.b = str1;
          paramc.c = paramJSONObject;
          return;
        }
      }
      catch (JSONException paramJSONObject)
      {
        ay.a(paramJSONObject, "ConfigManager", "parseSDKUpdate");
        return;
      }
      catch (Throwable paramJSONObject)
      {
        ay.a(paramJSONObject, "ConfigManager", "parseSDKUpdate");
      }
  }

  private static boolean a(String paramString)
  {
    if (paramString == null);
    while (!paramString.equals("1"))
      return false;
    return true;
  }

  private static boolean a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return false;
    try
    {
      boolean bool = a(a(paramJSONObject.getJSONObject("commoninfo"), "com_isupload"));
      return bool;
    }
    catch (JSONException paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseCommon");
      return false;
    }
    catch (Throwable paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseCommon");
    }
    return false;
  }

  private static boolean b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return false;
    try
    {
      boolean bool = a(a(paramJSONObject.getJSONObject("exceptinfo"), "ex_isupload"));
      return bool;
    }
    catch (JSONException paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseException");
      return false;
    }
    catch (Throwable paramJSONObject)
    {
      ay.a(paramJSONObject, "ConfigManager", "parseException");
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.am
 * JD-Core Version:    0.6.2
 */