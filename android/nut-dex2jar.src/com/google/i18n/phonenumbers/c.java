package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

final class c
  implements b
{
  private static final Logger a = Logger.getLogger(c.class.getName());
  private final Map<String, k> b = Collections.synchronizedMap(new HashMap());
  private final Map<Integer, k> c = Collections.synchronizedMap(new HashMap());
  private final String d;
  private final a e;

  public c(a parama)
  {
    this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", parama);
  }

  private c(String paramString, a parama)
  {
    this.d = paramString;
    this.e = parama;
  }

  private static l a(ObjectInputStream paramObjectInputStream)
  {
    l locall = new l();
    try
    {
      locall.readExternal(paramObjectInputStream);
      try
      {
        paramObjectInputStream.close();
        return locall;
      }
      catch (IOException paramObjectInputStream)
      {
        a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        return locall;
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      a.log(Level.WARNING, "error reading input (ignored)", localIOException);
      try
      {
        paramObjectInputStream.close();
        return locall;
      }
      catch (IOException paramObjectInputStream)
      {
        a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        return locall;
      }
    }
    finally
    {
    }
    try
    {
      paramObjectInputStream.close();
      throw localObject;
    }
    catch (IOException paramObjectInputStream)
    {
      while (true)
        a.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
    }
  }

  private void a(String paramString, int paramInt)
  {
    boolean bool = "001".equals(paramString);
    String str = String.valueOf(String.valueOf(this.d));
    Object localObject1;
    Object localObject3;
    if (bool)
    {
      localObject1 = String.valueOf(paramInt);
      localObject1 = String.valueOf(String.valueOf(localObject1));
      str = str.length() + 1 + ((String)localObject1).length() + str + "_" + (String)localObject1;
      localObject1 = this.e.a(str);
      if (localObject1 != null)
        break label196;
      localObject1 = a;
      localObject3 = Level.SEVERE;
      paramString = String.valueOf(str);
      if (paramString.length() == 0)
        break label170;
      paramString = "missing metadata: ".concat(paramString);
      label127: ((Logger)localObject1).log((Level)localObject3, paramString);
      paramString = String.valueOf(str);
      if (paramString.length() == 0)
        break label183;
    }
    label170: label183: for (paramString = "missing metadata: ".concat(paramString); ; paramString = new String("missing metadata: "))
    {
      throw new IllegalStateException(paramString);
      localObject1 = paramString;
      break;
      paramString = new String("missing metadata: ");
      break label127;
    }
    label196: Object localObject4;
    try
    {
      localObject3 = a(new ObjectInputStream((InputStream)localObject1)).a;
      if (!((List)localObject3).isEmpty())
        break label389;
      localObject1 = a;
      localObject3 = Level.SEVERE;
      paramString = String.valueOf(str);
      if (paramString.length() == 0)
        break label363;
      paramString = "empty metadata: ".concat(paramString);
      ((Logger)localObject1).log((Level)localObject3, paramString);
      paramString = String.valueOf(str);
      if (paramString.length() == 0)
        break label376;
      paramString = "empty metadata: ".concat(paramString);
      label281: throw new IllegalStateException(paramString);
    }
    catch (IOException localIOException)
    {
      localObject3 = a;
      localObject4 = Level.SEVERE;
      paramString = String.valueOf(str);
      if (paramString.length() == 0)
        break label505;
    }
    paramString = "cannot load/parse metadata: ".concat(paramString);
    label322: ((Logger)localObject3).log((Level)localObject4, paramString, localIOException);
    paramString = String.valueOf(str);
    if (paramString.length() != 0);
    for (paramString = "cannot load/parse metadata: ".concat(paramString); ; paramString = new String("cannot load/parse metadata: "))
    {
      throw new RuntimeException(paramString, localIOException);
      label363: paramString = new String("empty metadata: ");
      break;
      label376: paramString = new String("empty metadata: ");
      break label281;
      label389: Level localLevel;
      if (((List)localObject3).size() > 1)
      {
        localObject4 = a;
        localLevel = Level.WARNING;
        localObject2 = String.valueOf(str);
        if (((String)localObject2).length() == 0)
          break label477;
      }
      label477: for (Object localObject2 = "invalid metadata (too many entries): ".concat((String)localObject2); ; localObject2 = new String("invalid metadata (too many entries): "))
      {
        ((Logger)localObject4).log(localLevel, (String)localObject2);
        localObject2 = (k)((List)localObject3).get(0);
        if (!bool)
          break;
        this.c.put(Integer.valueOf(paramInt), localObject2);
        return;
      }
      this.b.put(paramString, localObject2);
      return;
      label505: paramString = new String("cannot load/parse metadata: ");
      break label322;
    }
  }

  public final k a(int paramInt)
  {
    synchronized (this.c)
    {
      if (!this.c.containsKey(Integer.valueOf(paramInt)))
        a("001", paramInt);
      return (k)this.c.get(Integer.valueOf(paramInt));
    }
  }

  public final k a(String paramString)
  {
    synchronized (this.b)
    {
      if (!this.b.containsKey(paramString))
        a(paramString, 0);
      return (k)this.b.get(paramString);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.c
 * JD-Core Version:    0.6.2
 */