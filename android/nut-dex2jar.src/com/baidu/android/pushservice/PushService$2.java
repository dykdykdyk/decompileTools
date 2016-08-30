package com.baidu.android.pushservice;

import android.os.RemoteException;
import android.text.TextUtils;
import com.baidu.android.pushservice.b.a.a;
import com.baidu.android.pushservice.g.d;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

class PushService$2 extends a.a
{
  PushService$2(PushService paramPushService)
  {
  }

  public int a(String paramString, int paramInt)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getUnreadMsgNumber from PushService, appid=" + paramString + " type=" + paramInt);
    return d.a(this.a).a(paramInt, paramString, null);
  }

  public String a()
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getSubcribedApps from PushService");
    return d.a(this.a).a(null);
  }

  public String a(String paramString)
    throws RemoteException
  {
    Object localObject = null;
    com.baidu.android.pushservice.h.a.c("PushService", "getSubscribedAppinfos from PushService, appids=" + paramString);
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
      try
      {
        paramString = new JSONArray(paramString);
        int i = 0;
        while (i < paramString.length())
        {
          localArrayList.add(paramString.getInt(i));
          i += 1;
        }
      }
      catch (JSONException paramString)
      {
        com.baidu.android.pushservice.h.a.e("PushService", "error " + paramString.getMessage());
      }
    paramString = localObject;
    if (localArrayList.size() > 0)
      paramString = d.a(this.a).a(localArrayList, null);
    return paramString;
  }

  public String a(String paramString, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getMsgs from PushService, appid=" + paramString + " type=" + paramInt1 + " unreadOnly=" + paramBoolean + " start=" + paramInt2 + " limit=" + paramInt3);
    return d.a(this.a).a(paramString, paramInt1, paramBoolean, paramInt2, paramInt3, null);
  }

  public void a(String paramString1, String paramString2, com.baidu.android.pushservice.b.b paramb)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "unsubscribeLight from PushService, appid=" + paramString1 + " channel=" + paramString2);
    paramb = new com.baidu.android.pushservice.g.b(paramb);
    d.a(this.a).a(paramString1, paramString2, paramb);
  }

  public void a(String paramString1, String paramString2, boolean paramBoolean, com.baidu.android.pushservice.b.b paramb)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "subscribeLight from PushService, appid=" + paramString1 + " channel=" + paramString2);
    paramb = new com.baidu.android.pushservice.g.b(paramb);
    d.a(this.a).a(paramString1, paramString2, paramBoolean, paramb);
  }

  public void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3, com.baidu.android.pushservice.b.b paramb)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "subscribeLight from PushService, appidOrApikey=" + paramString1 + " channel=" + paramString2);
    paramb = new com.baidu.android.pushservice.g.b(paramb);
    d.a(this.a).a(paramString1, paramString2, paramBoolean, paramString3, paramb);
  }

  public boolean a(String paramString1, String paramString2)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "register from PushService, channel=" + paramString1 + " packageName=" + paramString2);
    return d.a(this.a).a(paramString1, paramString2);
  }

  public boolean a(String paramString1, String paramString2, int paramInt)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "updateBlacklist from PushService, packageName=" + paramString1 + " appid=" + paramString2 + " type" + paramInt);
    return d.a(this.a).a(paramString1, paramString2, paramInt);
  }

  public boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "register from PushService, channel=" + paramString1 + " packageName=" + paramString2 + " hostName= " + paramString3 + " hostVersion= " + paramString4);
    return d.a(this.a).b(paramString1, paramString2, paramString3, paramString4);
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    com.baidu.android.pushservice.h.a.c("PushService", "setNotifySwitch from PushService, pkgName=" + paramString + " on=" + paramBoolean);
    return d.a(this.a).a(paramString, paramBoolean);
  }

  public int b(String paramString)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "setMsgRead from PushService, msgids=" + paramString);
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
      try
      {
        paramString = new JSONArray(paramString);
        int i = 0;
        while (i < paramString.length())
        {
          localArrayList.add(paramString.getString(i));
          i += 1;
        }
      }
      catch (JSONException paramString)
      {
        com.baidu.android.pushservice.h.a.e("PushService", "error " + paramString.getMessage());
      }
    if (localArrayList.size() > 0)
      return d.a(this.a).b(localArrayList, null);
    return -1;
  }

  public int b(String paramString, int paramInt)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "setMsgRead from PushService, appid=" + paramString + " type=" + paramInt);
    return d.a(this.a).b(paramInt, paramString, null);
  }

  public String b()
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getSubscribedAppids from PushService");
    return d.a(this.a).b(null);
  }

  public void b(String paramString1, String paramString2, com.baidu.android.pushservice.b.b paramb)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "unbindlight from PushService, appid=" + paramString1 + " channel=" + paramString2);
    paramb = new com.baidu.android.pushservice.g.b(paramb);
    d.a(this.a).b(paramString1, paramString2, paramb);
  }

  public boolean b(String paramString1, String paramString2)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "removeBlacklist from PushService, packageName=" + paramString1 + " appid=" + paramString2);
    return d.a(this.a).b(paramString1, paramString2);
  }

  public int c()
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getPushVersion " + a.a());
    return a.a();
  }

  public int c(String paramString)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "deleteMsg from PushService, msgids=" + paramString);
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
      try
      {
        paramString = new JSONArray(paramString);
        int i = 0;
        while (i < paramString.length())
        {
          localArrayList.add(paramString.getString(i));
          i += 1;
        }
      }
      catch (JSONException paramString)
      {
        com.baidu.android.pushservice.h.a.e("PushService", "error " + paramString.getMessage());
      }
    if (localArrayList.size() > 0)
      return d.a(this.a).c(localArrayList, null);
    return -1;
  }

  public int c(String paramString, int paramInt)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "deleteAllMsg from PushService, appid=" + paramString + " type=" + paramInt);
    return d.a(this.a).c(paramInt, paramString, null);
  }

  public int d(String paramString)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "getNewMsgNum from PushService, packageName=" + paramString);
    return d.a(this.a).c(paramString);
  }

  public boolean e(String paramString)
    throws RemoteException
  {
    com.baidu.android.pushservice.h.a.c("PushService", "clearNewMsgNum from PushService, packageName=" + paramString);
    return d.a(this.a).d(paramString);
  }

  public String f(String paramString)
    throws RemoteException
  {
    return d.a(this.a).g(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushService.2
 * JD-Core Version:    0.6.2
 */