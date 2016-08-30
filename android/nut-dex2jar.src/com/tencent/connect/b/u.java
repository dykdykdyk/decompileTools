package com.tencent.connect.b;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.widget.Toast;
import com.tencent.open.a.h;
import com.tencent.tauth.b;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public final class u
{
  public v a;
  private a b;

  private u(String paramString, Context paramContext)
  {
    h.c("openSDK_LOG.QQAuth", "new QQAuth() --start");
    this.a = new v(paramString);
    this.b = new a(this.a);
    com.tencent.connect.a.a.a(paramContext, this.a);
    h.c("openSDK_LOG.QQAuth", "new QQAuth() --end");
  }

  public static u a(String paramString, Context paramContext)
  {
    com.tencent.open.utils.g.a = paramContext.getApplicationContext();
    h.c("openSDK_LOG.QQAuth", "QQAuth -- createInstance() --start");
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      localPackageManager.getActivityInfo(new ComponentName(paramContext.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
      localPackageManager.getActivityInfo(new ComponentName(paramContext.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
      paramString = new u(paramString, paramContext);
      h.c("openSDK_LOG.QQAuth", "QQAuth -- createInstance()  --end");
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      h.b("openSDK_LOG.QQAuth", "createInstance() error --end", paramString);
      Toast.makeText(paramContext.getApplicationContext(), "请参照文档在Androidmanifest.xml加上AuthActivity和AssitActivity的定义 ", 1).show();
    }
    return null;
  }

  public final int a(Activity paramActivity, String paramString, b paramb)
  {
    String str1 = paramActivity.getApplicationContext().getPackageName();
    Object localObject2 = paramActivity.getPackageManager().getInstalledApplications(128).iterator();
    Object localObject3;
    do
    {
      if (!((Iterator)localObject2).hasNext())
        break;
      localObject3 = (ApplicationInfo)((Iterator)localObject2).next();
    }
    while (!str1.equals(((ApplicationInfo)localObject3).packageName));
    label250: Object localObject1;
    for (str1 = ((ApplicationInfo)localObject3).sourceDir; ; localObject1 = null)
    {
      if (str1 != null);
      while (true)
      {
        try
        {
          localObject2 = com.tencent.open.utils.a.a(new File(str1));
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            h.a("openSDK_LOG.QQAuth", "-->login channelId: " + (String)localObject2);
            String str2 = "";
            h.c("openSDK_LOG.QQAuth", "loginWithOEM");
            com.tencent.connect.common.b.j = true;
            if (!((String)localObject2).equals(""))
              break label250;
            str1 = "null";
            localObject3 = localObject2;
            if (((String)localObject2).equals(""))
              localObject3 = "null";
            localObject2 = str2;
            if ("".equals(""))
              localObject2 = "null";
            com.tencent.connect.common.b.h = (String)localObject3;
            com.tencent.connect.common.b.g = str1;
            com.tencent.connect.common.b.i = (String)localObject2;
            int i = this.b.a(paramActivity, paramString, paramb);
            return i;
          }
        }
        catch (IOException localIOException)
        {
          h.b("openSDK_LOG.QQAuth", "-->login get channel id exception.", localIOException);
          localIOException.printStackTrace();
        }
        h.b("openSDK_LOG.QQAuth", "-->login channelId is null ");
        com.tencent.connect.common.b.j = false;
        return this.b.a(paramActivity, paramString, paramb);
        localObject1 = localObject2;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.u
 * JD-Core Version:    0.6.2
 */