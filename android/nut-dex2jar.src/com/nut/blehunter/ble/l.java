package com.nut.blehunter.ble;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import b.a.a;
import com.nut.blehunter.d.g;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.WechatIdentifier;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.provider.k;
import com.nut.blehunter.service.NutTrackerService;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class l extends Handler
{
  private final WeakReference<BLEService> a;

  public l(BLEService paramBLEService)
  {
    this.a = new WeakReference(paramBLEService);
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool2 = true;
    int k = 1;
    boolean bool3 = true;
    boolean bool1 = true;
    int j = 0;
    super.handleMessage(paramMessage);
    BLEService localBLEService = (BLEService)this.a.get();
    Object localObject2;
    Object localObject1;
    if (localBLEService != null)
    {
      localObject2 = paramMessage.getData();
      if (localObject2 != null)
        break label237;
      localObject1 = null;
    }
    label237: int i;
    label448: label751: Nut localNut;
    switch (paramMessage.what)
    {
    case 5:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 18:
    case 19:
    case 20:
    case 21:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 31:
    case 37:
    case 40:
    case 41:
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 10:
    case 14:
    case 15:
    case 16:
      label659: 
      do
      {
        do
        {
          do
            while (true)
            {
              return;
              localObject1 = ((Bundle)localObject2).getString("device_id");
              break;
              localBLEService.c.add(paramMessage.replyTo);
              return;
              localBLEService.c.remove(paramMessage.replyTo);
              return;
              localBLEService.b();
              localBLEService.e();
              j = localBLEService.b.size();
              i = 0;
              while (i < j)
              {
                ((ScheduledFuture)localBLEService.b.c(i)).cancel(true);
                i += 1;
              }
              localBLEService.b.clear();
              localBLEService.g = 0;
              localBLEService.h = false;
              localBLEService.getSharedPreferences("ble", 0).edit().clear().commit();
              return;
              if (localObject2 == null)
              {
                i = 0;
                if (localObject2 != null)
                  break label448;
              }
              while (true)
              {
                localBLEService.j = j;
                o.a(localBLEService, "connect_type", localBLEService.j);
                localBLEService.b();
                o.a(localBLEService, "manually_scan", true);
                localBLEService.h = true;
                localBLEService.a(i);
                return;
                i = ((Bundle)localObject2).getInt("scan_period");
                break;
                j = ((Bundle)localObject2).getInt("bind_type", 0);
              }
              if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("is_activation", false)));
              while (true)
              {
                localBLEService.i = bool1;
                if (localBLEService.h)
                  break;
                localBLEService.a();
                return;
                bool1 = false;
              }
              localBLEService.d();
              localBLEService.g = 2;
              if (k.b().c() != null)
              {
                localBLEService.a();
                return;
                if (!TextUtils.isEmpty((CharSequence)localObject1))
                {
                  if (localBLEService.e == null)
                  {
                    localBLEService.e = new r(localBLEService, localBLEService.d.getRemoteDevice(com.nut.blehunter.d.o.b(Long.parseLong((String)localObject1))), false, localBLEService, o.a(localBLEService, "current_product_id"));
                    localBLEService.a(localBLEService.e);
                    return;
                  }
                  paramMessage = (ag)localBLEService.e.f;
                  if (paramMessage == null)
                  {
                    localBLEService.a(localBLEService.e);
                    return;
                  }
                  paramMessage.a(new f(localBLEService, (String)localObject1));
                  return;
                  if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("call", true)))
                  {
                    bool1 = true;
                    if (!TextUtils.isEmpty((CharSequence)localObject1))
                    {
                      paramMessage = (r)localBLEService.a.get(localObject1);
                      if (paramMessage == null)
                        continue;
                      localObject1 = paramMessage.a(aj.k, aj.m);
                      if (localObject1 == null)
                        continue;
                      if (!bool1)
                        break label751;
                    }
                  }
                  else
                  {
                    for (byte b = 4; ; b = 5)
                    {
                      r.a((BluetoothGattCharacteristic)localObject1, b);
                      paramMessage.b.writeCharacteristic((BluetoothGattCharacteristic)localObject1);
                      paramMessage.a("Device Immediate Alert value=%s", new Object[] { Boolean.valueOf(bool1) });
                      return;
                      bool1 = false;
                      break label659;
                      break;
                    }
                    paramMessage = i.b().h();
                    if ((paramMessage != null) && (paramMessage.size() != 0))
                    {
                      paramMessage = paramMessage.iterator();
                      while (paramMessage.hasNext())
                      {
                        localObject1 = (Nut)paramMessage.next();
                        if ((!TextUtils.isEmpty(((Nut)localObject1).j)) && (!localBLEService.a.containsKey(((Nut)localObject1).j)))
                        {
                          localObject2 = new r(localBLEService, localBLEService.d.getRemoteDevice(com.nut.blehunter.d.o.b(Long.parseLong(((Nut)localObject1).j))), true, localBLEService, ((Nut)localObject1).p);
                          ((r)localObject2).q = true;
                          localBLEService.a.put(((Nut)localObject1).j, localObject2);
                        }
                      }
                    }
                  }
                }
              }
            }
          while (localObject2 == null);
          localObject1 = (BluetoothDevice)((Bundle)localObject2).getParcelable("device");
          i = ((Bundle)localObject2).getInt("rssi");
          j = ((Bundle)localObject2).getInt("device_name");
          bool1 = ((Bundle)localObject2).getBoolean("dfu_mode", false);
        }
        while (localObject1 == null);
        localObject2 = com.nut.blehunter.d.o.a(((BluetoothDevice)localObject1).getAddress());
        localNut = i.b().c((String)localObject2);
        if (!bool1)
          break label1032;
      }
      while ((localNut == null) || (localNut.K == 7));
      i.b().h((String)localObject2);
      paramMessage = Message.obtain(null, 30);
      localObject1 = new Bundle();
      ((Bundle)localObject1).putString("device_id", (String)localObject2);
      paramMessage.setData((Bundle)localObject1);
      localBLEService.a(paramMessage);
      return;
      label1032: if (localNut == null)
      {
        if (localBLEService.h)
        {
          paramMessage = BLEService.c(null, 16);
          localObject2 = paramMessage.getData();
          ((Bundle)localObject2).putParcelable("device", (Parcelable)localObject1);
          ((Bundle)localObject2).putInt("rssi", i);
          ((Bundle)localObject2).putInt("device_name", j);
          localBLEService.a(paramMessage);
          return;
        }
        paramMessage = new Intent(localBLEService, NutTrackerService.class);
        paramMessage.setAction("com.nutspace.action.handle.location");
        paramMessage.putExtra("device", (Parcelable)localObject1);
        paramMessage.putExtra("intent_type", 1);
        localBLEService.startService(paramMessage);
        return;
      }
      paramMessage = (ScheduledFuture)localBLEService.b.get(localObject2);
      if (paramMessage != null)
      {
        paramMessage.cancel(true);
        localBLEService.b.remove(localObject2);
      }
      if (localNut.K == 7)
      {
        localNut.K = 0;
        i.b().a(localNut, true);
      }
      paramMessage = (r)localBLEService.a.get(localObject2);
      if (paramMessage == null)
      {
        paramMessage = new r(localBLEService, (BluetoothDevice)localObject1, true, localBLEService, j);
        localBLEService.a.put(localObject2, paramMessage);
      }
      break;
    case 17:
    case 22:
    case 23:
    case 24:
    case 29:
    case 38:
    case 39:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 42:
    }
    while (((localNut.y != 1) || (paramMessage.r)) && (!localBLEService.h))
    {
      localBLEService.b();
      paramMessage.p = j;
      if (paramMessage.w)
      {
        localObject1 = j.b().a(j);
        if (localObject1 != null)
        {
          paramMessage.v = ((com.nut.blehunter.entity.r)localObject1).j;
          paramMessage.w = false;
        }
      }
      localBLEService.a(paramMessage);
      return;
      if ((localObject2 == null) || (((Bundle)localObject2).getBoolean("is_reset", true)));
      for (i = 1; !TextUtils.isEmpty((CharSequence)localObject1); i = 0)
      {
        if (i == 0)
          break label1459;
        paramMessage = (r)localBLEService.a.get(localObject1);
        if (paramMessage == null)
          break;
        paramMessage.d = new h(localBLEService);
        if ((paramMessage.f == null) || (!(paramMessage.f instanceof ag)))
          break;
        localObject1 = (ag)paramMessage.f;
        ((ag)localObject1).c = true;
        if ((((ag)localObject1).a((byte)4, d.a())) || (paramMessage.d == null))
          break;
        paramMessage.d.a(paramMessage, false);
        return;
      }
      label1459: paramMessage = (r)localBLEService.a.get(localObject1);
      if (paramMessage == null)
        break;
      paramMessage.a(true);
      localBLEService.a.remove(paramMessage);
      return;
      if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("open_disconnect_alert", false)));
      for (bool1 = bool2; !TextUtils.isEmpty((CharSequence)localObject1); bool1 = false)
      {
        paramMessage = (r)localBLEService.a.get(localObject1);
        if (paramMessage == null)
          break;
        paramMessage.b(bool1);
        return;
      }
      if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("shutdown", false)))
      {
        i = 1;
        label1572: if ((localObject2 == null) || (!((Bundle)localObject2).getBoolean("close_manually_scan", true)))
          break label1650;
        j = k;
        label1593: if (j != 0)
          localBLEService.d();
        a.b("abort bind device", new Object[0]);
        if (localBLEService.e == null)
          break;
        if (i == 0)
          break label1656;
        localBLEService.e.b();
      }
      while (j != 0)
      {
        localBLEService.e = null;
        return;
        i = 0;
        break label1572;
        label1650: j = 0;
        break label1593;
        label1656: localBLEService.e.a(false);
      }
      if (localObject2 == null)
        break;
      localBLEService.e = new r(localBLEService, (BluetoothDevice)((Bundle)localObject2).getParcelable("device"), false, localBLEService, ((Bundle)localObject2).getInt("device_name"));
      localBLEService.a(false);
      localBLEService.a(localBLEService.e);
      return;
      if (TextUtils.isEmpty((CharSequence)localObject1))
        break;
      paramMessage = (r)localBLEService.a.get(localObject1);
      if ((paramMessage == null) || (paramMessage.f == null))
        break;
      ((ag)paramMessage.f).a(localBLEService);
      return;
      if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("look_for_canceled", false)));
      for (bool1 = bool3; ; bool1 = false)
      {
        localBLEService.b(bool1);
        return;
      }
      if (TextUtils.isEmpty((CharSequence)localObject1))
        break;
      paramMessage = new r(localBLEService, localBLEService.d.getRemoteDevice(com.nut.blehunter.d.o.b(Long.parseLong((String)localObject1))), true, localBLEService, i.b().c((String)localObject1).p);
      paramMessage.q = true;
      localBLEService.a.put(localObject1, paramMessage);
      return;
      if (TextUtils.isEmpty((CharSequence)localObject1))
        break;
      paramMessage = (r)localBLEService.a.get(localObject1);
      if (paramMessage == null)
        break;
      localObject1 = i.b().c((String)localObject1);
      if ((localObject1 == null) || (((Nut)localObject1).q == null))
        break;
      paramMessage.a(((Nut)localObject1).q.a, ((Nut)localObject1).q.b, ((Nut)localObject1).q.c);
      return;
      localBLEService.a(true);
      if (localBLEService.h)
        break;
      localBLEService.c();
      if (localBLEService.i)
        i = 3000;
      while (true)
      {
        a.b("schedule next scan after %s", new Object[] { Integer.valueOf(i) });
        if (localBLEService.k == null)
          break;
        localBLEService.l = localBLEService.k.schedule(localBLEService.f, i, TimeUnit.MILLISECONDS);
        return;
        if (i.b().c())
        {
          if (g.c(localBLEService))
            i = 12000;
          else
            i = 3000;
        }
        else
          i = 60000;
      }
      localBLEService.a(9000);
      return;
      localBLEService.b.remove(localObject1);
      paramMessage = (r)localBLEService.a.get(localObject1);
      if ((paramMessage == null) || (paramMessage.m != 0) || (paramMessage.q))
        break;
      paramMessage.o = false;
      paramMessage.q = true;
      localBLEService.a(BLEService.c(paramMessage, 19));
      return;
      localBLEService.b();
      return;
      paramMessage = (r)localBLEService.a.get(localObject1);
      if (paramMessage == null)
        break;
      paramMessage.e = localBLEService;
      paramMessage.a(new byte[] { 28 });
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.l
 * JD-Core Version:    0.6.2
 */