package com.sina.weibo.sdk.b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.j;
import com.sina.weibo.sdk.d.l;
import com.sina.weibo.sdk.d.m;
import com.sina.weibo.sdk.d.n;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class b
{
  static final String a = b.class.getName();
  private static final String f = Environment.getExternalStorageDirectory() + "/Android/org_share_data/";
  HandlerThread b;
  Looper c;
  c d;
  boolean e = false;
  private Context g;

  public b(Context paramContext)
  {
    this.g = paramContext.getApplicationContext();
  }

  private static void a(Context paramContext, a parama, String paramString)
  {
    n localn = new n();
    localn.c = parama.e;
    Object localObject;
    if (!TextUtils.isEmpty(paramString))
    {
      localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
    }
    for (paramString = PendingIntent.getActivity(paramContext, 0, (Intent)localObject, 16); ; paramString = PendingIntent.getActivity(paramContext, 0, new Intent(), 16))
    {
      localn.d = paramString;
      localObject = parama.f;
      paramString = (String)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject))
        paramString = l.a("Weibo", "微博", "微博");
      localn.b = paramString;
      localn.a = parama.e;
      localn.a(paramContext).a(1);
      return;
    }
  }

  private static boolean a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return false;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 1);
        if (paramContext != null)
          return true;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
      }
    }
    return false;
  }

  private static boolean a(PackageInfo paramPackageInfo, List<String> paramList, String paramString)
  {
    boolean bool3 = false;
    paramList = paramList.iterator();
    int i;
    boolean bool1;
    if (!paramList.hasNext())
    {
      i = 0;
      if (paramPackageInfo != null)
        break label93;
      bool1 = false;
    }
    label179: 
    while (true)
    {
      boolean bool2 = bool3;
      if (i != 0)
      {
        bool2 = bool3;
        if (bool1)
          bool2 = true;
      }
      return bool2;
      Object localObject = (String)paramList.next();
      if (paramPackageInfo == null);
      for (bool1 = false; ; bool1 = ((String)localObject).equals(paramPackageInfo.packageName))
      {
        if (!bool1)
          break label91;
        i = 1;
        break;
      }
      label91: break;
      label93: if (paramPackageInfo.signatures == null)
      {
        if (Build.VERSION.SDK_INT < 11)
          bool1 = true;
        else
          bool1 = false;
      }
      else
      {
        paramList = "";
        int j = 0;
        while (true)
        {
          if (j >= paramPackageInfo.signatures.length)
          {
            if (paramList != null)
              break label179;
            bool1 = false;
            break;
          }
          localObject = paramPackageInfo.signatures[j].toByteArray();
          if (localObject != null)
            paramList = j.a((byte[])localObject);
          j += 1;
        }
        bool1 = paramList.equals(paramString);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.b
 * JD-Core Version:    0.6.2
 */