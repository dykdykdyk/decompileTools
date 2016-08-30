package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class cd
  implements Serializable
{
  protected byte[] a = new byte[16];
  protected byte[] b = new byte[16];
  protected byte[] c = new byte[16];
  protected short d = 0;
  protected short e = 0;
  protected byte f = 0;
  protected byte[] g = new byte[16];
  protected byte[] h = new byte[32];
  protected short i = 0;
  protected ArrayList j = new ArrayList();
  private byte k = 41;
  private short l = 0;

  private Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream1 = new DataOutputStream(localByteArrayOutputStream1);
      localDataOutputStream1.flush();
      localDataOutputStream1.write(this.a);
      localDataOutputStream1.write(this.b);
      localDataOutputStream1.write(this.c);
      localDataOutputStream1.writeShort(this.d);
      localDataOutputStream1.writeShort(this.e);
      localDataOutputStream1.writeByte(this.f);
      this.g[15] = 0;
      localDataOutputStream1.write(cl.a(this.g, this.g.length));
      this.h[31] = 0;
      localDataOutputStream1.write(cl.a(this.h, this.h.length));
      localDataOutputStream1.writeShort(this.i);
      for (int m = 0; m < this.i; m = (short)(m + 1))
      {
        ByteArrayOutputStream localByteArrayOutputStream2 = new ByteArrayOutputStream();
        DataOutputStream localDataOutputStream2 = new DataOutputStream(localByteArrayOutputStream2);
        localDataOutputStream2.flush();
        ca localca = (ca)this.j.get(m);
        if (((localca.c == null) || (localca.c.a(localDataOutputStream2).booleanValue())) || (((localca.d == null) || (localca.d.a(localDataOutputStream2).booleanValue())) || (((localca.e == null) || (localca.e.a(localDataOutputStream2).booleanValue())) || (((localca.f == null) || (localca.f.a(localDataOutputStream2).booleanValue())) || ((localca.g != null) && (!localca.g.a(localDataOutputStream2).booleanValue()))))));
        localca.a = Integer.valueOf(localByteArrayOutputStream2.size() + 4).shortValue();
        localDataOutputStream1.writeShort(localca.a);
        localDataOutputStream1.writeInt(localca.b);
        localDataOutputStream1.write(localByteArrayOutputStream2.toByteArray());
      }
      this.l = Integer.valueOf(localByteArrayOutputStream1.size()).shortValue();
      paramDataOutputStream.writeByte(this.k);
      paramDataOutputStream.writeShort(this.l);
      paramDataOutputStream.write(localByteArrayOutputStream1.toByteArray());
      return Boolean.valueOf(true);
    }
    catch (IOException paramDataOutputStream)
    {
    }
    return Boolean.valueOf(false);
  }

  protected final byte[] a()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(new DataOutputStream(localByteArrayOutputStream));
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cd
 * JD-Core Version:    0.6.2
 */