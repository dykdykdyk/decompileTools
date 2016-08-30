package retrofit;

import retrofit.appengine.UrlFetchClient;
import retrofit.client.Client.Provider;

class Platform$AppEngine extends Platform.Base
{
  private Platform$AppEngine()
  {
    super(null);
  }

  Client.Provider defaultClient()
  {
    return new Platform.AppEngine.1(this, new UrlFetchClient());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform.AppEngine
 * JD-Core Version:    0.6.2
 */