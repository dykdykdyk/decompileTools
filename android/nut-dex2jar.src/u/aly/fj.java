package u.aly;

import android.content.Context;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class fj
{
  private static final byte[] e = "pbl0".getBytes();
  private static fj f;
  t a;
  fk b = new fk();
  bl c = null;
  Context d;

  private fj(Context paramContext)
  {
    this.d = paramContext;
  }

  public static String a(bl parambl)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = new TreeMap(parambl.a).entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append((String)localEntry.getKey());
      if (((bs)localEntry.getValue()).a())
        localStringBuilder.append(((bs)localEntry.getValue()).a);
      localStringBuilder.append(((bs)localEntry.getValue()).b);
      localStringBuilder.append(((bs)localEntry.getValue()).c);
    }
    localStringBuilder.append(parambl.b);
    return cs.a(localStringBuilder.toString()).toLowerCase(Locale.US);
  }

  // ERROR //
  public static fj a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: ldc 2
    //   7: monitorenter
    //   8: getstatic 135	u/aly/fj:f	Lu/aly/fj;
    //   11: ifnonnull +106 -> 117
    //   14: new 2	u/aly/fj
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 137	u/aly/fj:<init>	(Landroid/content/Context;)V
    //   22: astore 5
    //   24: aload 5
    //   26: putstatic 135	u/aly/fj:f	Lu/aly/fj;
    //   29: new 139	java/io/File
    //   32: dup
    //   33: aload 5
    //   35: getfield 42	u/aly/fj:d	Landroid/content/Context;
    //   38: invokevirtual 145	android/content/Context:getFilesDir	()Ljava/io/File;
    //   41: ldc 147
    //   43: invokespecial 150	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   46: invokevirtual 153	java/io/File:exists	()Z
    //   49: istore_1
    //   50: iload_1
    //   51: ifeq +66 -> 117
    //   54: aload 5
    //   56: getfield 42	u/aly/fj:d	Landroid/content/Context;
    //   59: ldc 147
    //   61: invokevirtual 157	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   64: astore_0
    //   65: aload_0
    //   66: astore_2
    //   67: aload_0
    //   68: invokestatic 160	u/aly/cs:b	(Ljava/io/InputStream;)[B
    //   71: astore_3
    //   72: aload_3
    //   73: astore_2
    //   74: aload_0
    //   75: invokestatic 163	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   78: aload_2
    //   79: ifnull +38 -> 117
    //   82: new 50	u/aly/bl
    //   85: dup
    //   86: invokespecial 164	u/aly/bl:<init>	()V
    //   89: astore_0
    //   90: new 166	u/aly/cz
    //   93: dup
    //   94: invokespecial 167	u/aly/cz:<init>	()V
    //   97: aload_0
    //   98: aload_2
    //   99: invokevirtual 170	u/aly/cz:a	(Lu/aly/cw;[B)V
    //   102: aload 5
    //   104: aload_0
    //   105: putfield 40	u/aly/fj:c	Lu/aly/bl;
    //   108: aload 5
    //   110: getfield 38	u/aly/fj:b	Lu/aly/fk;
    //   113: aload_0
    //   114: invokevirtual 173	u/aly/fk:a	(Lu/aly/bl;)V
    //   117: getstatic 135	u/aly/fj:f	Lu/aly/fj;
    //   120: astore_0
    //   121: ldc 2
    //   123: monitorexit
    //   124: aload_0
    //   125: areturn
    //   126: astore_3
    //   127: aconst_null
    //   128: astore_0
    //   129: aload_0
    //   130: astore_2
    //   131: aload_3
    //   132: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   135: aload_0
    //   136: invokestatic 163	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   139: aload 4
    //   141: astore_2
    //   142: goto -64 -> 78
    //   145: astore_0
    //   146: ldc 2
    //   148: monitorexit
    //   149: aload_0
    //   150: athrow
    //   151: astore_0
    //   152: aload_2
    //   153: invokestatic 163	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   156: aload_0
    //   157: athrow
    //   158: astore_0
    //   159: aload_0
    //   160: invokevirtual 176	java/lang/Exception:printStackTrace	()V
    //   163: goto -46 -> 117
    //   166: astore_0
    //   167: goto -15 -> 152
    //   170: astore_3
    //   171: goto -42 -> 129
    //
    // Exception table:
    //   from	to	target	type
    //   54	65	126	java/lang/Exception
    //   8	50	145	finally
    //   74	78	145	finally
    //   82	117	145	finally
    //   117	121	145	finally
    //   135	139	145	finally
    //   152	158	145	finally
    //   159	163	145	finally
    //   54	65	151	finally
    //   82	117	158	java/lang/Exception
    //   67	72	166	finally
    //   131	135	166	finally
    //   67	72	170	java/lang/Exception
  }

  static boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2 == null;
    return paramString1.equals(paramString2);
  }

  public static byte[] a(bs parambs)
  {
    Object localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(null);
    ((ByteBuffer)localObject).putLong(parambs.b);
    parambs = ((ByteBuffer)localObject).array();
    localObject = e;
    byte[] arrayOfByte = new byte[4];
    int i = 0;
    while (i < 4)
    {
      arrayOfByte[i] = ((byte)(parambs[i] ^ localObject[i]));
      i += 1;
    }
    return arrayOfByte;
  }

  static bl b(bl parambl)
  {
    Map localMap = parambl.a;
    Object localObject = new ArrayList(localMap.size() / 2);
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (!((bs)localEntry.getValue()).a())
        ((List)localObject).add(localEntry.getKey());
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
      localMap.remove((String)((Iterator)localObject).next());
    return parambl;
  }

  public final bl a()
  {
    try
    {
      bl localbl = this.c;
      return localbl;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fj
 * JD-Core Version:    0.6.2
 */