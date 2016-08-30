package com.loc;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;

final class cg
  implements Serializable
{
  protected byte a = 0;
  protected ArrayList b = new ArrayList();
  private byte c = 3;

  protected final Boolean a(DataOutputStream paramDataOutputStream)
  {
    try
    {
      paramDataOutputStream.writeByte(this.c);
      paramDataOutputStream.writeByte(this.a);
      int i = 0;
      if (i < this.b.size())
      {
        ch localch = (ch)this.b.get(i);
        paramDataOutputStream.writeByte(localch.a);
        byte[] arrayOfByte1 = new byte[localch.a];
        byte[] arrayOfByte2 = localch.b;
        if (localch.a < localch.b.length)
        {
          j = localch.a;
          label87: System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, j);
          paramDataOutputStream.write(arrayOfByte1);
          paramDataOutputStream.writeDouble(localch.c);
          paramDataOutputStream.writeInt(localch.d);
          paramDataOutputStream.writeInt(localch.e);
          paramDataOutputStream.writeDouble(localch.f);
          paramDataOutputStream.writeByte(localch.g);
          paramDataOutputStream.writeByte(localch.h);
          arrayOfByte1 = new byte[localch.h];
          arrayOfByte2 = localch.i;
          if (localch.h >= localch.i.length)
            break label235;
        }
        label235: for (int j = localch.h; ; j = localch.i.length)
        {
          System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, j);
          paramDataOutputStream.write(arrayOfByte1);
          paramDataOutputStream.writeByte(localch.j);
          i += 1;
          break;
          j = localch.b.length;
          break label87;
        }
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
 * Qualified Name:     com.loc.cg
 * JD-Core Version:    0.6.2
 */