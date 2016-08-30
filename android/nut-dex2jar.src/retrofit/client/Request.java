package retrofit.client;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import retrofit.mime.TypedOutput;

public final class Request
{
  private final TypedOutput body;
  private final List<Header> headers;
  private final String method;
  private final String url;

  public Request(String paramString1, String paramString2, List<Header> paramList, TypedOutput paramTypedOutput)
  {
    if (paramString1 == null)
      throw new NullPointerException("Method must not be null.");
    if (paramString2 == null)
      throw new NullPointerException("URL must not be null.");
    this.method = paramString1;
    this.url = paramString2;
    if (paramList == null);
    for (this.headers = Collections.emptyList(); ; this.headers = Collections.unmodifiableList(new ArrayList(paramList)))
    {
      this.body = paramTypedOutput;
      return;
    }
  }

  public final TypedOutput getBody()
  {
    return this.body;
  }

  public final List<Header> getHeaders()
  {
    return this.headers;
  }

  public final String getMethod()
  {
    return this.method;
  }

  public final String getUrl()
  {
    return this.url;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.Request
 * JD-Core Version:    0.6.2
 */