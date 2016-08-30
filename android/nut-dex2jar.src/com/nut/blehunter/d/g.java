package com.nut.blehunter.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.provider.k;
import java.util.ArrayList;

public final class g
{
  public static boolean a(Context paramContext)
  {
    User localUser = k.b().c();
    if (localUser == null)
      return false;
    if (!c(paramContext))
      return false;
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if ((paramContext == null) || (TextUtils.isEmpty(paramContext.getSSID())))
      return false;
    paramContext = paramContext.getSSID();
    paramContext = paramContext.substring(1, paramContext.length() - 1);
    ArrayList localArrayList = localUser.h();
    return (localUser.g()) && (localArrayList.contains(paramContext));
  }

  public static boolean b(Context paramContext)
  {
    paramContext = d(paramContext);
    return (paramContext != null) && (paramContext.isConnected());
  }

  public static boolean c(Context paramContext)
  {
    paramContext = d(paramContext);
    return (paramContext != null) && (paramContext.isConnected()) && (paramContext.getType() == 1);
  }

  private static NetworkInfo d(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.g
 * JD-Core Version:    0.6.2
 */