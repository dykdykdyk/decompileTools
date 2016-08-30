package com.nut.blehunter.ble;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import b.a.a;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.WechatIdentifier;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class BLEService extends Service
  implements ab, ad, p, t, x
{
  android.support.v4.f.r<String, r> a = new android.support.v4.f.r(6);
  android.support.v4.f.r<String, ScheduledFuture> b = new android.support.v4.f.r(6);
  List<Messenger> c = new LinkedList();
  BluetoothAdapter d;
  r e;
  m f;
  int g = 0;
  boolean h = false;
  boolean i = false;
  int j = 0;
  ScheduledExecutorService k = Executors.newScheduledThreadPool(8);
  ScheduledFuture l;
  private l m;
  private Messenger n;
  private n o;
  private ae p;
  private ScheduledFuture q;
  private final BluetoothAdapter.LeScanCallback r = new e(this);

  private static void a(Nut paramNut, r paramr, int paramInt)
  {
    if ((paramNut != null) && (paramNut.K != paramInt))
    {
      paramNut.K = paramInt;
      paramNut.p = paramr.p;
      if (!TextUtils.isEmpty(paramr.i))
        paramNut.w = paramr.i;
      if (!TextUtils.isEmpty(paramr.j))
        paramNut.v = paramr.j;
      if (!TextUtils.isEmpty(paramr.k))
        paramNut.x = paramr.k;
      com.nut.blehunter.provider.i.b().a(paramNut, true);
    }
  }

  private static boolean a(Messenger paramMessenger, Message paramMessage)
  {
    a.a("service send message %s", new Object[] { Integer.valueOf(paramMessage.what) });
    try
    {
      paramMessenger.send(paramMessage);
      return true;
    }
    catch (RemoteException paramMessenger)
    {
      a.d("send message to client exception %s", new Object[] { paramMessenger.getMessage() });
    }
    return false;
  }

  static Message c(r paramr, int paramInt)
  {
    Message localMessage = Message.obtain(null, paramInt);
    Bundle localBundle = new Bundle();
    if (paramr != null)
      localBundle.putString("device_id", com.nut.blehunter.d.o.a(paramr.a.getAddress()));
    localMessage.setData(localBundle);
    return localMessage;
  }

  private void e(r paramr)
  {
    paramr.c = new j(this, paramr);
    if ((paramr.m == 0) || (paramr.b == null))
      return;
    paramr.h = paramr.x.scheduleWithFixedDelay(paramr.g, 0L, 2500L, TimeUnit.MILLISECONDS);
  }

  private void f()
  {
    if (this.q != null)
    {
      this.q.cancel(true);
      this.q = null;
    }
  }

  private boolean g()
  {
    this.d = ((BluetoothManager)getSystemService("bluetooth")).getAdapter();
    return (this.d != null) && (this.d.isEnabled());
  }

  private void h()
  {
    Object localObject = com.nut.blehunter.provider.i.b().h();
    if ((localObject == null) || (((List)localObject).size() == 0));
    while (true)
    {
      return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Nut localNut = (Nut)((Iterator)localObject).next();
        BluetoothDevice localBluetoothDevice = this.d.getRemoteDevice(com.nut.blehunter.d.o.b(Long.parseLong(localNut.j)));
        r localr = new r(this, localBluetoothDevice, true, this, localNut.p);
        localr.q = true;
        this.a.put(localNut.j, localr);
        int i1 = ((BluetoothManager)getSystemService("bluetooth")).getConnectionState(localBluetoothDevice, 7);
        localr.a("init Controller nutStatus=%s, deviceStatus=%s", new Object[] { Integer.valueOf(localNut.K), Integer.valueOf(i1) });
        if ((i1 == 0) && (localNut.K == 1))
        {
          localNut.K = 0;
          com.nut.blehunter.provider.i.b().a(localNut, false);
        }
      }
    }
  }

  final void a()
  {
    b();
    a(9000);
  }

  final void a(int paramInt)
  {
    a.b("start scan period is %s", new Object[] { Integer.valueOf(paramInt) });
    f();
    c();
    ScheduledExecutorService localScheduledExecutorService;
    n localn;
    if (g())
      if (this.k != null)
      {
        localScheduledExecutorService = this.k;
        localn = this.o;
        if (paramInt != 0)
          break label89;
      }
    label89: for (long l1 = 9000L; ; l1 = paramInt)
    {
      this.q = localScheduledExecutorService.schedule(localn, l1, TimeUnit.MILLISECONDS);
      this.d.startLeScan(this.r);
      return;
    }
  }

  final void a(Message paramMessage)
  {
    a.a("client count is %s", new Object[] { Integer.valueOf(this.c.size()) });
    int i1 = this.c.size() - 1;
    while (i1 >= 0)
    {
      Messenger localMessenger = (Messenger)this.c.get(i1);
      if (!a(localMessenger, paramMessage))
        this.c.remove(localMessenger);
      i1 -= 1;
    }
  }

  final void a(r paramr)
  {
    if ((paramr == null) || (paramr.a == null));
    do
    {
      do
      {
        return;
        a.b("connect device %s current state is %s", new Object[] { paramr.a.getAddress(), Integer.valueOf(this.g) });
      }
      while (this.g == 1);
      this.g = 1;
      if (this.j == 0)
      {
        paramr.a(this, this, null);
        return;
      }
    }
    while (this.j != 1);
    paramr.a(this, this, new g(this));
  }

  public final void a(r paramr, int paramInt)
  {
    a.b("nut device controller state changed %s", new Object[] { Integer.valueOf(paramInt) });
    switch (paramInt)
    {
    case -1:
    default:
    case -2:
    case 0:
    }
    do
    {
      do
      {
        return;
        a(c(paramr, 8));
        return;
        String str = com.nut.blehunter.d.o.a(paramr.a.getAddress());
        Object localObject = com.nut.blehunter.provider.i.b().c(str);
        if ((localObject != null) && (((Nut)localObject).K == 7));
        for (paramInt = 1; ; paramInt = 0)
        {
          if ((paramInt != 0) && (paramr.b != null))
            r.a(paramr.b);
          if (paramr.b != null)
          {
            paramr.b.close();
            paramr.b = null;
          }
          this.g = 0;
          if (paramInt == 0)
            break;
          paramr.q = true;
          return;
        }
        com.nut.blehunter.provider.k.b().c();
        if ((localObject != null) && (((Nut)localObject).K == 1))
          a((Nut)localObject, paramr, 0);
        if (!paramr.n)
          break;
        paramr.a();
        if ((!this.b.containsKey(str)) && (!paramr.q) && (localObject != null) && (((Nut)localObject).K == 0))
        {
          paramr.o = true;
          localObject = new k(this.m, str);
          if (this.k != null)
          {
            paramInt = paramr.v;
            paramr = this.k.schedule((Runnable)localObject, paramInt * 1000, TimeUnit.MILLISECONDS);
            this.b.put(str, paramr);
          }
        }
      }
      while (this.h);
      this.m.sendEmptyMessage(7);
      return;
    }
    while ((!this.h) || (!paramr.equals(this.e)));
    o.a(this, "current_product_id", paramr.p);
    this.e = null;
    a(c(paramr, 19));
  }

  public final void a(r paramr, boolean paramBoolean)
  {
    paramr.a("isDeviceBound=%s result=%s", new Object[] { Boolean.valueOf(paramr.n), Boolean.valueOf(paramBoolean) });
    Object localObject;
    int i1;
    if (paramr.n)
    {
      this.g = 2;
      if (!this.h)
        this.m.sendEmptyMessage(7);
      localObject = com.nut.blehunter.d.o.a(paramr.a.getAddress());
      localObject = com.nut.blehunter.provider.i.b().c((String)localObject);
      if (localObject != null)
      {
        if (!paramr.r)
        {
          paramr.a(true);
          return;
        }
        int i2 = ((Nut)localObject).K;
        i1 = i2;
        if (((Nut)localObject).q != null)
        {
          paramr.a(((Nut)localObject).q.a, ((Nut)localObject).q.b, ((Nut)localObject).q.c);
          i1 = i2;
        }
        label146: if (paramBoolean)
        {
          a((Nut)localObject, paramr, 1);
          e(paramr);
        }
      }
    }
    while (true)
    {
      Bundle localBundle;
      if ((!paramr.o) && ((!paramr.n) || ((paramr.n) && (paramr.q))))
      {
        localObject = c(paramr, 9);
        localBundle = ((Message)localObject).getData();
        localBundle.putBoolean("oauth_result", paramBoolean);
        if (((ag)paramr.f).b != 3)
          break label307;
      }
      label307: for (boolean bool = true; ; bool = false)
      {
        localBundle.putBoolean("new_oauth", bool);
        localBundle.putInt("previous_nut_status", i1);
        localBundle.putInt("device_name", paramr.p);
        a((Message)localObject);
        paramr.q = false;
        if (!paramBoolean)
          break label313;
        if (paramr.p != 16)
          break;
        this.m.postDelayed(new i(this, paramr), 2000L);
        return;
      }
      label313: paramr.a(true);
      return;
      i1 = 0;
      break label146;
      i1 = 0;
    }
  }

  final void a(boolean paramBoolean)
  {
    if (this.d != null);
    try
    {
      this.d.stopLeScan(this.r);
      if (this.h)
      {
        Message localMessage = c(null, 5);
        localMessage.getData().putBoolean("scan_timeout", paramBoolean);
        a(localMessage);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.d("stopScan Exception", new Object[0]);
    }
  }

  final void b()
  {
    a(false);
    f();
    c();
  }

  public final void b(r paramr)
  {
    a(c(paramr, 21));
  }

  public final void b(r paramr, int paramInt)
  {
    if (paramr.n)
    {
      paramr = com.nut.blehunter.provider.i.b().c(com.nut.blehunter.d.o.a(paramr.a.getAddress()));
      if ((paramr != null) && (paramr.C != paramInt))
      {
        paramr.C = paramInt;
        com.nut.blehunter.provider.i.b().a(paramr, true);
      }
    }
  }

  final void b(boolean paramBoolean)
  {
    Object localObject = com.nut.blehunter.provider.i.b().i();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Nut localNut = (Nut)((Iterator)localObject).next();
        r localr = (r)this.a.get(localNut.j);
        if (localr != null)
          if (paramBoolean)
          {
            localr.r = true;
          }
          else if (((localNut.E) && (localNut.A != null) && (!localNut.A.isEmpty())) || (!localNut.E))
          {
            localr.a(false);
            localr.r = false;
          }
      }
    }
  }

  final void c()
  {
    if (this.l != null)
    {
      this.l.cancel(true);
      this.l = null;
    }
  }

  public final void c(r paramr)
  {
    com.nut.blehunter.provider.i.b().h(com.nut.blehunter.d.o.a(paramr.a.getAddress()));
    a(c(paramr, 30));
  }

  final void d()
  {
    this.h = false;
    o.a(this, "manually_scan", false);
  }

  public final void d(r paramr)
  {
    Object localObject = paramr.l;
    if (!com.nut.blehunter.d.o.a((byte[])localObject))
    {
      byte[] arrayOfByte = new byte[2];
      arrayOfByte[0] = localObject[4];
      arrayOfByte[1] = localObject[5];
      int i1 = (int)com.nut.blehunter.d.o.b(arrayOfByte);
      arrayOfByte[0] = localObject[6];
      arrayOfByte[1] = localObject[7];
      int i2 = (int)com.nut.blehunter.d.o.b(arrayOfByte);
      int i3 = (int)com.nut.blehunter.d.o.b(new byte[] { localObject[8] });
      int i4 = (int)com.nut.blehunter.d.o.b(new byte[] { localObject[9] });
      arrayOfByte[0] = localObject[10];
      arrayOfByte[1] = localObject[11];
      int i5 = (int)com.nut.blehunter.d.o.b(arrayOfByte);
      paramr = c(paramr, 43);
      localObject = paramr.getData();
      ((Bundle)localObject).putInt("min_conn_interval", i1);
      ((Bundle)localObject).putInt("max_conn_interval", i2);
      ((Bundle)localObject).putInt("slave_latency", i3);
      ((Bundle)localObject).putInt("tx_power", i4);
      ((Bundle)localObject).putInt("adv_interval", i5);
      a.b("min conn interval is %s", new Object[] { Integer.valueOf(i1) });
      a.b("max conn interval is %s", new Object[] { Integer.valueOf(i2) });
      a.b("slave latency is %s", new Object[] { Integer.valueOf(i3) });
      a.b("tx power is %s", new Object[] { Integer.valueOf(i4) });
      a.b("adv interval is %s", new Object[] { Integer.valueOf(i5) });
      a(paramr);
    }
  }

  final void e()
  {
    int i2 = this.a.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (r)this.a.c(i1);
      ((r)localObject).a();
      ((r)localObject).a(true);
      if (((r)localObject).x != null)
      {
        ((r)localObject).x.shutdown();
        ((r)localObject).x = null;
      }
      localObject = com.nut.blehunter.d.o.a(((r)localObject).a.getAddress());
      com.nut.blehunter.provider.i.b().g((String)localObject);
      i1 += 1;
    }
    this.a.clear();
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.n.getBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    this.m = new l(this);
    this.n = new Messenger(this.m);
    this.o = new n(this.m);
    this.f = new m(this.m);
    g();
    this.h = getSharedPreferences("ble", 0).getBoolean("manually_scan", false);
    this.j = o.a(this, "connect_type");
    h();
    this.p = new ae();
  }

  public void onDestroy()
  {
    b();
    if (this.k != null)
    {
      this.k.shutdown();
      this.k = null;
    }
    e();
    if (this.e != null)
      this.e.a(true);
    super.onDestroy();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.BLEService
 * JD-Core Version:    0.6.2
 */