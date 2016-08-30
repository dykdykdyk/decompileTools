package retrofit;

public final class Endpoints
{
  private static final String DEFAULT_NAME = "default";

  public static Endpoint newFixedEndpoint(String paramString)
  {
    return new Endpoints.FixedEndpoint(paramString, "default");
  }

  public static Endpoint newFixedEndpoint(String paramString1, String paramString2)
  {
    return new Endpoints.FixedEndpoint(paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Endpoints
 * JD-Core Version:    0.6.2
 */