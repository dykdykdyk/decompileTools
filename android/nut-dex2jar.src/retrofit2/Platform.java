package retrofit2;

import android.os.Build.VERSION;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

class Platform
{
  private static final Platform PLATFORM = findPlatform();

  private static Platform findPlatform()
  {
    try
    {
      Class.forName("android.os.Build");
      if (Build.VERSION.SDK_INT != 0)
      {
        Platform.Android localAndroid = new Platform.Android();
        return localAndroid;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException1)
    {
      try
      {
        Class.forName("java.util.Optional");
        Platform.Java8 localJava8 = new Platform.Java8();
        return localJava8;
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        try
        {
          Class.forName("org.robovm.apple.foundation.NSObject");
          Platform.IOS localIOS = new Platform.IOS();
          return localIOS;
        }
        catch (ClassNotFoundException localClassNotFoundException3)
        {
        }
      }
    }
    return new Platform();
  }

  static Platform get()
  {
    return PLATFORM;
  }

  CallAdapter.Factory defaultCallAdapterFactory(Executor paramExecutor)
  {
    if (paramExecutor != null)
      return new ExecutorCallAdapterFactory(paramExecutor);
    return DefaultCallAdapterFactory.INSTANCE;
  }

  Executor defaultCallbackExecutor()
  {
    return null;
  }

  Object invokeDefaultMethod(Method paramMethod, Class<?> paramClass, Object paramObject, Object[] paramArrayOfObject)
    throws Throwable
  {
    throw new UnsupportedOperationException();
  }

  boolean isDefaultMethod(Method paramMethod)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Platform
 * JD-Core Version:    0.6.2
 */