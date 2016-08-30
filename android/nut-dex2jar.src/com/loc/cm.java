package com.loc;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;

final class cm
  implements Serializable
{
  protected int a = 0;
  protected int b = 0;
  protected short c = 0;
  protected short d = 0;
  protected int e = 0;
  protected byte f = 0;
  private byte g = 4;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      paramDataOutputStream.writeByte(this.g);
      paramDataOutputStream.writeInt(this.a);
      paramDataOutputStream.writeInt(this.b);
      paramDataOutputStream.writeShort(this.c);
      paramDataOutputStream.writeShort(this.d);
      paramDataOutputStream.writeInt(this.e);
      paramDataOutputStream.writeByte(this.f);
      return Boolean.valueOf(true);
    }
    catch (IOException paramDataOutputStream)
    {
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cm
 * JD-Core Version:    0.6.2
 */