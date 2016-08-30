package com.nut.blehunter.ui;

import android.support.v7.widget.dt;
import android.text.TextUtils;
import android.view.LayoutInflater;
import com.nut.blehunter.entity.d;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.entity.u;
import com.nut.blehunter.provider.j;
import java.util.ArrayList;
import java.util.Iterator;

final class ea extends dt<eb>
{
  ArrayList<u> c = new ArrayList();
  private final LayoutInflater e;

  public ea(ScanDeviceActivity paramScanDeviceActivity)
  {
    this.e = LayoutInflater.from(paramScanDeviceActivity);
  }

  public static String c(int paramInt)
  {
    Object localObject1 = j.b();
    Object localObject2 = "";
    r localr = ((j)localObject1).a(paramInt);
    localObject1 = localObject2;
    if (localr != null)
    {
      localObject1 = localObject2;
      if (localr.b != null)
      {
        localObject1 = localObject2;
        if (!TextUtils.isEmpty(localr.b.a))
          localObject1 = localr.b.a;
      }
    }
    localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject2 = j.b();
      localObject1 = "";
      localr = ((j)localObject2).a(paramInt);
      localObject2 = localObject1;
      if (localr != null)
      {
        localObject2 = localObject1;
        if (localr.b != null)
          localObject2 = localr.b.c;
      }
    }
    return localObject2;
  }

  public static String d(int paramInt)
  {
    String str2 = "";
    r localr = j.b().a(paramInt);
    String str1 = str2;
    if (localr != null)
    {
      str1 = str2;
      if (localr.b != null)
        str1 = localr.b.e;
    }
    return str1;
  }

  public final long a(int paramInt)
  {
    return ((u)this.c.get(paramInt)).hashCode();
  }

  public final int b()
  {
    if (this.c == null)
      return 0;
    return this.c.size();
  }

  final void c()
  {
    long l = System.currentTimeMillis();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      u localu = (u)localIterator.next();
      if ((l - localu.d > 10000L) && (localu.b != 0))
      {
        localu.b = 0;
        b(this.c.indexOf(localu));
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ea
 * JD-Core Version:    0.6.2
 */