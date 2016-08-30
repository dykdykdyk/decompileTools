package com.amap.api.services.nearby;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.i;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import com.amap.api.services.core.u;
import com.amap.api.services.core.v;
import com.amap.api.services.core.w;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NearbySearch
{
  public static final int AMAP = 1;
  public static final int GPS = 0;
  private static NearbySearch a;
  private static long f = 0L;
  private List<NearbySearch.NearbyListener> b = new ArrayList();
  private String c;
  private Context d;
  private t e;
  private ExecutorService g;
  private LatLonPoint h = null;
  private String i = null;
  private boolean j = false;
  private Timer k = new Timer();
  private UploadInfoCallback l;
  private TimerTask m;

  private NearbySearch(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
    this.e = t.a();
  }

  private int a(UploadInfo paramUploadInfo)
  {
    if (this.j)
      return 2200;
    return b(paramUploadInfo);
  }

  private boolean a(String paramString)
  {
    return Pattern.compile("^[a-z0-9A-Z_-]{1,32}$").matcher(paramString).find();
  }

  private int b()
    throws AMapException
  {
    try
    {
      if (this.j)
        throw new AMapException("已开启自动上传");
    }
    catch (AMapException localAMapException)
    {
      throw localAMapException;
      if (!a(this.c))
        throw new AMapException("USERID非法");
    }
    catch (Throwable localThrowable)
    {
      throw new AMapException("未知错误");
    }
    q.a(this.d);
    int n = ((Integer)new u(this.d, this.c).a()).intValue();
    return n;
  }

  private int b(UploadInfo paramUploadInfo)
  {
    int i1 = 2201;
    int n;
    try
    {
      q.a(this.d);
      if (paramUploadInfo == null)
        return 2202;
      long l1 = new Date().getTime();
      if (l1 - f < 6500L)
        return 2203;
      f = l1;
      Object localObject = paramUploadInfo.getUserID();
      n = i1;
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        n = i1;
        if (a((String)localObject))
        {
          if (TextUtils.isEmpty(this.i))
            this.i = ((String)localObject);
          n = i1;
          if (((String)localObject).equals(this.i))
          {
            localObject = paramUploadInfo.getPoint();
            if ((localObject == null) || (((LatLonPoint)localObject).equals(this.h)))
              break label176;
            new w(this.d, paramUploadInfo).a();
            this.h = ((LatLonPoint)localObject);
            return 1000;
          }
        }
      }
    }
    catch (AMapException paramUploadInfo)
    {
      return paramUploadInfo.getErrorCode();
    }
    catch (Throwable paramUploadInfo)
    {
      n = 1900;
    }
    return n;
    label176: return 2204;
  }

  private void c()
  {
    this.k.cancel();
  }

  public static void destroy()
  {
    try
    {
      NearbySearch localNearbySearch = a;
      if (localNearbySearch != null);
      try
      {
        a.c();
        a = null;
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          i.a(localThrowable, "NearbySearch", "destryoy");
      }
    }
    finally
    {
    }
  }

  public static NearbySearch getInstance(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new NearbySearch(paramContext);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public void addNearbyListener(NearbySearch.NearbyListener paramNearbyListener)
  {
    try
    {
      this.b.add(paramNearbyListener);
      return;
    }
    catch (Throwable paramNearbyListener)
    {
      while (true)
        i.a(paramNearbyListener, "NearbySearch", "addNearbyListener");
    }
    finally
    {
    }
    throw paramNearbyListener;
  }

  public void clearUserInfoAsyn()
  {
    new NearbySearch.1(this).start();
  }

  public void removeNearbyListener(NearbySearch.NearbyListener paramNearbyListener)
  {
    if (paramNearbyListener == null);
    while (true)
    {
      return;
      try
      {
        this.b.remove(paramNearbyListener);
      }
      catch (Throwable paramNearbyListener)
      {
        i.a(paramNearbyListener, "NearbySearch", "removeNearbyListener");
      }
      finally
      {
      }
    }
    throw paramNearbyListener;
  }

  public NearbySearchResult searchNearbyInfo(NearbySearch.NearbyQuery paramNearbyQuery)
    throws AMapException
  {
    try
    {
      q.a(this.d);
      paramNearbyQuery = (NearbySearchResult)new v(this.d, paramNearbyQuery).a();
      return paramNearbyQuery;
    }
    catch (AMapException paramNearbyQuery)
    {
      throw paramNearbyQuery;
    }
    catch (Throwable paramNearbyQuery)
    {
      i.a(paramNearbyQuery, "NearbySearch", "searchNearbyInfo");
    }
    throw new AMapException("未知错误");
  }

  public void searchNearbyInfoAsyn(NearbySearch.NearbyQuery paramNearbyQuery)
  {
    new NearbySearch.3(this, paramNearbyQuery).start();
  }

  public void setUserID(String paramString)
  {
    this.c = paramString;
  }

  public void startUploadNearbyInfoAuto(UploadInfoCallback paramUploadInfoCallback, int paramInt)
  {
    int n = paramInt;
    if (paramInt < 7000)
      n = 7000;
    try
    {
      this.l = paramUploadInfoCallback;
      if ((this.j) && (this.m != null))
        this.m.cancel();
      this.j = true;
      this.m = new NearbySearch.a(null);
      this.k.schedule(this.m, 0L, n);
      return;
    }
    catch (Throwable paramUploadInfoCallback)
    {
      while (true)
        i.a(paramUploadInfoCallback, "NearbySearch", "startUploadNearbyInfoAuto");
    }
    finally
    {
    }
    throw paramUploadInfoCallback;
  }

  public void stopUploadNearbyInfoAuto()
  {
    try
    {
      if (this.m != null)
        this.m.cancel();
      this.j = false;
      this.m = null;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        i.a(localThrowable, "NearbySearch", "stopUploadNearbyInfoAuto");
    }
    finally
    {
    }
  }

  public void uploadNearbyInfoAsyn(UploadInfo paramUploadInfo)
  {
    if (this.g == null)
      this.g = Executors.newSingleThreadExecutor();
    this.g.submit(new NearbySearch.2(this, paramUploadInfo));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch
 * JD-Core Version:    0.6.2
 */