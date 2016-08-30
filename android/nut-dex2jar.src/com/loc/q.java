package com.loc;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

final class q extends ClassLoader
{
  private static q d = null;
  DexFile a = null;
  volatile boolean b = true;
  private final Context c;
  private final Map<String, Class<?>> e = new HashMap();
  private String f;
  private eo g;

  private q(Context paramContext, ClassLoader paramClassLoader)
  {
    super(paramClassLoader);
    this.c = paramContext;
  }

  static q a(Context paramContext, eo parameo, String paramString1, String paramString2, ClassLoader paramClassLoader)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    while (true)
    {
      try
      {
        if (!TextUtils.isEmpty(paramString1))
        {
          boolean bool = TextUtils.isEmpty(paramString2);
          if (bool)
            localObject1 = localObject2;
        }
        else
        {
          return localObject1;
        }
        s.a(paramContext, parameo);
        localObject1 = new File(paramString1);
        if (!((File)localObject1).exists())
        {
          n.b(paramContext, parameo.c, parameo.a);
          localObject1 = localObject2;
          continue;
        }
      }
      finally
      {
      }
      if (d == null)
        new Date().getTime();
      try
      {
        paramClassLoader = new q(paramContext.getApplicationContext(), paramClassLoader);
        d = paramClassLoader;
        paramClassLoader.g = parameo;
        d.a(paramString1, paramString2 + File.separator + n.a(((File)localObject1).getName()));
        new Date().getTime();
        new r(paramContext, paramString1, paramString2).start();
        localObject1 = d;
      }
      catch (Throwable parameo)
      {
        while (true)
          parameo.printStackTrace();
      }
    }
  }

  private void a(Context paramContext, String paramString1, String paramString2)
  {
    new Date().getTime();
    try
    {
      paramContext = new f(paramContext, t.a());
      File localFile = new File(paramString1);
      Object localObject1 = p.a(paramContext, localFile.getName());
      if (localObject1 != null)
        this.f = ((v)localObject1).e;
      localObject1 = this.g;
      Object localObject2 = localFile.getAbsolutePath();
      if (!n.a(paramContext, n.b(((eo)localObject1).c, ((eo)localObject1).a), (String)localObject2, (eo)localObject1))
      {
        this.b = false;
        n.b(this.c, paramContext, localFile.getName());
        localObject1 = n.a(this.c, paramContext, this.g);
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          this.f = ((String)localObject1);
          a(paramString1, paramString2 + File.separator + n.a(localFile.getName()));
          this.b = true;
        }
      }
      if (!localFile.exists())
        return;
      localObject1 = paramString2 + File.separator + n.a(localFile.getName());
      localObject2 = new File((String)localObject1);
      if (((File)localObject2).exists())
        if (!a(paramContext, n.a(localFile.getName()), this.f))
        {
          a(paramString1, paramString2 + File.separator + n.a(localFile.getName()));
          a((File)localObject2, (String)localObject1, this.f, paramContext);
        }
      while (true)
      {
        new Date().getTime();
        return;
        a(paramString1, paramString2 + File.separator + n.a(localFile.getName()));
        d.a((File)localObject2, (String)localObject1, this.f, paramContext);
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  private void a(File paramFile, String paramString1, String paramString2, f paramf)
  {
    if (!TextUtils.isEmpty(this.f))
    {
      paramString1 = ek.a(paramString1);
      paramFile = paramFile.getName();
      paramString1 = new w(paramFile, paramString1, this.g.c, this.g.a, paramString2);
      paramString1.f = "useodex";
      p.a(paramf, paramString1.a(), u.a(paramFile));
    }
  }

  private void a(String paramString1, String paramString2)
  {
    try
    {
      this.e.clear();
      b();
      this.a = DexFile.loadDex(paramString1, paramString2, 0);
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
      return;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
    }
  }

  private boolean a(f paramf, String paramString1, String paramString2)
  {
    String str = n.a(this.c, paramString1);
    if (n.a(paramf, paramString1, str, this.g))
      return true;
    if (p.a(paramf, paramString1) != null)
      return false;
    if (!TextUtils.isEmpty(this.f))
    {
      paramString2 = new w(paramString1, ek.a(str), this.g.c, this.g.a, paramString2);
      paramString2.f = "useodex";
      p.a(paramf, paramString2.a(), u.a(paramString1));
    }
    return true;
  }

  private void b()
  {
    if (this.a != null);
    try
    {
      this.a.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  static void b(Context paramContext, eo parameo, String paramString1, String paramString2, ClassLoader paramClassLoader)
  {
    while (true)
    {
      File localFile;
      try
      {
        if (!TextUtils.isEmpty(paramString1))
        {
          boolean bool = TextUtils.isEmpty(paramString2);
          if (!bool);
        }
        else
        {
          return;
        }
        s.a(paramContext, parameo);
        try
        {
          localFile = new File(paramString1);
          if (localFile.exists())
            break label78;
          n.b(paramContext, parameo.c, parameo.a);
        }
        catch (Throwable paramContext)
        {
          paramContext.printStackTrace();
        }
        continue;
      }
      finally
      {
      }
      label78: if (d != null)
      {
        q localq = d;
        localq.b();
        localq.e.clear();
      }
      paramClassLoader = new q(paramContext.getApplicationContext(), paramClassLoader);
      d = paramClassLoader;
      paramClassLoader.g = parameo;
      d.a(paramContext, paramString1, paramString2);
      d.a(paramString1, paramString2 + File.separator + n.a(localFile.getName()));
    }
  }

  protected final Class<?> findClass(String paramString)
    throws ClassNotFoundException
  {
    try
    {
      if (this.a == null)
        throw new ClassNotFoundException(paramString);
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      throw new ClassNotFoundException(paramString);
    }
    Class localClass = (Class)this.e.get(paramString);
    if (localClass != null)
      return localClass;
    localClass = this.a.loadClass(paramString, this);
    this.e.put(paramString, localClass);
    if (localClass == null)
      throw new ClassNotFoundException(paramString);
    return localClass;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.q
 * JD-Core Version:    0.6.2
 */