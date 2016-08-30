package com.baidu.android.pushservice.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.a.a.e;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.i.l;
import com.baidu.android.pushservice.j.c;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class a
{
  private static String a = "http://api.tuisong.baidu.com/rest/3.0/clientad/update_ad_status";

  protected static String a(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.substring(paramString.indexOf("ad_id"), paramString.indexOf("/channelid"));
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(paramString))
      {
        localObject1 = localObject2;
        if (paramString.length() > 0)
          localObject1 = paramString.substring(paramString.indexOf("=") + 1, paramString.length());
      }
    }
    return localObject1;
  }

  public static void a(Context paramContext, int paramInt)
  {
    new Thread(new a.1(paramContext, paramInt)).start();
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString1.trim())) && (e.a(Uri.parse(paramString1.trim()))))
    {
      com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "<<< URL IS VALID return string :  ");
      new Thread(new a.2(paramContext, paramString1, paramString2)).start();
    }
  }

  protected static void a(Context paramContext, List<NameValuePair> paramList, int paramInt)
  {
    try
    {
      com.baidu.android.pushservice.e.b.a(paramList);
      paramList.add(new BasicNameValuePair("apikey", c(paramContext)));
      paramList.add(new BasicNameValuePair("cuid", c.a(paramContext)));
      paramList.add(new BasicNameValuePair("channel_id", PushSettings.a(paramContext)));
      paramList.add(new BasicNameValuePair("sdk_version", com.baidu.android.pushservice.a.a()));
      paramList.add(new BasicNameValuePair("ad_status", String.valueOf(paramInt)));
      com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "params  = " + paramList.toString());
      if (com.baidu.android.pushservice.a.b() > 0)
        m.a("  updateADStatus =  " + paramList.toString(), paramContext);
      return;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("AdvertiseUtility", "error = " + paramContext.getMessage());
    }
  }

  public static boolean a(Context paramContext)
  {
    return d(paramContext);
  }

  protected static String b(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject2 = null;
    while (true)
    {
      try
      {
        String str1 = b(paramString2);
        localObject1 = com.baidu.android.pushservice.c.b.a(paramContext).c(paramContext.getPackageName());
        if (localObject1 != null)
        {
          localObject1 = ((h)localObject1).a();
          String str2 = c.a(paramContext);
          int i = paramString1.indexOf("/src");
          paramContext = localObject2;
          if (!TextUtils.isEmpty(paramString1))
          {
            paramContext = localObject2;
            if (paramString1.length() > 0)
            {
              paramContext = paramString1.substring(0, i);
              paramContext = paramContext + "/appid=" + (String)localObject1 + "/cuid=" + str2 + "/errorcode=" + paramString2 + "/errormsg=" + str1;
            }
          }
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        com.baidu.android.pushservice.h.a.e("AdvertiseUtility", "error = " + paramContext.getMessage());
        return null;
      }
      Object localObject1 = null;
    }
  }

  protected static String b(String paramString)
  {
    String str = null;
    if (paramString.equals("10"))
      str = "commandservice_receiver_null";
    while (!paramString.equals("12"))
      return str;
    return "notification_disable";
  }

  public static boolean b(Context paramContext)
  {
    return (d(paramContext)) && (!e(paramContext));
  }

  private static String c(Context paramContext)
  {
    String str = null;
    try
    {
      if (i.b(paramContext, "com.baidu.android.pushservice.PushManager.LOGIN_TYPE", 0) == 0)
        str = i.a(paramContext, "com.baidu.android.pushservice.PushManager.LONGIN_VALUE");
      return str;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("AdvertiseUtility", "error = " + paramContext.getMessage());
    }
    return null;
  }

  public static boolean c(String paramString)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = bool3;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        bool1 = bool3;
        if (Pattern.compile("^http[s]?:\\/\\/[^\\/]+(\\.baidu\\.com|\\.hao123\\.com)(:\\d+)?(\\/.*|)$").matcher(paramString).matches())
        {
          bool1 = true;
          com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "adurl  is  from baidu");
          return true;
        }
        bool1 = bool3;
        com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "adurl  is  not from baidu");
        return false;
      }
    }
    catch (Exception paramString)
    {
      com.baidu.android.pushservice.h.a.a("AdvertiseUtility", paramString);
      bool2 = bool1;
    }
    return bool2;
  }

  private static boolean d(Context paramContext)
  {
    boolean bool = true;
    try
    {
      int i = j.c(paramContext).a();
      com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "pushadswitch =  " + i);
      if (com.baidu.android.pushservice.a.b() > 0)
        m.a("updateADStatus getPushADMsgEnable  pushadswitch =  " + i, paramContext);
      if (i == 1)
        bool = false;
      return bool;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "error " + paramContext.getMessage());
    }
    return true;
  }

  private static boolean e(Context paramContext)
  {
    try
    {
      long l1 = m.c();
      com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "today timestamp is   " + l1);
      l locall = j.c(paramContext);
      long l2 = locall.e();
      com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "push ad timestamp is   " + l2);
      if (l1 == l2)
      {
        int i = locall.d();
        int j = locall.b();
        int k = locall.c();
        if ((i + 1 > j) || (i + 1 > k))
        {
          com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "curcount = " + i + "  maxcount =  " + j + "  servermaxcount  " + k);
          return true;
        }
        com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "currentcount  = " + (i + 1));
        j.a(paramContext, i + 1);
      }
      else
      {
        j.a(paramContext, 1);
        j.a(paramContext, m.c());
      }
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.c("AdvertiseUtility", "error " + paramContext.getMessage());
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.a
 * JD-Core Version:    0.6.2
 */