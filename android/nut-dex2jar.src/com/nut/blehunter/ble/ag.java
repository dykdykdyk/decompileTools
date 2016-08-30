package com.nut.blehunter.ble;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.text.TextUtils;
import b.a.a;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.k;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class ag extends ac
{
  int b = 3;
  boolean c = false;
  private ad d;
  private ai e;
  private ah f;
  private ab g;
  private byte[] h = null;
  private String i;
  private String j;

  public ag(r paramr, ad paramad, ai paramai)
  {
    super(paramr);
    this.d = paramad;
    this.e = paramai;
    b();
  }

  private void a(boolean paramBoolean)
  {
    if (this.d != null)
      this.d.a(this.a, paramBoolean);
  }

  private void a(byte[] paramArrayOfByte)
  {
    if (!a((byte)2, paramArrayOfByte))
      a(false);
  }

  private void b()
  {
    User localUser = k.b().c();
    if (localUser != null)
    {
      this.j = localUser.h;
      this.i = localUser.g;
    }
  }

  private boolean c()
  {
    if ((TextUtils.isEmpty(this.j)) || (TextUtils.isEmpty(this.i)))
      b();
    return a((byte)4, d.a(this.i, this.j));
  }

  public final void a()
  {
    this.a = null;
    this.d = null;
    this.f = null;
    this.e = null;
  }

  public final void a(ab paramab)
  {
    if (this.a == null);
    BluetoothGattCharacteristic localBluetoothGattCharacteristic;
    do
    {
      return;
      localBluetoothGattCharacteristic = this.a.a(aj.a, aj.d);
    }
    while (localBluetoothGattCharacteristic == null);
    this.g = paramab;
    localBluetoothGattCharacteristic.setValue(new byte[] { 20 });
    this.a.b.writeCharacteristic(localBluetoothGattCharacteristic);
  }

  public final void a(ah paramah)
  {
    this.f = paramah;
    if ((!c()) && (this.f != null))
      this.f.a(this.a, false);
  }

  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    int k = 0;
    a.b("handle auth result is %s", new Object[] { o.c(paramArrayOfByte) });
    if (o.a(paramArrayOfByte))
      a(false);
    label323: label329: 
    do
    {
      do
      {
        do
        {
          do
          {
            boolean bool1;
            do
            {
              boolean bool2;
              do
              {
                return;
                localObject = o.a(paramString);
                bool2 = this.a.n;
                localObject = i.b().c((String)localObject);
                switch (paramArrayOfByte[0])
                {
                default:
                  return;
                case 1:
                  this.h = d.a(paramArrayOfByte);
                  if (bool2)
                    if (((Nut)localObject).E)
                    {
                      if ((TextUtils.isEmpty(this.j)) || (TextUtils.isEmpty(this.i)))
                        b();
                      if ((!this.j.equals(((Nut)localObject).e)) || (!this.i.equals(((Nut)localObject).d)))
                        k = 1;
                      if (k != 0)
                      {
                        this.b = 1;
                        paramString = d.a(paramString, (Nut)localObject, this.h);
                      }
                    }
                  while (true)
                  {
                    a(paramString);
                    return;
                    this.b = 2;
                    paramString = d.a(paramString, this.h, this.i, this.j);
                    continue;
                    this.b = 4;
                    paramString = d.a(paramString, (Nut)localObject, this.h);
                    continue;
                    this.b = 3;
                    paramString = d.a(paramString, this.h);
                  }
                case 3:
                  if (paramArrayOfByte[1] != 85)
                    break label329;
                  if ((this.b != 1) && ((this.b != 3) || (!bool2)))
                    break label323;
                case 5:
                case 30:
                case 21:
                case 9:
                }
              }
              while (c());
              a(false);
              return;
              a(true);
              return;
              if (bool2)
              {
                if (this.b == 1)
                {
                  this.b = 2;
                  a(d.a(paramString, this.h, this.i, this.j));
                  return;
                }
                if (this.b == 2)
                {
                  this.b = 3;
                  a(d.a(paramString, this.h));
                  return;
                }
                a(false);
                return;
              }
              if (this.b == 3)
              {
                this.b = 2;
                a(d.a(paramString, this.h, this.i, this.j));
                return;
              }
              a(false);
              return;
              if (paramArrayOfByte[1] == 85)
                bool1 = true;
              while (this.c)
                if (bool1)
                {
                  this.a.b();
                  return;
                  bool1 = false;
                }
                else
                {
                  this.c = false;
                  return;
                }
              if (bool2)
              {
                if ((((Nut)localObject).E) && (localObject != null))
                {
                  ((Nut)localObject).e = this.j;
                  ((Nut)localObject).d = this.i;
                  i.b().a((Nut)localObject, true);
                }
                a(true);
                return;
              }
            }
            while (this.f == null);
            this.f.a(this.a, bool1);
            return;
          }
          while ((paramArrayOfByte[1] != 85) || (this.e == null));
          this.e.a(this.a);
          return;
        }
        while ((paramArrayOfByte[1] != 85) || (this.g == null));
        this.g.c(this.a);
        return;
      }
      while (paramArrayOfByte[1] != 85);
      paramString = this.a;
      paramArrayOfByte = paramString.a(aj.a, aj.d);
    }
    while ((paramString.b == null) || (paramArrayOfByte == null));
    Object localObject = Arrays.copyOfRange(o.a(paramString.s), 2, 4);
    a.b("byte major array is %s", new Object[] { Arrays.toString((byte[])localObject) });
    byte[] arrayOfByte = Arrays.copyOfRange(o.a(paramString.t), 2, 4);
    a.b("byte minor array is %s", new Object[] { Arrays.toString(arrayOfByte) });
    ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[5]);
    localByteBuffer.put((byte)10);
    localByteBuffer.put((byte[])localObject);
    localByteBuffer.put(arrayOfByte);
    paramArrayOfByte.setValue(localByteBuffer.array());
    a.b("wechat data is %s", new Object[] { Arrays.toString(localByteBuffer.array()) });
    a.b("wechat data hex is %s", new Object[] { o.c(localByteBuffer.array()) });
    paramString.b.writeCharacteristic(paramArrayOfByte);
  }

  final boolean a(byte paramByte, byte[] paramArrayOfByte)
  {
    a.b("send auth pwd to device command is %s pwd is %s", new Object[] { Byte.valueOf(paramByte), o.c(paramArrayOfByte) });
    if ((paramArrayOfByte == null) || (this.a == null));
    byte[] arrayOfByte;
    do
    {
      return false;
      arrayOfByte = new byte[17];
      arrayOfByte[0] = paramByte;
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 1, 16);
      paramArrayOfByte = this.a.a(aj.a, aj.d);
    }
    while (paramArrayOfByte == null);
    paramArrayOfByte.setValue(arrayOfByte);
    this.a.b.writeCharacteristic(paramArrayOfByte);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.ag
 * JD-Core Version:    0.6.2
 */