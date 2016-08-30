package com.nut.blehunter.entity;

import android.bluetooth.BluetoothDevice;

public final class u
{
  public boolean a = false;
  public int b;
  public int c;
  public long d;
  public BluetoothDevice e;

  public u(BluetoothDevice paramBluetoothDevice, int paramInt1, int paramInt2)
  {
    this.b = paramInt2;
    this.c = paramInt1;
    this.e = paramBluetoothDevice;
    this.d = System.currentTimeMillis();
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof u));
    do
    {
      return false;
      if (paramObject == this)
        return true;
      paramObject = (u)paramObject;
    }
    while ((paramObject.e == null) || (this.e == null) || (!paramObject.e.getAddress().equals(this.e.getAddress())));
    return true;
  }

  public final int hashCode()
  {
    return this.e.hashCode();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.u
 * JD-Core Version:    0.6.2
 */