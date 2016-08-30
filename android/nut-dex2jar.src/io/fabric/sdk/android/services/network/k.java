package io.fabric.sdk.android.services.network;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public final class k extends BufferedOutputStream
{
  private final CharsetEncoder a;

  public k(OutputStream paramOutputStream, String paramString, int paramInt)
  {
    super(paramOutputStream, paramInt);
    this.a = Charset.forName(HttpRequest.b(paramString)).newEncoder();
  }

  public final k a(String paramString)
    throws IOException
  {
    paramString = this.a.encode(CharBuffer.wrap(paramString));
    super.write(paramString.array(), 0, paramString.limit());
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.k
 * JD-Core Version:    0.6.2
 */