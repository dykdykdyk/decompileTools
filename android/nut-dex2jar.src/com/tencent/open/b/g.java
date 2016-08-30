package com.tencent.open.b;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.tencent.open.utils.p;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class g
{
  protected static g a;
  protected Random b = new Random();
  protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
  protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
  protected HandlerThread e = null;
  protected Handler f;
  protected Executor g = p.a();
  protected Executor h = p.a();

  private g()
  {
    if (this.e == null)
    {
      this.e = new HandlerThread("opensdk.report.handlerthread", 10);
      this.e.start();
    }
    if ((this.e.isAlive()) && (this.e.getLooper() != null))
      this.f = new h(this, this.e.getLooper());
  }

  protected static int a(int paramInt)
  {
    int i;
    if (paramInt == 0)
    {
      i = com.tencent.open.utils.l.a(com.tencent.open.utils.g.a(), null).a("Common_CGIReportFrequencySuccess");
      paramInt = i;
      if (i == 0)
        paramInt = 10;
    }
    do
    {
      return paramInt;
      i = com.tencent.open.utils.l.a(com.tencent.open.utils.g.a(), null).a("Common_CGIReportFrequencyFailed");
      paramInt = i;
    }
    while (i != 0);
    return 100;
  }

  public static g a()
  {
    try
    {
      if (a == null)
        a = new g();
      g localg = a;
      return localg;
    }
    finally
    {
    }
  }

  protected static boolean a(String paramString, int paramInt)
  {
    int i = 5;
    boolean bool = false;
    int j;
    if (paramString.equals("report_cgi"))
    {
      j = com.tencent.open.utils.l.a(com.tencent.open.utils.g.a(), null).a("Common_CGIReportMaxcount");
      if (j != 0);
    }
    while (true)
    {
      com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->availableCount, report: " + paramString + " | dataSize: " + paramInt + " | maxcount: " + i);
      if (paramInt >= i)
        bool = true;
      return bool;
      i = j;
      continue;
      if (paramString.equals("report_via"))
      {
        j = com.tencent.open.utils.l.a(com.tencent.open.utils.g.a(), null).a("Agent_ReportBatchCount");
        if (j != 0)
          i = j;
      }
      else
      {
        i = 0;
      }
    }
  }

  private boolean a(String paramString1, String paramString2)
  {
    com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + paramString1 + " | ext: " + paramString2);
    if (TextUtils.isEmpty(paramString1))
      return false;
    if (paramString1.equals("report_cgi"));
    while (true)
    {
      try
      {
        i = Integer.parseInt(paramString2);
        i = a(i);
        if (this.b.nextInt(100) < i)
        {
          bool = true;
          com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + bool + " | frequency: " + i);
          return bool;
        }
        bool = false;
        continue;
        if (paramString1.equals("report_via"))
        {
          int j = com.tencent.open.utils.l.a(com.tencent.open.utils.g.a(), paramString2).a("Common_BusinessReportFrequency");
          i = j;
          if (j == 0)
            i = 100;
          if (this.b.nextInt(100) < i)
          {
            bool = true;
            continue;
          }
          bool = false;
          continue;
        }
      }
      catch (Exception paramString1)
      {
        return false;
      }
      int i = 100;
      boolean bool = false;
    }
  }

  public final void a(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null);
    do
    {
      return;
      com.tencent.open.a.h.a("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + paramBundle.toString());
    }
    while (!a("report_via", paramString));
    this.g.execute(new i(this, paramBundle));
  }

  public final void a(String paramString, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    a(paramString, paramLong1, paramLong2, paramLong3, paramInt, "");
  }

  public final void a(String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2)
  {
    com.tencent.open.a.h.a("openSDK_LOG.ReportManager", "-->reportCgi, command: " + paramString1 + " | startTime: " + paramLong1 + " | reqSize:" + paramLong2 + " | rspSize: " + paramLong3 + " | responseCode: " + paramInt + " | detail: " + paramString2);
    if (!a("report_cgi", String.valueOf(paramInt)))
      return;
    this.h.execute(new j(this, paramLong1, paramString1, paramString2, paramInt, paramLong2, paramLong3));
  }

  protected final void b()
  {
    this.h.execute(new k(this));
  }

  protected final Bundle c()
  {
    if (this.c.size() == 0)
      return null;
    Object localObject1 = (b)this.c.get(0);
    if (localObject1 == null)
    {
      com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
      return null;
    }
    Object localObject2 = (String)((b)localObject1).a.get("appid");
    localObject1 = f.a().a("report_cgi");
    if (localObject1 != null)
      this.c.addAll((Collection)localObject1);
    com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
    if (this.c.size() == 0)
      return null;
    localObject1 = new Bundle();
    try
    {
      ((Bundle)localObject1).putString("appid", (String)localObject2);
      ((Bundle)localObject1).putString("releaseversion", "OpenSdk_2.9.4.lite");
      ((Bundle)localObject1).putString("device", Build.DEVICE);
      ((Bundle)localObject1).putString("qua", "V1_AND_OpenSDK_2.9.4.lite_1077_RDM_B");
      ((Bundle)localObject1).putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
      int i = 0;
      while (i < this.c.size())
      {
        localObject2 = (b)this.c.get(i);
        ((Bundle)localObject1).putString(i + "_1", (String)((b)localObject2).a.get("apn"));
        ((Bundle)localObject1).putString(i + "_2", (String)((b)localObject2).a.get("frequency"));
        ((Bundle)localObject1).putString(i + "_3", (String)((b)localObject2).a.get("commandid"));
        ((Bundle)localObject1).putString(i + "_4", (String)((b)localObject2).a.get("resultCode"));
        ((Bundle)localObject1).putString(i + "_5", (String)((b)localObject2).a.get("timeCost"));
        ((Bundle)localObject1).putString(i + "_6", (String)((b)localObject2).a.get("reqSize"));
        ((Bundle)localObject1).putString(i + "_7", (String)((b)localObject2).a.get("rspSize"));
        ((Bundle)localObject1).putString(i + "_8", (String)((b)localObject2).a.get("detail"));
        ((Bundle)localObject1).putString(i + "_9", (String)((b)localObject2).a.get("uin"));
        localObject2 = c.e(com.tencent.open.utils.g.a()) + "&" + (String)((b)localObject2).a.get("deviceInfo");
        ((Bundle)localObject1).putString(i + "_10", (String)localObject2);
        i += 1;
      }
    }
    catch (Exception localException)
    {
      com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", localException);
      return null;
    }
    com.tencent.open.a.h.a("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + localException.toString());
    return localException;
  }

  protected final Bundle d()
  {
    Object localObject1 = f.a().a("report_via");
    if (localObject1 != null)
      this.d.addAll((Collection)localObject1);
    com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.d.size());
    if (this.d.size() == 0)
      return null;
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator1 = this.d.iterator();
    while (localIterator1.hasNext())
    {
      localObject1 = (Serializable)localIterator1.next();
      JSONObject localJSONObject = new JSONObject();
      b localb = (b)localObject1;
      Iterator localIterator2 = localb.a.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        try
        {
          localObject2 = (String)localb.a.get(str);
          localObject1 = localObject2;
          if (localObject2 == null)
            localObject1 = "";
          localJSONObject.put(str, localObject1);
        }
        catch (JSONException localJSONException1)
        {
          com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", localJSONException1);
        }
      }
      localJSONArray.put(localJSONObject);
    }
    com.tencent.open.a.h.a("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + localJSONArray.toString());
    Bundle localBundle = new Bundle();
    Object localObject2 = new JSONObject();
    try
    {
      ((JSONObject)localObject2).put("data", localJSONArray);
      localBundle.putString("data", ((JSONObject)localObject2).toString());
      return localBundle;
    }
    catch (JSONException localJSONException2)
    {
      com.tencent.open.a.h.b("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", localJSONException2);
    }
    return null;
  }

  protected final void e()
  {
    this.g.execute(new l(this));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.g
 * JD-Core Version:    0.6.2
 */