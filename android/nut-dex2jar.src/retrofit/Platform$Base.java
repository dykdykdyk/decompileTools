package retrofit;

import com.google.gson.Gson;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import retrofit.client.Client;
import retrofit.client.Client.Provider;
import retrofit.client.UrlConnectionClient;
import retrofit.converter.Converter;
import retrofit.converter.GsonConverter;

class Platform$Base extends Platform
{
  Executor defaultCallbackExecutor()
  {
    return new Utils.SynchronousExecutor();
  }

  Client.Provider defaultClient()
  {
    if (Platform.access$300());
    for (Object localObject = Platform.OkClientInstantiator.instantiate(); ; localObject = new UrlConnectionClient())
      return new Platform.Base.1(this, (Client)localObject);
  }

  Converter defaultConverter()
  {
    return new GsonConverter(new Gson());
  }

  Executor defaultHttpExecutor()
  {
    return Executors.newCachedThreadPool(new Platform.Base.2(this));
  }

  RestAdapter.Log defaultLog()
  {
    return new Platform.Base.3(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Base
 * JD-Core Version:    0.6.2
 */