package com.nut.blehunter.ble;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.Context;
import b.a.a;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.l;
import com.nut.blehunter.m;
import com.nut.blehunter.provider.j;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class r extends BluetoothGattCallback
{
  private p A;
  private Context B;
  private u C;
  private w D;
  private ScheduledFuture E;
  private ScheduledFuture F;
  BluetoothDevice a;
  BluetoothGatt b;
  y c;
  aa d;
  x e;
  ac f;
  z g;
  ScheduledFuture h;
  String i = null;
  String j = null;
  String k = null;
  byte[] l;
  int m;
  boolean n = false;
  boolean o = false;
  int p;
  boolean q = false;
  boolean r = true;
  int s;
  int t;
  int u = 0;
  int v = 15;
  boolean w = true;
  ScheduledExecutorService x;
  private t y;
  private v z;

  public r(Context paramContext, BluetoothDevice paramBluetoothDevice, boolean paramBoolean, t paramt, int paramInt)
  {
    this.B = paramContext;
    this.a = paramBluetoothDevice;
    this.n = paramBoolean;
    this.y = paramt;
    this.x = Executors.newScheduledThreadPool(3);
    this.z = new v(this);
    this.C = new u(this.z);
    this.D = new w(this.z);
    this.g = new z(this.z);
    this.p = paramInt;
    paramContext = j.b().a(paramInt);
    a.b("NutDeviceController NutDeviceController product=" + paramContext, new Object[0]);
    if (paramContext != null)
    {
      this.v = paramContext.j;
      this.w = false;
      a.b("NutDeviceController NutDeviceController product.appAlertDelay=" + paramContext.j, new Object[0]);
      return;
    }
    this.w = true;
  }

  private BluetoothGatt a(Context paramContext, BluetoothDevice paramBluetoothDevice)
  {
    try
    {
      paramContext = (BluetoothGatt)paramBluetoothDevice.getClass().getDeclaredMethod("connectGatt", new Class[] { Context.class, Boolean.TYPE, BluetoothGattCallback.class, Integer.TYPE }).invoke(paramBluetoothDevice, new Object[] { paramContext, Boolean.valueOf(false), this, Integer.valueOf(paramBluetoothDevice.getClass().getDeclaredField("TRANSPORT_LE").getInt(null)) });
      return paramContext;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    catch (NoSuchMethodException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (IllegalAccessException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (InvocationTargetException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  private void a(int paramInt)
  {
    try
    {
      a.b("controller current state is %s new state %s", new Object[] { Integer.valueOf(this.m), Integer.valueOf(paramInt) });
      if (this.m != paramInt)
      {
        this.m = paramInt;
        if (this.y != null)
          this.y.a(this, paramInt);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  static void a(BluetoothGatt paramBluetoothGatt)
  {
    try
    {
      Method localMethod = paramBluetoothGatt.getClass().getMethod("refresh", new Class[0]);
      if (localMethod != null)
      {
        boolean bool = ((Boolean)localMethod.invoke(paramBluetoothGatt, new Object[0])).booleanValue();
        a.b("Refreshing result: " + bool, new Object[0]);
      }
      return;
    }
    catch (Exception paramBluetoothGatt)
    {
      a.d("An exception occurred while refreshing device", new Object[] { paramBluetoothGatt });
    }
  }

  private void a(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
  {
    if (this.b == null)
    {
      a.c("BluetoothAdapter not initialized", new Object[0]);
      return;
    }
    if (paramBluetoothGattCharacteristic == null)
    {
      a.d("characteristic %s not found", new Object[0]);
      return;
    }
    this.b.setCharacteristicNotification(paramBluetoothGattCharacteristic, true);
    paramBluetoothGattCharacteristic.getDescriptor(aj.b).setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
  }

  public static void a(BluetoothGattCharacteristic paramBluetoothGattCharacteristic, byte paramByte)
  {
    paramBluetoothGattCharacteristic.setValue(paramByte, 17, 0);
    paramBluetoothGattCharacteristic.setWriteType(1);
  }

  private void a(UUID paramUUID)
  {
    paramUUID = a(aj.o, paramUUID);
    if (paramUUID == null)
    {
      a(false);
      return;
    }
    this.b.readCharacteristic(paramUUID);
  }

  // ERROR //
  private void a(UUID paramUUID, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +53 -> 54
    //   4: ldc_w 315
    //   7: iconst_1
    //   8: anewarray 145	java/lang/Object
    //   11: dup
    //   12: iconst_0
    //   13: aload_2
    //   14: invokestatic 320	java/util/Arrays:toString	([B)Ljava/lang/String;
    //   17: aastore
    //   18: invokestatic 150	b/a/a:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   21: new 322	java/lang/String
    //   24: dup
    //   25: aload_2
    //   26: ldc_w 324
    //   29: invokespecial 327	java/lang/String:<init>	([BLjava/lang/String;)V
    //   32: astore_2
    //   33: ldc_w 329
    //   36: iconst_1
    //   37: anewarray 145	java/lang/Object
    //   40: dup
    //   41: iconst_0
    //   42: aload_2
    //   43: aastore
    //   44: invokestatic 150	b/a/a:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   47: aload_2
    //   48: invokestatic 335	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   51: ifeq +21 -> 72
    //   54: return
    //   55: astore_3
    //   56: aconst_null
    //   57: astore_2
    //   58: aload_3
    //   59: ldc_w 337
    //   62: iconst_0
    //   63: anewarray 145	java/lang/Object
    //   66: invokestatic 340	b/a/a:a	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   69: goto -22 -> 47
    //   72: getstatic 342	com/nut/blehunter/ble/aj:q	Ljava/util/UUID;
    //   75: aload_1
    //   76: invokevirtual 348	java/util/UUID:equals	(Ljava/lang/Object;)Z
    //   79: ifeq +9 -> 88
    //   82: aload_0
    //   83: aload_2
    //   84: putfield 62	com/nut/blehunter/ble/r:i	Ljava/lang/String;
    //   87: return
    //   88: getstatic 350	com/nut/blehunter/ble/aj:p	Ljava/util/UUID;
    //   91: aload_1
    //   92: invokevirtual 348	java/util/UUID:equals	(Ljava/lang/Object;)Z
    //   95: ifeq +9 -> 104
    //   98: aload_0
    //   99: aload_2
    //   100: putfield 64	com/nut/blehunter/ble/r:j	Ljava/lang/String;
    //   103: return
    //   104: getstatic 352	com/nut/blehunter/ble/aj:r	Ljava/util/UUID;
    //   107: aload_1
    //   108: invokevirtual 348	java/util/UUID:equals	(Ljava/lang/Object;)Z
    //   111: ifeq -57 -> 54
    //   114: aload_0
    //   115: aload_2
    //   116: putfield 66	com/nut/blehunter/ble/r:k	Ljava/lang/String;
    //   119: return
    //   120: astore_3
    //   121: goto -63 -> 58
    //
    // Exception table:
    //   from	to	target	type
    //   21	33	55	java/io/UnsupportedEncodingException
    //   33	47	120	java/io/UnsupportedEncodingException
  }

  private boolean b(UUID paramUUID)
  {
    if (this.b == null);
    while (this.b.getService(paramUUID) == null)
      return false;
    return true;
  }

  private boolean b(UUID paramUUID1, UUID paramUUID2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (b(paramUUID1))
    {
      bool1 = bool2;
      if (this.b.getService(paramUUID1).getCharacteristic(paramUUID2) != null)
        bool1 = true;
    }
    return bool1;
  }

  private void c()
  {
    this.d = null;
    this.A = null;
    this.c = null;
    this.e = null;
  }

  private void d()
  {
    if (b(aj.o))
    {
      if (b(aj.o, aj.q))
      {
        a(aj.q);
        return;
      }
      if (b(aj.o, aj.p))
      {
        a(aj.p);
        return;
      }
      e();
      return;
    }
    e();
  }

  private void e()
  {
    if (b(aj.h))
    {
      Object localObject = a(aj.h, aj.i);
      if (localObject == null)
      {
        a(false);
        return;
      }
      a((BluetoothGattCharacteristic)localObject);
      localObject = ((BluetoothGattCharacteristic)localObject).getDescriptor(aj.b);
      ((BluetoothGattDescriptor)localObject).setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
      this.b.writeDescriptor((BluetoothGattDescriptor)localObject);
      return;
    }
    f();
  }

  private void f()
  {
    a("startOauth start", new Object[0]);
    Object localObject = a(aj.a, aj.c);
    if (localObject == null)
    {
      a(false);
      return;
    }
    a((BluetoothGattCharacteristic)localObject);
    localObject = ((BluetoothGattCharacteristic)localObject).getDescriptor(aj.b);
    ((BluetoothGattDescriptor)localObject).setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
    this.b.writeDescriptor((BluetoothGattDescriptor)localObject);
  }

  private void g()
  {
    if (this.E != null)
    {
      this.E.cancel(true);
      this.E = null;
    }
  }

  private void h()
  {
    if (this.F != null)
    {
      this.F.cancel(true);
      this.F = null;
    }
  }

  public final BluetoothGattCharacteristic a(UUID paramUUID1, UUID paramUUID2)
  {
    if (this.b == null)
    {
      a.c("Bluetooth device not connected", new Object[0]);
      return null;
    }
    BluetoothGattService localBluetoothGattService = this.b.getService(paramUUID1);
    if (localBluetoothGattService == null)
    {
      a.d("service %s not found", new Object[] { paramUUID1 });
      return null;
    }
    return localBluetoothGattService.getCharacteristic(paramUUID2);
  }

  public final void a()
  {
    this.c = null;
    if (this.h != null)
    {
      this.h.cancel(true);
      this.h = null;
    }
  }

  public final void a(p paramp, ad paramad, ai paramai)
  {
    this.A = paramp;
    this.f = new ag(this, paramad, paramai);
    a(-1);
    this.b = a(this.B, this.a);
    if (this.b == null)
      this.b = this.a.connectGatt(this.B, false, this);
    a("Start connect device", new Object[0]);
  }

  public final void a(String paramString, int paramInt1, int paramInt2)
  {
    BluetoothGattCharacteristic localBluetoothGattCharacteristic = a(aj.a, aj.d);
    if ((this.b == null) || (localBluetoothGattCharacteristic == null))
      return;
    this.s = paramInt1;
    this.t = paramInt2;
    Object localObject = UUID.fromString(paramString);
    paramString = ByteBuffer.wrap(new byte[16]);
    paramString.putLong(((UUID)localObject).getMostSignificantBits());
    paramString.putLong(((UUID)localObject).getLeastSignificantBits());
    a.b("byte uuid array is %s", new Object[] { Arrays.toString(paramString.array()) });
    localObject = ByteBuffer.wrap(new byte[17]);
    ((ByteBuffer)localObject).put((byte)8);
    ((ByteBuffer)localObject).put(paramString.array());
    localBluetoothGattCharacteristic.setValue(((ByteBuffer)localObject).array());
    a.b("wechat data is %s", new Object[] { Arrays.toString(((ByteBuffer)localObject).array()) });
    a.b("wechat data hex is %s", new Object[] { o.c(((ByteBuffer)localObject).array()) });
    this.b.writeCharacteristic(localBluetoothGattCharacteristic);
  }

  public final void a(String paramString, Object[] paramArrayOfObject)
  {
    Object localObject = com.nut.blehunter.provider.k.b().c();
    if ((localObject != null) && (this.B != null) && (this.B.getString(2131100178).equals(((User)localObject).b)))
      if (paramArrayOfObject.length != 0)
        break label172;
    while (true)
    {
      if (l.a == null)
        l.a = new l();
      paramArrayOfObject = l.a;
      paramArrayOfObject.b.append(new m(paramString, "").toString());
      paramArrayOfObject.b.append("\n");
      paramString = this.B;
      localObject = this.a.getAddress() + ".txt";
      com.nut.blehunter.k.a(paramString, NutTrackerApplication.a().c + (String)localObject, paramArrayOfObject.b.toString());
      paramArrayOfObject.b.setLength(0);
      return;
      label172: paramString = String.format(paramString, paramArrayOfObject);
    }
  }

  public final void a(boolean paramBoolean)
  {
    g();
    h();
    if (this.f != null)
    {
      this.f.a();
      this.f = null;
    }
    c();
    a(-3);
    if (this.b != null)
      this.b.disconnect();
    if (!paramBoolean);
    try
    {
      try
      {
        a.b("Waiting 3200 ms for manually disconnect.", new Object[0]);
        wait(3200L);
        label76: a(0);
        a("terminateConnection isWaitCallback=%s", new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      finally
      {
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label76;
    }
  }

  final void a(byte[] paramArrayOfByte)
  {
    BluetoothGattCharacteristic localBluetoothGattCharacteristic = a(aj.a, aj.d);
    if (localBluetoothGattCharacteristic == null)
      return;
    localBluetoothGattCharacteristic.setValue(paramArrayOfByte);
    this.b.writeCharacteristic(localBluetoothGattCharacteristic);
  }

  public final void b()
  {
    byte[] arrayOfByte = new byte[5];
    arrayOfByte[0] = 6;
    BluetoothGattCharacteristic localBluetoothGattCharacteristic = a(aj.a, aj.n);
    if (localBluetoothGattCharacteristic == null)
      return;
    localBluetoothGattCharacteristic.setValue(arrayOfByte);
    this.b.writeCharacteristic(localBluetoothGattCharacteristic);
    a("Device Sleep value=%s", new Object[] { o.c(arrayOfByte) });
  }

  public final void b(boolean paramBoolean)
  {
    BluetoothGattCharacteristic localBluetoothGattCharacteristic = a(aj.k, aj.m);
    if (localBluetoothGattCharacteristic == null)
      return;
    if (paramBoolean);
    for (byte b1 = 1; ; b1 = 0)
    {
      a(localBluetoothGattCharacteristic, b1);
      this.b.writeCharacteristic(localBluetoothGattCharacteristic);
      a("Disconnect Immediate Alert value=%s", new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof r));
    do
    {
      return false;
      if (paramObject == this)
        return true;
      paramObject = ((r)paramObject).a;
      if ((this.a == null) && (paramObject == null))
        return true;
    }
    while ((this.a == null) || (paramObject == null));
    return this.a.equals(paramObject);
  }

  public final int hashCode()
  {
    if (this.a == null);
    for (int i1 = 0; ; i1 = this.a.hashCode())
      return i1 + 62;
  }

  public final void onCharacteristicChanged(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
  {
    a.b("device %s onCharacteristicChanged: %s, value=%s", new Object[] { paramBluetoothGatt.getDevice().getAddress(), paramBluetoothGattCharacteristic.getUuid(), o.c(paramBluetoothGattCharacteristic.getValue()) });
    a("CharacteristicChanged:uuid=%s, value=%s", new Object[] { paramBluetoothGattCharacteristic.getUuid(), o.c(paramBluetoothGattCharacteristic.getValue()) });
    h();
    UUID localUUID = paramBluetoothGattCharacteristic.getUuid();
    if (aj.c.equals(localUUID))
    {
      paramBluetoothGattCharacteristic = paramBluetoothGattCharacteristic.getValue();
      if (!o.a(paramBluetoothGattCharacteristic));
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            int i1 = paramBluetoothGattCharacteristic[0];
            if (i1 == 27)
            {
              a.b("set device configs result is %s", new Object[] { o.c(paramBluetoothGattCharacteristic) });
              return;
            }
            if (i1 != 29)
              break;
            a.b("device configs hex is %s", new Object[] { o.c(paramBluetoothGattCharacteristic) });
            this.l = new byte[paramBluetoothGattCharacteristic.length - 1];
            System.arraycopy(paramBluetoothGattCharacteristic, 1, this.l, 0, this.l.length);
          }
          while (this.e == null);
          this.e.d(this);
          return;
        }
        while (this.f == null);
        this.f.a(paramBluetoothGatt.getDevice().getAddress(), paramBluetoothGattCharacteristic);
        return;
        if (!aj.i.equals(localUUID))
          break;
      }
      while ((this.b == null) || (this.A == null));
      this.A.b(this);
      return;
    }
    while (!aj.g.equals(localUUID));
    this.u = paramBluetoothGattCharacteristic.getValue()[0];
    if (this.A != null)
      this.A.b(this, this.u);
    a.b("battery is %s", new Object[] { Integer.valueOf(this.u) });
  }

  public final void onCharacteristicRead(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
  {
    paramBluetoothGatt = paramBluetoothGattCharacteristic.getUuid();
    a.b("read characteristic %s , status is %s", new Object[] { paramBluetoothGatt, Integer.valueOf(paramInt) });
    a("CharacteristicRead:uuid=%s, value=%s, status=%s", new Object[] { paramBluetoothGatt, o.c(paramBluetoothGattCharacteristic.getValue()), Integer.valueOf(paramInt) });
    h();
    if (aj.q.equals(paramBluetoothGatt))
    {
      a(paramBluetoothGatt, paramBluetoothGattCharacteristic.getValue());
      a(aj.p);
    }
    do
    {
      return;
      if (aj.p.equals(paramBluetoothGatt))
      {
        a(paramBluetoothGatt, paramBluetoothGattCharacteristic.getValue());
        if (b(aj.o, aj.r))
        {
          a(aj.r);
          return;
        }
        e();
        return;
      }
    }
    while (!aj.r.equals(paramBluetoothGatt));
    a(paramBluetoothGatt, paramBluetoothGattCharacteristic.getValue());
    e();
  }

  public final void onCharacteristicWrite(BluetoothGatt paramBluetoothGatt, BluetoothGattCharacteristic paramBluetoothGattCharacteristic, int paramInt)
  {
    a.b("characteristic %s value %s is write status is %s", new Object[] { paramBluetoothGattCharacteristic.getUuid(), o.c(paramBluetoothGattCharacteristic.getValue()), Integer.valueOf(paramInt) });
    a("CharacteristicWrite:uuid=%s, value=%s, status=%s", new Object[] { paramBluetoothGattCharacteristic.getUuid(), o.c(paramBluetoothGattCharacteristic.getValue()), Integer.valueOf(paramInt) });
    if ((paramBluetoothGattCharacteristic.getUuid().equals(aj.n)) && (paramBluetoothGattCharacteristic.getValue()[0] == 6) && (this.d != null))
    {
      this.n = false;
      this.d.a(this, true);
    }
  }

  public final void onConnectionStateChange(BluetoothGatt paramBluetoothGatt, int paramInt1, int paramInt2)
  {
    String str2 = paramBluetoothGatt.getDevice().getAddress();
    String str1;
    if (paramInt2 == 2)
      str1 = "Connected";
    while (true)
    {
      a.b("device %s Connection State Changed: %s new state is %s", new Object[] { str2, str1, Integer.valueOf(paramInt2) });
      a("Connection State Changed: status=%s newState=%s", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      if (paramInt2 == 2)
      {
        this.b = paramBluetoothGatt;
        a(-2);
        try
        {
          try
          {
            a.b("Waiting 1600 ms for a possible Service Changed indication...", new Object[0]);
            wait(1600L);
            label108: g();
            this.z.post(new s(this));
            this.E = this.x.schedule(this.C, 10000L, TimeUnit.MILLISECONDS);
            return;
            str1 = "Disconnected";
          }
          finally
          {
          }
        }
        catch (InterruptedException paramBluetoothGatt)
        {
          break label108;
        }
      }
    }
    a(0);
    g();
    h();
    if (this.f != null)
    {
      this.f.a();
      this.f = null;
    }
    c();
  }

  public final void onDescriptorRead(BluetoothGatt paramBluetoothGatt, BluetoothGattDescriptor paramBluetoothGattDescriptor, int paramInt)
  {
    a.b("device %s onDescriptorRead: %s", new Object[] { paramBluetoothGatt.getDevice().getAddress(), paramBluetoothGattDescriptor.getUuid() });
    a("DescriptorRead:uuid=%s, value=%s, status=%s", new Object[] { paramBluetoothGattDescriptor.getUuid(), o.c(paramBluetoothGattDescriptor.getValue()), Integer.valueOf(paramInt) });
  }

  public final void onDescriptorWrite(BluetoothGatt paramBluetoothGatt, BluetoothGattDescriptor paramBluetoothGattDescriptor, int paramInt)
  {
    a.b("device %s onDescriptorWrite: %s", new Object[] { paramBluetoothGatt.getDevice().getAddress(), paramBluetoothGattDescriptor.getUuid() });
    a("onDescriptorWrite:uuid=%s, value=%s, status=%s", new Object[] { paramBluetoothGattDescriptor.getUuid(), o.c(paramBluetoothGattDescriptor.getValue()), Integer.valueOf(paramInt) });
    paramBluetoothGatt = paramBluetoothGattDescriptor.getCharacteristic().getUuid();
    h();
    if (paramBluetoothGatt.equals(aj.i))
      f();
    while ((!paramBluetoothGatt.equals(aj.g)) || (this.p != 16))
      return;
    d();
  }

  public final void onReadRemoteRssi(BluetoothGatt paramBluetoothGatt, int paramInt1, int paramInt2)
  {
    a.b("read rssi is %d status is %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    if (paramInt2 == 0)
    {
      if (this.c != null)
        this.c.a(paramInt1);
      return;
    }
    a("read rssi %d status %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    a(false);
  }

  public final void onReliableWriteCompleted(BluetoothGatt paramBluetoothGatt, int paramInt)
  {
  }

  public final void onServicesDiscovered(BluetoothGatt paramBluetoothGatt, int paramInt)
  {
    a.b("service discovered status is %d", new Object[] { Integer.valueOf(paramInt) });
    a("discover service complete, status=%s", new Object[] { Integer.valueOf(paramInt) });
    g();
    if (paramInt == 0)
    {
      if (this.p == 16)
      {
        paramBluetoothGatt = a(aj.f, aj.g);
        if (paramBluetoothGatt == null)
          a(false);
      }
      while (true)
      {
        this.F = this.x.schedule(this.D, 10000L, TimeUnit.MILLISECONDS);
        return;
        a(paramBluetoothGatt);
        paramBluetoothGatt = paramBluetoothGatt.getDescriptor(aj.b);
        paramBluetoothGatt.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        this.b.writeDescriptor(paramBluetoothGatt);
        continue;
        d();
      }
    }
    a(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.r
 * JD-Core Version:    0.6.2
 */