package retrofit;

import android.os.Build.VERSION;
import java.util.concurrent.Executor;
import retrofit.client.Client.Provider;
import retrofit.converter.Converter;

abstract class Platform
{
  static final boolean HAS_RX_JAVA = hasRxJavaOnClasspath();
  private static final Platform PLATFORM = findPlatform();

  private static Platform findPlatform()
  {
    try
    {
      Class.forName("android.os.Build");
      if (Build.VERSION.SDK_INT != 0)
      {
        Platform.Android localAndroid = new Platform.Android(null);
        return localAndroid;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      if (System.getProperty("com.google.appengine.runtime.version") != null)
        return new Platform.AppEngine(null);
    }
    return new Platform.Base(null);
  }

  static Platform get()
  {
    return PLATFORM;
  }

  private static boolean hasOkHttpOnClasspath()
  {
    boolean bool2 = true;
    try
    {
      Class.forName("com.squareup.okhttp.OkUrlFactory");
      bool1 = true;
    }
    catch (ClassNotFoundException localClassNotFoundException1)
    {
      try
      {
        while (true)
        {
          Class.forName("com.squareup.okhttp.OkHttpClient");
          if (bool2 == bool1)
            break;
          throw new RuntimeException("Retrofit detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Retrofit, you'll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!");
          localClassNotFoundException1 = localClassNotFoundException1;
          boolean bool1 = false;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        while (true)
          bool2 = false;
      }
    }
    return bool2;
  }

  private static boolean hasRxJavaOnClasspath()
  {
    try
    {
      Class.forName("rx.h");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return false;
  }

  abstract Executor defaultCallbackExecutor();

  abstract Client.Provider defaultClient();

  abstract Converter defaultConverter();

  abstract Executor defaultHttpExecutor();

  abstract RestAdapter.Log defaultLog();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform
 * JD-Core Version:    0.6.2
 */