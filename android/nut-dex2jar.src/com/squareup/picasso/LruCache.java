package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class LruCache
  implements Cache
{
  private int evictionCount;
  private int hitCount;
  final LinkedHashMap<String, Bitmap> map;
  private final int maxSize;
  private int missCount;
  private int putCount;
  private int size;

  public LruCache(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("Max size must be positive.");
    this.maxSize = paramInt;
    this.map = new LinkedHashMap(0, 0.75F, true);
  }

  public LruCache(Context paramContext)
  {
    this(Utils.calculateMemoryCacheSize(paramContext));
  }

  // ERROR //
  private void trimToSize(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 51	com/squareup/picasso/LruCache:size	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 38	com/squareup/picasso/LruCache:map	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 55	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 51	com/squareup/picasso/LruCache:size	I
    //   23: ifeq +41 -> 64
    //   26: new 57	java/lang/IllegalStateException
    //   29: dup
    //   30: new 59	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 64	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 70	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 76
    //   49: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 80	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 51	com/squareup/picasso/LruCache:size	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 38	com/squareup/picasso/LruCache:map	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 55	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 38	com/squareup/picasso/LruCache:map	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 84	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 90 1 0
    //   97: invokeinterface 96 1 0
    //   102: checkcast 98	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 101 1 0
    //   112: checkcast 103	java/lang/String
    //   115: astore_2
    //   116: aload_3
    //   117: invokeinterface 106 1 0
    //   122: checkcast 108	android/graphics/Bitmap
    //   125: astore_3
    //   126: aload_0
    //   127: getfield 38	com/squareup/picasso/LruCache:map	Ljava/util/LinkedHashMap;
    //   130: aload_2
    //   131: invokevirtual 112	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   134: pop
    //   135: aload_0
    //   136: aload_0
    //   137: getfield 51	com/squareup/picasso/LruCache:size	I
    //   140: aload_3
    //   141: invokestatic 116	com/squareup/picasso/Utils:getBitmapBytes	(Landroid/graphics/Bitmap;)I
    //   144: isub
    //   145: putfield 51	com/squareup/picasso/LruCache:size	I
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 118	com/squareup/picasso/LruCache:evictionCount	I
    //   153: iconst_1
    //   154: iadd
    //   155: putfield 118	com/squareup/picasso/LruCache:evictionCount	I
    //   158: aload_0
    //   159: monitorexit
    //   160: goto -160 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   60	62	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	160	59	finally
  }

  public final void clear()
  {
    try
    {
      evictAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void clearKeyUri(String paramString)
  {
    int i = 0;
    while (true)
      try
      {
        int j = paramString.length();
        Iterator localIterator = this.map.entrySet().iterator();
        if (localIterator.hasNext())
        {
          Object localObject = (Map.Entry)localIterator.next();
          String str = (String)((Map.Entry)localObject).getKey();
          localObject = (Bitmap)((Map.Entry)localObject).getValue();
          int k = str.indexOf('\n');
          if ((k == j) && (str.substring(0, k).equals(paramString)))
          {
            localIterator.remove();
            this.size -= Utils.getBitmapBytes((Bitmap)localObject);
            i = 1;
          }
        }
        else
        {
          if (i != 0)
            trimToSize(this.maxSize);
          return;
        }
      }
      finally
      {
      }
  }

  public final void evictAll()
  {
    trimToSize(-1);
  }

  public final int evictionCount()
  {
    try
    {
      int i = this.evictionCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Bitmap get(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("key == null");
    try
    {
      paramString = (Bitmap)this.map.get(paramString);
      if (paramString != null)
      {
        this.hitCount += 1;
        return paramString;
      }
      this.missCount += 1;
      return null;
    }
    finally
    {
    }
    throw paramString;
  }

  public final int hitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int maxSize()
  {
    try
    {
      int i = this.maxSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int missCount()
  {
    try
    {
      int i = this.missCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int putCount()
  {
    try
    {
      int i = this.putCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void set(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramBitmap == null))
      throw new NullPointerException("key == null || bitmap == null");
    try
    {
      this.putCount += 1;
      this.size += Utils.getBitmapBytes(paramBitmap);
      paramString = (Bitmap)this.map.put(paramString, paramBitmap);
      if (paramString != null)
        this.size -= Utils.getBitmapBytes(paramString);
      trimToSize(this.maxSize);
      return;
    }
    finally
    {
    }
    throw paramString;
  }

  public final int size()
  {
    try
    {
      int i = this.size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.LruCache
 * JD-Core Version:    0.6.2
 */