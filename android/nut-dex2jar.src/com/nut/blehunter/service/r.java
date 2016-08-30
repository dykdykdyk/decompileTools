package com.nut.blehunter.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.g;
import com.nut.blehunter.d.k;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.provider.h;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.u;
import com.umeng.analytics.b;
import java.lang.ref.WeakReference;
import java.util.Map;

final class r extends Handler
{
  private final WeakReference<NutTrackerService> a;

  public r(NutTrackerService paramNutTrackerService)
  {
    this.a = new WeakReference(paramNutTrackerService);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    NutTrackerService localNutTrackerService = (NutTrackerService)this.a.get();
    Object localObject;
    String str;
    Nut localNut;
    if (localNutTrackerService != null)
    {
      localObject = paramMessage.getData();
      if (localObject != null)
        break label109;
      str = null;
      if (i.b().a(str))
      {
        localNut = i.b().c(str);
        if (localNut == null);
      }
    }
    label109: int i;
    switch (paramMessage.what)
    {
    default:
    case 19:
    case 9:
      boolean bool;
      do
      {
        do
        {
          return;
          str = ((Bundle)localObject).getString("device_id");
          break;
        }
        while (!localNutTrackerService.a());
        if (localNut.y == 0)
        {
          if (!g.a(localNutTrackerService))
            break label233;
          localNutTrackerService.c.put(localNut.k, Boolean.valueOf(true));
        }
        while ((m.a().e()) || (k.c(localNutTrackerService)))
        {
          localNutTrackerService.a(localNut.j);
          b.a(localNutTrackerService, "disconnect");
          u.a("NTNutEvent", "NUT_DISCONNECTED", "DEVICEID", localNut.j);
          if ((!i.b().c()) || (localNutTrackerService.e))
            break;
          localNutTrackerService.e = true;
          localNutTrackerService.a(localNutTrackerService.getString(2131100006), false);
          return;
        }
        paramMessage = localNutTrackerService.a;
        str = localNut.j;
        if ((paramMessage.b == null) || (TextUtils.isEmpty(str)))
        {
          i = 0;
          if (i != 0)
            break label443;
          localNutTrackerService.a(localNut.D, localNut.u, false);
          localNutTrackerService.a.a(3, localNut.j);
          if (!NutTrackerApplication.b)
            break label445;
          paramMessage = localNutTrackerService.getString(2131100009, new Object[] { localNut.c });
          localNutTrackerService.a(localNutTrackerService.a(localNut.p) + paramMessage, localNut.I);
        }
        while (true)
        {
          b.a(localNutTrackerService, "disconnect_alert");
          localNutTrackerService.d.put(localNut.j, Long.valueOf(System.currentTimeMillis()));
          break;
          paramMessage = (Boolean)paramMessage.b.get(str);
          if ((paramMessage != null) && (paramMessage.booleanValue()))
          {
            i = 1;
            break label280;
          }
          i = 0;
          break label280;
          break;
          localNutTrackerService.a(2, localNut);
        }
        bool = ((Bundle)localObject).getBoolean("oauth_result", false);
        i = ((Bundle)localObject).getInt("previous_nut_status");
      }
      while (!bool);
      localNutTrackerService.b.b();
      if (localNut.y == 0)
      {
        if ((i != 2) && (i != 6))
          break label813;
        localNutTrackerService.b.c();
        if (!NutTrackerApplication.b)
          break label792;
        paramMessage = localNutTrackerService.getString(2131099834, new Object[] { localNut.c });
        localNutTrackerService.a(localNutTrackerService.a(localNut.p) + paramMessage, localNut.I);
      }
      do
      {
        do
          while (true)
          {
            h.b().d(localNut.k);
            paramMessage = new Bundle();
            paramMessage.putString("device_id", str);
            paramMessage.putBoolean("open_disconnect_alert", localNut.a(localNutTrackerService));
            localNutTrackerService.a(22, paramMessage);
            localNut.F = 0;
            localNut.G = 0;
            i.b().a(localNut, false);
            localNutTrackerService.c.put(localNut.k, Boolean.valueOf(false));
            localNutTrackerService.a(localNut.j);
            b.a(localNutTrackerService, "reconnect");
            u.a("NTNutEvent", "NUT_RECONNECTED", "DEVICEID", localNut.j);
            if (localNutTrackerService.d.get(localNut.j) != null)
            {
              long l = ((Long)localNutTrackerService.d.get(localNut.j)).longValue();
              if (System.currentTimeMillis() - l <= 10000L)
                b.a(localNutTrackerService, "reconnect_within_10_seconds");
            }
            if (i.b().c())
              break;
            localNutTrackerService.e = false;
            localNutTrackerService.a(localNutTrackerService.getString(2131100010), false);
            return;
            localNutTrackerService.b(localNut.I);
            localNutTrackerService.a(4, localNut);
          }
        while ((localNut.t != 1) || (g.a(localNutTrackerService)) || (k.c(localNutTrackerService)) || (m.a().e()));
        paramMessage = localNutTrackerService.a;
        localObject = localNut.j;
        if ((paramMessage.a != null) && (!TextUtils.isEmpty((CharSequence)localObject)))
          break label978;
        i = 0;
      }
      while (i != 0);
      localNutTrackerService.b.c();
      localNutTrackerService.a.a(1, localNut.j);
      if (NutTrackerApplication.b)
      {
        paramMessage = localNutTrackerService.getString(2131100008, new Object[] { localNut.c });
        localNutTrackerService.a(localNutTrackerService.a(localNut.p) + paramMessage, localNut.I);
      }
      while (true)
      {
        b.a(localNutTrackerService, "reconnect_alert");
        break;
        paramMessage = (Boolean)paramMessage.a.get(localObject);
        if ((paramMessage != null) && (paramMessage.booleanValue()))
        {
          i = 1;
          break label877;
        }
        i = 0;
        break label877;
        localNutTrackerService.b(localNut.I);
        localNutTrackerService.a(1, localNut);
      }
    case 12:
      label233: label877: int j = -75;
      label280: label443: label445: label978: int k = ((Bundle)localObject).getInt("rssi");
      label792: label813: paramMessage = j.b().a(localNut.p);
      i = j;
      if (paramMessage != null)
      {
        i = j;
        if (paramMessage.g != 0)
          i = paramMessage.g;
      }
      paramMessage = localNutTrackerService.a;
      str = localNut.j;
      if (k > i);
      for (i = 1; i != 0; i = 0)
      {
        paramMessage.b(1, str);
        paramMessage.b(2, str);
        paramMessage.b(3, str);
        return;
      }
    case 21:
    }
    localNutTrackerService.a(0, 10, true);
    b.a(localNutTrackerService, "call_the_phone");
    if (NutTrackerApplication.b)
    {
      paramMessage = localNutTrackerService.getString(2131099813, new Object[] { localNut.c });
      localNutTrackerService.a(localNutTrackerService.a(localNut.p) + paramMessage, localNut.I);
      return;
    }
    localNutTrackerService.a(6, localNut);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.r
 * JD-Core Version:    0.6.2
 */