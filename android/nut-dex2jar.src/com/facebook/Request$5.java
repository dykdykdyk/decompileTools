package com.facebook;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

class Request$5
  implements Request.KeyValueSerializer
{
  Request$5(Request paramRequest, ArrayList paramArrayList)
  {
  }

  public void writeString(String paramString1, String paramString2)
    throws IOException
  {
    this.val$keysAndValues.add(String.format("%s=%s", new Object[] { paramString1, URLEncoder.encode(paramString2, "UTF-8") }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Request.5
 * JD-Core Version:    0.6.2
 */