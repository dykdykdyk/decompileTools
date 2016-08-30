package retrofit;

class Endpoints$FixedEndpoint
  implements Endpoint
{
  private final String apiUrl;
  private final String name;

  Endpoints$FixedEndpoint(String paramString1, String paramString2)
  {
    this.apiUrl = paramString1;
    this.name = paramString2;
  }

  public String getName()
  {
    return this.name;
  }

  public String getUrl()
  {
    return this.apiUrl;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Endpoints.FixedEndpoint
 * JD-Core Version:    0.6.2
 */