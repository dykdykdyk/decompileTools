package com.twitter.sdk.android.core.internal.scribe;

import io.fabric.sdk.android.services.b.af;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

final class j
  implements af
{
  j(ScribeFilesSender paramScribeFilesSender, boolean[] paramArrayOfBoolean, ByteArrayOutputStream paramByteArrayOutputStream)
  {
  }

  public final void a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramInputStream.read(arrayOfByte);
    if (this.a[0] != 0)
      this.b.write(ScribeFilesSender.a());
    while (true)
    {
      this.b.write(arrayOfByte);
      return;
      this.a[0] = true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.j
 * JD-Core Version:    0.6.2
 */