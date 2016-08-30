package okhttp3.internal.http;

import java.io.IOException;

public final class RequestException extends Exception
{
  public final IOException a()
  {
    return (IOException)super.getCause();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.RequestException
 * JD-Core Version:    0.6.2
 */