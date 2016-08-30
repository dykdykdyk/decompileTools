package com.baidu.android.pushservice.util;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class f
{
  byte[] a;
  private DataOutputStream b;

  public f(OutputStream paramOutputStream)
  {
    this.b = new DataOutputStream(paramOutputStream);
    this.a = new byte[8];
  }

  public void a()
    throws IOException
  {
    this.b.close();
  }

  public final void a(int paramInt)
    throws IOException
  {
    this.a[1] = ((byte)(paramInt >> 8));
    this.a[0] = ((byte)paramInt);
    this.b.write(this.a, 0, 2);
  }

  public final void a(long paramLong)
    throws IOException
  {
    this.a[7] = ((byte)(int)(paramLong >> 56));
    this.a[6] = ((byte)(int)(paramLong >> 48));
    this.a[5] = ((byte)(int)(paramLong >> 40));
    this.a[4] = ((byte)(int)(paramLong >> 32));
    this.a[3] = ((byte)(int)(paramLong >> 24));
    this.a[2] = ((byte)(int)(paramLong >> 16));
    this.a[1] = ((byte)(int)(paramLong >> 8));
    this.a[0] = ((byte)(int)paramLong);
    this.b.write(this.a, 0, 8);
  }

  public void a(byte[] paramArrayOfByte)
    throws IOException
  {
    this.b.write(paramArrayOfByte);
  }

  public final void b(int paramInt)
    throws IOException
  {
    this.a[3] = ((byte)(paramInt >> 24));
    this.a[2] = ((byte)(paramInt >> 16));
    this.a[1] = ((byte)(paramInt >> 8));
    this.a[0] = ((byte)paramInt);
    this.b.write(this.a, 0, 4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.f
 * JD-Core Version:    0.6.2
 */