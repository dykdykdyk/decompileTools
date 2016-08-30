package retrofit.client;

import java.io.IOException;
import java.io.InputStream;
import retrofit.mime.TypedInput;

class UrlConnectionClient$TypedInputStream
  implements TypedInput
{
  private final long length;
  private final String mimeType;
  private final InputStream stream;

  private UrlConnectionClient$TypedInputStream(String paramString, long paramLong, InputStream paramInputStream)
  {
    this.mimeType = paramString;
    this.length = paramLong;
    this.stream = paramInputStream;
  }

  public InputStream in()
    throws IOException
  {
    return this.stream;
  }

  public long length()
  {
    return this.length;
  }

  public String mimeType()
  {
    return this.mimeType;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.UrlConnectionClient.TypedInputStream
 * JD-Core Version:    0.6.2
 */