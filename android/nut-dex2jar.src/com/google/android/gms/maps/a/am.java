package com.google.android.gms.maps.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class am
{
  private static Context a;
  private static aq b;

  public static aq a(Context paramContext)
    throws GooglePlayServicesNotAvailableException
  {
    b.a(paramContext);
    if (b != null)
      return b;
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    switch (i)
    {
    default:
      throw new GooglePlayServicesNotAvailableException(i);
    case 0:
    }
    Log.i(am.class.getSimpleName(), "Making Creator dynamically");
    b = ar.a((IBinder)a(b(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
    try
    {
      b.a(k.a(b(paramContext).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
      return b;
    }
    catch (RemoteException paramContext)
    {
    }
    throw new RuntimeRemoteException(paramContext);
  }

  private static <T> T a(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      paramClass = String.valueOf(paramClass.getName());
      if (paramClass.length() != 0);
      for (paramClass = "Unable to instantiate the dynamic class ".concat(paramClass); ; paramClass = new String("Unable to instantiate the dynamic class "))
        throw new IllegalStateException(paramClass);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramClass = String.valueOf(paramClass.getName());
      if (paramClass.length() == 0);
    }
    for (paramClass = "Unable to call the default constructor of ".concat(paramClass); ; paramClass = new String("Unable to call the default constructor of "))
      throw new IllegalStateException(paramClass);
  }

  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = a(((ClassLoader)b.a(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      paramClassLoader = String.valueOf(paramString);
      if (paramClassLoader.length() == 0);
    }
    for (paramClassLoader = "Unable to find dynamic class ".concat(paramClassLoader); ; paramClassLoader = new String("Unable to find dynamic class "))
      throw new IllegalStateException(paramClassLoader);
  }

  private static Context b(Context paramContext)
  {
    if (a == null)
      a = GooglePlayServicesUtil.getRemoteContext(paramContext);
    return a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.am
 * JD-Core Version:    0.6.2
 */