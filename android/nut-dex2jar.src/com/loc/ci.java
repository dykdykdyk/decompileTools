package com.loc;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class ci
  implements Serializable
{
  protected byte a = 0;
  protected ArrayList b = new ArrayList();
  private byte c = 8;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      paramDataOutputStream.writeByte(this.c);
      paramDataOutputStream.writeByte(this.a);
      int i = 0;
      while (i < this.a)
      {
        cj localcj = (cj)this.b.get(i);
        paramDataOutputStream.write(localcj.a);
        paramDataOutputStream.writeShort(localcj.b);
        paramDataOutputStream.write(cl.a(localcj.c, localcj.c.length));
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
 * Qualified Name:     com.loc.ci
 * JD-Core Version:    0.6.2
 */