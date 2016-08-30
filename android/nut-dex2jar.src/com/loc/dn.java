package com.loc;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class dn
  implements Serializable
{
  protected short a = 0;
  protected int b = 0;
  protected byte c = 0;
  protected byte d = 0;
  protected ArrayList e = new ArrayList();
  private byte f = 2;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      paramDataOutputStream.writeByte(this.f);
      paramDataOutputStream.writeShort(this.a);
      paramDataOutputStream.writeInt(this.b);
      paramDataOutputStream.writeByte(this.c);
      paramDataOutputStream.writeByte(this.d);
      int i = 0;
      while (i < this.d)
      {
        paramDataOutputStream.writeShort(((cn)this.e.get(i)).a);
        paramDataOutputStream.writeInt(((cn)this.e.get(i)).b);
        paramDataOutputStream.writeByte(((cn)this.e.get(i)).c);
        i += 1;
      }
      return Boolean.valueOf(true);
    }
    catch (IOException paramDataOutputStream)
    {
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dn
 * JD-Core Version:    0.6.2
 */