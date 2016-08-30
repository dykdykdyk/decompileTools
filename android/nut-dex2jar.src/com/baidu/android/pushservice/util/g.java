package com.baidu.android.pushservice.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.baidu.android.pushservice.h.a;

public class g
{
  private static ConnectivityManager a = null;

  public static boolean a(Context paramContext)
  {
    paramContext = c(paramContext);
    if (paramContext != null)
      return paramContext.isConnectedOrConnecting();
    return false;
  }

  public static boolean b(Context paramContext)
  {
    paramContext = c(paramContext);
    return (paramContext != null) && (paramContext.getType() == 1);
  }

  public static NetworkInfo c(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      paramContext = paramContext.getApplicationContext();
      if (paramContext == null)
      {
        localObject1 = localObject2;
        a.d("NetworkCheck", "context is null !!!");
      }
      localObject1 = localObject2;
      paramContext = e(paramContext);
      if (paramContext != null)
      {
        localObject1 = localObject2;
        paramContext = paramContext.getActiveNetworkInfo();
        localObject1 = paramContext;
        if (paramContext == null)
        {
          localObject1 = paramContext;
          a.d("NetworkCheck", "networkInfo is null !!!");
          return paramContext;
        }
      }
      else
      {
        localObject1 = localObject2;
        a.d("NetworkCheck", "connManager is null !!!");
        return null;
      }
    }
    catch (Exception paramContext)
    {
      a.e("NetworkCheck", "exp: " + paramContext.getMessage());
    }
    return localObject1;
  }

  public static String d(Context paramContext)
  {
    if (!a(paramContext))
      return "connectionless";
    paramContext = c(paramContext);
    int i = -1;
    if (paramContext != null)
      i = paramContext.getType();
    switch (i)
    {
    default:
      return "connectionless";
    case 0:
      return "mobile";
    case 4:
      return "mobile_dun";
    case 5:
      return "mobile_hipri";
    case 2:
      return "mobile_mms";
    case 3:
      return "mobile_supl";
    case 1:
      return "wifi";
    case 6:
    }
    return "wimax";
  }

  private static ConnectivityManager e(Context paramContext)
  {
    if (paramContext == null)
      return a;
    if (a == null)
      a = (ConnectivityManager)paramContext.getSystemService("connectivity");
    return a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.g
 * JD-Core Version:    0.6.2
 */