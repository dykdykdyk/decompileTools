package com.baidu.android.pushservice.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.baidu.android.pushservice.e.g;
import com.baidu.android.pushservice.util.m;
import com.baidu.android.pushservice.util.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class b
{
  private static volatile b b;
  public ArrayList<h> a = new ArrayList();
  private Context c;
  private HashMap<String, g> d = new HashMap();

  private b(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    String str = this.c.getPackageName() + ".push_sync";
    Object localObject = n.a(this.c, str, "r_v2");
    if (!TextUtils.isEmpty((CharSequence)localObject))
      try
      {
        localObject = a((String)localObject);
        com.baidu.android.pushservice.h.a.b("ClientManager", "ClientManager init strAppsV2 : " + (String)localObject);
        localObject = h((String)localObject);
        if (localObject != null)
        {
          localObject = ((ArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            h localh = (h)((Iterator)localObject).next();
            this.a.add(localh);
          }
        }
      }
      catch (Exception localException1)
      {
        com.baidu.android.pushservice.h.a.e("ClientManager", " v2 initException: " + localException1);
      }
    while (true)
    {
      int j = n.b(this.c, str, "com.baidu.push.sync.vn", -1);
      try
      {
        i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
        if (j < i)
        {
          a();
          n.a(this.c, str, "com.baidu.push.sync.vn", i);
        }
        return;
        com.baidu.android.pushservice.h.a.d("ClientManager", "ClientManager init strAppsV2 empty.");
      }
      catch (Exception localException2)
      {
        while (true)
        {
          com.baidu.android.pushservice.h.a.c("ClientManager", "Clientmanager not found " + paramContext.getPackageName());
          int i = 0;
        }
      }
    }
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new b(paramContext);
      paramContext = b;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static String a(String paramString)
  {
    try
    {
      String str = new String(com.baidu.android.pushservice.j.a.b("2011121211143000", "1234567890123456", com.baidu.android.pushservice.j.b.a(paramString.getBytes())));
      return str;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("ClientManager", "decrypt init strApps exception." + paramString);
    }
    return "";
  }

  private String a(List<h> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramList.size())
    {
      h localh = (h)paramList.get(i);
      localStringBuffer.append(localh.c);
      localStringBuffer.append(",");
      localStringBuffer.append(localh.a);
      localStringBuffer.append(",");
      localStringBuffer.append(localh.e);
      if (i != paramList.size() - 1)
        localStringBuffer.append(";");
      i += 1;
    }
    return localStringBuffer.toString();
  }

  private void a()
  {
    a("r_v2", this.a);
  }

  private void a(String paramString, ArrayList<h> paramArrayList)
  {
    String str = this.c.getPackageName() + ".push_sync";
    Iterator localIterator1 = this.c.getPackageManager().queryBroadcastReceivers(new Intent("com.baidu.android.pushservice.action.BIND_SYNC"), 544).iterator();
    ResolveInfo localResolveInfo;
    if (localIterator1.hasNext())
      localResolveInfo = (ResolveInfo)localIterator1.next();
    while (true)
    {
      Object localObject3;
      try
      {
        localObject2 = m.s(this.c, localResolveInfo.activityInfo.packageName);
        if (localObject2 == null)
          break;
        localObject3 = n.a((Context)localObject2, localResolveInfo.activityInfo.packageName + ".push_sync", paramString);
        if (TextUtils.isEmpty((CharSequence)localObject3))
          break label294;
        localObject3 = h(a((String)localObject3));
        if (localObject3 == null)
          break label294;
        localObject3 = ((ArrayList)localObject3).iterator();
        if (!((Iterator)localObject3).hasNext())
          break label294;
        h localh1 = (h)((Iterator)localObject3).next();
        Iterator localIterator2 = paramArrayList.iterator();
        if (!localIterator2.hasNext())
          break label443;
        h localh2 = (h)localIterator2.next();
        if (TextUtils.equals(localh1.c, localh2.c))
          break label448;
        if (!TextUtils.equals(localh1.a, localh2.a))
          continue;
        break label448;
        if (i != 0)
          continue;
        paramArrayList.add(localh1);
        continue;
      }
      catch (Exception localException)
      {
        com.baidu.android.pushservice.h.a.e("ClientManager", "syncRegisterDataImpl Exception: " + localException.getMessage());
      }
      break;
      label294: Object localObject1 = n.a((Context)localObject2, localException.activityInfo.packageName + ".self_push_sync", "bindinfo");
      if (TextUtils.isEmpty((CharSequence)localObject1))
        break;
      localObject1 = g(a((String)localObject1));
      Object localObject2 = paramArrayList.iterator();
      do
      {
        if (!((Iterator)localObject2).hasNext())
          break;
        localObject3 = (h)((Iterator)localObject2).next();
      }
      while (!TextUtils.equals(((h)localObject1).c, ((h)localObject3).c));
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          break label441;
        paramArrayList.add(localObject1);
        break;
        if (paramArrayList.size() > 0)
        {
          paramArrayList = b(a(paramArrayList));
          n.a(this.c, str, paramString, paramArrayList);
        }
        return;
      }
      label441: break;
      label443: i = 0;
      continue;
      label448: i = 1;
    }
  }

  private h g(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.trim().split(",");
      if ((paramString != null) && (paramString.length >= 3))
      {
        h localh = new h();
        localh.c = paramString[0].trim();
        localh.a = paramString[1].trim();
        localh.e = paramString[2].trim();
        return localh;
      }
    }
    return null;
  }

  private ArrayList<h> h(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = null;
      return paramString;
    }
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramString.trim().split(";");
    int j = arrayOfString.length;
    int i = 0;
    while (true)
    {
      paramString = localArrayList;
      if (i >= j)
        break;
      paramString = arrayOfString[i].trim().split(",");
      if (paramString.length >= 3)
      {
        h localh = new h();
        localh.c = paramString[0].trim();
        localh.a = paramString[1].trim();
        localh.e = paramString[2].trim();
        localArrayList.add(localh);
      }
      i += 1;
    }
  }

  public final String a(h paramh, boolean paramBoolean)
  {
    com.baidu.android.pushservice.h.a.c("ClientManager", "syncV2 addOrRemove:" + paramBoolean + ", " + paramh);
    com.baidu.android.pushservice.h.a.c("ClientManager", "client.packageName=" + paramh.c + " client.appId=" + paramh.a + " client.userId=" + paramh.e);
    return a(paramh, paramBoolean, this.a, "r_v2");
  }

  public final String a(h paramh, boolean paramBoolean, ArrayList<h> paramArrayList, String paramString)
  {
    while (true)
    {
      try
      {
        Iterator localIterator = paramArrayList.iterator();
        if (localIterator.hasNext())
        {
          h localh = (h)localIterator.next();
          if ((!localh.c.equals(paramh.c)) && (!localh.a.equals(paramh.a)))
            continue;
          paramArrayList.remove(localh);
          if (!paramBoolean)
            break label179;
          paramArrayList.add(paramh);
          break label179;
          if ((i == 0) && (paramBoolean))
            paramArrayList.add(paramh);
          paramh = a(paramArrayList);
          com.baidu.android.pushservice.h.a.b("ClientManager", "sync  strApps: " + paramh);
          paramh = b(paramh);
          n.a(this.c, this.c.getPackageName() + ".push_sync", paramString, paramh);
          return paramh;
        }
      }
      finally
      {
      }
      int i = 0;
      continue;
      label179: i = 1;
    }
  }

  public final void a(String paramString, g paramg)
  {
    this.d.put(paramString, paramg);
  }

  public final void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList;
    try
    {
      if (!TextUtils.isEmpty(paramString2))
      {
        localArrayList = h(a(paramString2));
        paramString2 = "";
        if ((b == null) || (localArrayList == null))
          break label101;
        if (!paramString1.equals("r_v2"))
          break label183;
        paramString2 = new ArrayList();
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
          paramString2.add(((h)localIterator.next()).c);
      }
    }
    finally
    {
    }
    com.baidu.android.pushservice.h.a.c("ClientManager", "ClientManager init strApps empty.");
    label101: return;
    int i = 0;
    while (true)
    {
      while (true)
      {
        if (i < b.a.size())
        {
          if (!paramString2.contains(((h)b.a.get(i)).c))
            break label239;
          b.a.remove(i);
          i -= 1;
          break label239;
        }
        b.a.addAll(localArrayList);
        paramString2 = a(b.a);
        try
        {
          label183: paramString2 = b(paramString2);
          n.a(this.c, this.c.getPackageName() + ".push_sync", paramString1, paramString2);
        }
        catch (Exception paramString1)
        {
          com.baidu.android.pushservice.h.a.e("ClientManager", paramString1.getMessage());
        }
      }
      break;
      label239: i += 1;
    }
  }

  public final String b(String paramString)
  {
    try
    {
      paramString = com.baidu.android.pushservice.j.b.a(com.baidu.android.pushservice.j.a.a("2011121211143000", "1234567890123456", paramString.getBytes()), "utf-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      com.baidu.android.pushservice.h.a.e("ClientManager", "encrypted init strApps exception.");
    }
    return "";
  }

  public final boolean b(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return false;
    return (this.d.containsKey(paramString1)) && (paramString2.equals(((g)this.d.get(paramString1)).a()));
  }

  public final h c(String paramString)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if (localh.c.equals(paramString))
        return localh;
    }
    return null;
  }

  public final h d(String paramString)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      if ((localh.a != null) && (localh.a.equals(paramString)))
        return localh;
    }
    return null;
  }

  public final String e(String paramString)
  {
    if (this.d.get(paramString) != null)
      return ((g)this.d.get(paramString)).b();
    return "";
  }

  public final void f(String paramString)
  {
    if (this.d.containsKey(paramString))
      this.d.remove(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.b
 * JD-Core Version:    0.6.2
 */