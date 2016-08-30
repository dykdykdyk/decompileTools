package android.support.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  private static final String a = "code_cache" + File.separator + "secondary-dexes";
  private static final Set<String> b = new HashSet();
  private static final boolean c = a(System.getProperty("java.vm.version"));

  private static Method a(Object paramObject, String paramString, Class<?>[] paramArrayOfClass)
    throws NoSuchMethodException
  {
    Class localClass = paramObject.getClass();
    while (localClass != null)
      try
      {
        Method localMethod = localClass.getDeclaredMethod(paramString, paramArrayOfClass);
        if (!localMethod.isAccessible())
          localMethod.setAccessible(true);
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localClass = localClass.getSuperclass();
      }
    throw new NoSuchMethodException("Method " + paramString + " with parameters " + Arrays.asList(paramArrayOfClass) + " not found in " + paramObject.getClass());
  }

  public static void a(Context paramContext)
  {
    Log.i("MultiDex", "install");
    if (c)
      Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
    ApplicationInfo localApplicationInfo;
    Object localObject;
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT < 4)
        throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
      try
      {
        localApplicationInfo = b(paramContext);
        if (localApplicationInfo != null)
          synchronized (b)
          {
            localObject = localApplicationInfo.sourceDir;
            if (b.contains(localObject))
              return;
          }
      }
      catch (Exception paramContext)
      {
        Log.e("MultiDex", "Multidex installation failure", paramContext);
        throw new RuntimeException("Multi dex installation failed (" + paramContext.getMessage() + ").");
      }
    }
    b.add(localObject);
    if (Build.VERSION.SDK_INT > 20)
      Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
    try
    {
      localObject = paramContext.getClassLoader();
      if (localObject == null)
      {
        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
        return;
      }
    }
    catch (RuntimeException paramContext)
    {
      Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", paramContext);
      return;
    }
    try
    {
      c(paramContext);
      File localFile = new File(localApplicationInfo.dataDir, a);
      List localList = c.a(paramContext, localApplicationInfo, localFile, false);
      if (a(localList))
      {
        a((ClassLoader)localObject, localFile, localList);
        Log.i("MultiDex", "install done");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", localThrowable);
        continue;
        Log.w("MultiDex", "Files were not valid zip files.  Forcing a reload.");
        paramContext = c.a(paramContext, localApplicationInfo, localThrowable, true);
        if (!a(paramContext))
          break;
        a((ClassLoader)localObject, localThrowable, paramContext);
      }
    }
    throw new RuntimeException("Zip files were not valid.");
  }

  private static void a(ClassLoader paramClassLoader, File paramFile, List<File> paramList)
    throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException
  {
    Object localObject;
    ArrayList localArrayList;
    if (!paramList.isEmpty())
    {
      if (Build.VERSION.SDK_INT < 19)
        break label231;
      localObject = b(paramClassLoader, "pathList").get(paramClassLoader);
      localArrayList = new ArrayList();
      paramList = new ArrayList(paramList);
      a(localObject, "dexElements", (Object[])a(localObject, "makeDexElements", new Class[] { ArrayList.class, File.class, ArrayList.class }).invoke(localObject, new Object[] { paramList, paramFile, localArrayList }));
      if (localArrayList.size() > 0)
      {
        paramFile = localArrayList.iterator();
        while (paramFile.hasNext())
          Log.w("MultiDex", "Exception in makeDexElement", (IOException)paramFile.next());
        paramList = b(paramClassLoader, "dexElementsSuppressedExceptions");
        localObject = (IOException[])paramList.get(paramClassLoader);
        if (localObject != null)
          break label196;
        paramFile = (IOException[])localArrayList.toArray(new IOException[localArrayList.size()]);
      }
    }
    while (true)
    {
      paramList.set(paramClassLoader, paramFile);
      return;
      label196: paramFile = new IOException[localArrayList.size() + localObject.length];
      localArrayList.toArray(paramFile);
      System.arraycopy(localObject, 0, paramFile, localArrayList.size(), localObject.length);
    }
    label231: if (Build.VERSION.SDK_INT >= 14)
    {
      paramClassLoader = b(paramClassLoader, "pathList").get(paramClassLoader);
      paramList = new ArrayList(paramList);
      a(paramClassLoader, "dexElements", (Object[])a(paramClassLoader, "makeDexElements", new Class[] { ArrayList.class, File.class }).invoke(paramClassLoader, new Object[] { paramList, paramFile }));
      return;
    }
    b.a(paramClassLoader, paramList);
  }

  private static boolean a(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Object localObject;
    if (paramString != null)
    {
      localObject = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(paramString);
      bool1 = bool2;
      if (!((Matcher)localObject).matches());
    }
    try
    {
      int i = Integer.parseInt(((Matcher)localObject).group(1));
      int j = Integer.parseInt(((Matcher)localObject).group(2));
      if (i <= 2)
      {
        bool1 = bool2;
        if (i == 2)
        {
          bool1 = bool2;
          if (j <= 0);
        }
      }
      else
      {
        bool1 = true;
      }
      localObject = new StringBuilder("VM with version ").append(paramString);
      if (bool1);
      for (paramString = " has multidex support"; ; paramString = " does not have multidex support")
      {
        Log.i("MultiDex", paramString);
        return bool1;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        bool1 = bool2;
    }
  }

  private static boolean a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
      if (!c.a((File)paramList.next()))
        return false;
    return true;
  }

  private static ApplicationInfo b(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    PackageManager localPackageManager;
    try
    {
      localPackageManager = paramContext.getPackageManager();
      paramContext = paramContext.getPackageName();
      if ((localPackageManager == null) || (paramContext == null))
        return null;
    }
    catch (RuntimeException paramContext)
    {
      Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", paramContext);
      return null;
    }
    return localPackageManager.getApplicationInfo(paramContext, 128);
  }

  private static Field b(Object paramObject, String paramString)
    throws NoSuchFieldException
  {
    Class localClass = paramObject.getClass();
    while (localClass != null)
      try
      {
        Field localField = localClass.getDeclaredField(paramString);
        if (!localField.isAccessible())
          localField.setAccessible(true);
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localClass = localClass.getSuperclass();
      }
    throw new NoSuchFieldException("Field " + paramString + " not found in " + paramObject.getClass());
  }

  private static void c(Context paramContext)
    throws Exception
  {
    paramContext = new File(paramContext.getFilesDir(), "secondary-dexes");
    File[] arrayOfFile;
    if (paramContext.isDirectory())
    {
      Log.i("MultiDex", "Clearing old secondary dex dir (" + paramContext.getPath() + ").");
      arrayOfFile = paramContext.listFiles();
      if (arrayOfFile == null)
        Log.w("MultiDex", "Failed to list secondary dex dir content (" + paramContext.getPath() + ").");
    }
    else
    {
      return;
    }
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = arrayOfFile[i];
      Log.i("MultiDex", "Trying to delete old file " + localFile.getPath() + " of size " + localFile.length());
      if (!localFile.delete())
        Log.w("MultiDex", "Failed to delete old file " + localFile.getPath());
      while (true)
      {
        i += 1;
        break;
        Log.i("MultiDex", "Deleted old file " + localFile.getPath());
      }
    }
    if (!paramContext.delete())
    {
      Log.w("MultiDex", "Failed to delete secondary dex dir " + paramContext.getPath());
      return;
    }
    Log.i("MultiDex", "Deleted old secondary dex dir " + paramContext.getPath());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.b.a
 * JD-Core Version:    0.6.2
 */