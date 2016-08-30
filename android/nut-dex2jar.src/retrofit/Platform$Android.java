package retrofit;

import android.os.Build.VERSION;
import com.google.gson.Gson;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import retrofit.android.AndroidApacheClient;
import retrofit.android.AndroidLog;
import retrofit.android.MainThreadExecutor;
import retrofit.client.Client;
import retrofit.client.Client.Provider;
import retrofit.client.UrlConnectionClient;
import retrofit.converter.Converter;
import retrofit.converter.GsonConverter;

class Platform$Android extends Platform
{
  Executor defaultCallbackExecutor()
  {
    return new MainThreadExecutor();
  }

  Client.Provider defaultClient()
  {
    Object localObject;
    if (Platform.access$300())
      localObject = Platform.OkClientInstantiator.instantiate();
    while (true)
    {
      return new Platform.Android.1(this, (Client)localObject);
      if (Build.VERSION.SDK_INT < 9)
        localObject = new AndroidApacheClient();
      else
        localObject = new UrlConnectionClient();
    }
  }

  Converter defaultConverter()
  {
    return new GsonConverter(new Gson());
  }

  Executor defaultHttpExecutor()
  {
    return Executors.newCachedThreadPool(new Platform.Android.2(this));
  }

  RestAdapter.Log defaultLog()
  {
    return new AndroidLog("Retrofit");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Android
 * JD-Core Version:    0.6.2
 */