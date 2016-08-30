package com.nut.blehunter.ui.a;

import android.support.v7.widget.dt;
import java.util.ArrayList;
import java.util.List;

public final class e extends dt<f>
{
  public List<byte[]> c;

  public e(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0))
    {
      ArrayList localArrayList = new ArrayList();
      if (paramArrayOfByte.length % 9 != 0)
        throw new IllegalArgumentException("connect record file is bad");
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        byte[] arrayOfByte = new byte[9];
        System.arraycopy(paramArrayOfByte, paramArrayOfByte.length - 9 - i, arrayOfByte, 0, 9);
        localArrayList.add(arrayOfByte);
        i += 9;
      }
      this.c = localArrayList;
    }
  }

  public final int b()
  {
    if (this.c == null)
      return 0;
    return this.c.size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.e
 * JD-Core Version:    0.6.2
 */