package retrofit;

public final class Profiler$RequestInformation
{
  private final String baseUrl;
  private final long contentLength;
  private final String contentType;
  private final String method;
  private final String relativePath;

  public Profiler$RequestInformation(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
  {
    this.method = paramString1;
    this.baseUrl = paramString2;
    this.relativePath = paramString3;
    this.contentLength = paramLong;
    this.contentType = paramString4;
  }

  public final String getBaseUrl()
  {
    return this.baseUrl;
  }

  public final long getContentLength()
  {
    return this.contentLength;
  }

  public final String getContentType()
  {
    return this.contentType;
  }

  public final String getMethod()
  {
    return this.method;
  }

  public final String getRelativePath()
  {
    return this.relativePath;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Profiler.RequestInformation
 * JD-Core Version:    0.6.2
 */