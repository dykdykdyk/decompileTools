package com.amap.api.services.core;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class cd$1 extends ByteArrayOutputStream
{
  cd$1(cd paramcd, int paramInt)
  {
    super(paramInt);
  }

  public String toString()
  {
    int i;
    if ((this.count > 0) && (this.buf[(this.count - 1)] == 13))
      i = this.count - 1;
    try
    {
      while (true)
      {
        String str = new String(this.buf, 0, i, cd.a(this.a).name());
        return str;
        i = this.count;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.cd.1
 * JD-Core Version:    0.6.2
 */