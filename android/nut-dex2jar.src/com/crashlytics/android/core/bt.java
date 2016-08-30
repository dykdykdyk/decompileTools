package com.crashlytics.android.core;

import io.fabric.sdk.android.services.b.af;
import java.io.IOException;
import java.io.InputStream;

final class bt
  implements af
{
  bt(bs parambs, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
  }

  public final void a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    try
    {
      paramInputStream.read(this.a, this.b[0], paramInt);
      int[] arrayOfInt = this.b;
      arrayOfInt[0] += paramInt;
      return;
    }
    finally
    {
      paramInputStream.close();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bt
 * JD-Core Version:    0.6.2
 */