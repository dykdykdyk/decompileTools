package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.List;

class bm
{
  protected final bm.a[] a;
  protected final int b;
  protected final int c;
  protected final bm.a[] d;
  private boolean e = false;
  private long f = 0L;
  private at g;
  private Paint h = null;
  private Path i = null;

  public bm(int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, at paramat)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.g = paramat;
    this.e = paramBoolean;
    this.f = (1000000L * paramLong);
    if (this.b > 0)
    {
      this.a = new bm.a[this.b];
      this.d = new bm.a[this.c];
      return;
    }
    this.a = null;
    this.d = null;
  }

  private void a(Bitmap paramBitmap, List<ci> paramList)
  {
    paramList = new bm.1(this, paramList);
    n localn = new n(null);
    localn.a(paramBitmap);
    localn.a(paramList);
  }

  private long d()
  {
    return System.nanoTime();
  }

  protected int a()
  {
    int j = 0;
    while (j < this.c)
    {
      this.d[j] = null;
      j += 1;
    }
    j = 0;
    if (j < this.b)
    {
      Object localObject1 = this.a[j];
      k = 0;
      while (true)
      {
        if (k < this.c)
        {
          if (this.d[k] == null)
            this.d[k] = localObject1;
        }
        else
        {
          j += 1;
          break;
        }
        Object localObject2 = localObject1;
        if (this.d[k].d > ((bm.a)localObject1).d)
        {
          localObject2 = this.d[k];
          this.d[k] = localObject1;
        }
        k += 1;
        localObject1 = localObject2;
      }
    }
    int k = -1;
    j = 0;
    while (j < this.c)
    {
      int m = k;
      if (this.d[j] != null)
      {
        this.d[j].c = false;
        m = k;
        if (k < 0)
          m = this.d[j].e;
      }
      j += 1;
      k = m;
    }
    return k;
  }

  protected int a(String paramString)
  {
    if ((paramString == null) || (paramString.equals("") == true))
      return -1;
    int j = 0;
    while (j < this.b)
    {
      if ((this.a[j] != null) && (this.a[j].b.equals(paramString)))
      {
        if (!this.a[j].c)
          return -1;
        if ((this.e == true) && (d() - this.a[j].f > this.f))
        {
          this.a[j].c = false;
          return -1;
        }
        if (this.a[j].a == null)
          return -1;
        this.a[j].d = d();
        return j;
      }
      j += 1;
    }
    return -1;
  }

  // ERROR //
  protected int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean, List<ci> paramList, String paramString)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore 8
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: ifnonnull +21 -> 27
    //   9: aload_2
    //   10: ifnonnull +17 -> 27
    //   13: aload 4
    //   15: ifnonnull +12 -> 27
    //   18: iload 8
    //   20: istore 7
    //   22: aload_0
    //   23: monitorexit
    //   24: iload 7
    //   26: ireturn
    //   27: aload_0
    //   28: invokevirtual 109	com/amap/api/mapcore2d/bm:b	()I
    //   31: istore 7
    //   33: iload 7
    //   35: istore 6
    //   37: iload 7
    //   39: ifge +9 -> 48
    //   42: aload_0
    //   43: invokevirtual 111	com/amap/api/mapcore2d/bm:a	()I
    //   46: istore 6
    //   48: iload 8
    //   50: istore 7
    //   52: iload 6
    //   54: iflt -32 -> 22
    //   57: iload 8
    //   59: istore 7
    //   61: aload_0
    //   62: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   65: ifnull -43 -> 22
    //   68: aload_0
    //   69: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   72: iload 6
    //   74: aaload
    //   75: ifnull +56 -> 131
    //   78: aload_0
    //   79: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   82: iload 6
    //   84: aaload
    //   85: getfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   88: ifnull +43 -> 131
    //   91: aload_0
    //   92: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   95: iload 6
    //   97: aaload
    //   98: getfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   101: invokevirtual 117	android/graphics/Bitmap:isRecycled	()Z
    //   104: ifne +27 -> 131
    //   107: aload_0
    //   108: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   111: iload 6
    //   113: aaload
    //   114: getfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   117: invokevirtual 120	android/graphics/Bitmap:recycle	()V
    //   120: aload_0
    //   121: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   124: iload 6
    //   126: aaload
    //   127: aconst_null
    //   128: putfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   131: aload_0
    //   132: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   135: iload 6
    //   137: aaload
    //   138: getfield 123	com/amap/api/mapcore2d/bm$a:g	Ljava/util/List;
    //   141: ifnull +29 -> 170
    //   144: aload_0
    //   145: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   148: iload 6
    //   150: aaload
    //   151: getfield 123	com/amap/api/mapcore2d/bm$a:g	Ljava/util/List;
    //   154: invokeinterface 128 1 0
    //   159: aload_0
    //   160: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   163: iload 6
    //   165: aaload
    //   166: aconst_null
    //   167: putfield 123	com/amap/api/mapcore2d/bm$a:g	Ljava/util/List;
    //   170: iload_3
    //   171: iconst_1
    //   172: if_icmpne +200 -> 372
    //   175: aload_1
    //   176: ifnull +196 -> 372
    //   179: aload_0
    //   180: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   183: iload 6
    //   185: aaload
    //   186: aload_1
    //   187: iconst_0
    //   188: aload_1
    //   189: arraylength
    //   190: invokestatic 134	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   193: putfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   196: aload 4
    //   198: ifnull +55 -> 253
    //   201: aload_0
    //   202: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   205: iload 6
    //   207: aaload
    //   208: aload_0
    //   209: getfield 39	com/amap/api/mapcore2d/bm:g	Lcom/amap/api/mapcore2d/at;
    //   212: getfield 139	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/bf;
    //   215: getfield 143	com/amap/api/mapcore2d/bf:a	I
    //   218: aload_0
    //   219: getfield 39	com/amap/api/mapcore2d/bm:g	Lcom/amap/api/mapcore2d/at;
    //   222: getfield 139	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/bf;
    //   225: getfield 143	com/amap/api/mapcore2d/bf:a	I
    //   228: getstatic 149	android/graphics/Bitmap$Config:ARGB_4444	Landroid/graphics/Bitmap$Config;
    //   231: invokestatic 153	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   234: putfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   237: aload_0
    //   238: aload_0
    //   239: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   242: iload 6
    //   244: aaload
    //   245: getfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   248: aload 4
    //   250: invokespecial 155	com/amap/api/mapcore2d/bm:a	(Landroid/graphics/Bitmap;Ljava/util/List;)V
    //   253: aload_0
    //   254: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   257: iload 6
    //   259: aaload
    //   260: getfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   263: ifnonnull +20 -> 283
    //   266: iload 8
    //   268: istore 7
    //   270: aload_0
    //   271: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   274: iload 6
    //   276: aaload
    //   277: getfield 123	com/amap/api/mapcore2d/bm$a:g	Ljava/util/List;
    //   280: ifnull -258 -> 22
    //   283: aload_0
    //   284: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   287: iload 6
    //   289: aaload
    //   290: ifnull +126 -> 416
    //   293: aload_0
    //   294: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   297: iload 6
    //   299: aaload
    //   300: iconst_1
    //   301: putfield 82	com/amap/api/mapcore2d/bm$a:c	Z
    //   304: aload_0
    //   305: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   308: iload 6
    //   310: aaload
    //   311: aload 5
    //   313: putfield 96	com/amap/api/mapcore2d/bm$a:b	Ljava/lang/String;
    //   316: aload_0
    //   317: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   320: iload 6
    //   322: aaload
    //   323: aload_0
    //   324: invokespecial 98	com/amap/api/mapcore2d/bm:d	()J
    //   327: putfield 80	com/amap/api/mapcore2d/bm$a:d	J
    //   330: aload_0
    //   331: getfield 27	com/amap/api/mapcore2d/bm:e	Z
    //   334: iconst_1
    //   335: if_icmpne +81 -> 416
    //   338: aload_0
    //   339: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   342: iload 6
    //   344: aaload
    //   345: aload_0
    //   346: invokespecial 98	com/amap/api/mapcore2d/bm:d	()J
    //   349: putfield 99	com/amap/api/mapcore2d/bm$a:f	J
    //   352: goto +64 -> 416
    //   355: astore_1
    //   356: aload_1
    //   357: ldc 157
    //   359: ldc 159
    //   361: invokestatic 164	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   364: goto -168 -> 196
    //   367: astore_1
    //   368: aload_0
    //   369: monitorexit
    //   370: aload_1
    //   371: athrow
    //   372: aload_2
    //   373: ifnull -177 -> 196
    //   376: aload_0
    //   377: getfield 45	com/amap/api/mapcore2d/bm:a	[Lcom/amap/api/mapcore2d/bm$a;
    //   380: iload 6
    //   382: aaload
    //   383: aload_2
    //   384: iconst_0
    //   385: aload_2
    //   386: arraylength
    //   387: invokestatic 134	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   390: putfield 102	com/amap/api/mapcore2d/bm$a:a	Landroid/graphics/Bitmap;
    //   393: goto -197 -> 196
    //   396: astore_1
    //   397: goto -201 -> 196
    //   400: astore_1
    //   401: aload_1
    //   402: ldc 157
    //   404: ldc 159
    //   406: invokestatic 164	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   409: goto -213 -> 196
    //   412: astore_1
    //   413: goto -217 -> 196
    //   416: iload 6
    //   418: istore 7
    //   420: goto -398 -> 22
    //
    // Exception table:
    //   from	to	target	type
    //   179	196	355	java/lang/Throwable
    //   27	33	367	finally
    //   42	48	367	finally
    //   61	131	367	finally
    //   131	170	367	finally
    //   179	196	367	finally
    //   201	253	367	finally
    //   253	266	367	finally
    //   270	283	367	finally
    //   283	352	367	finally
    //   356	364	367	finally
    //   376	393	367	finally
    //   401	409	367	finally
    //   376	393	396	java/lang/OutOfMemoryError
    //   376	393	400	java/lang/Throwable
    //   179	196	412	java/lang/OutOfMemoryError
  }

  protected Bitmap a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.b));
    while (this.a[paramInt] == null)
      return null;
    return this.a[paramInt].a;
  }

  protected int b()
  {
    int k = -1;
    int j = 0;
    while (j < this.b)
    {
      if (this.a[j] == null)
      {
        this.a[j] = new bm.a(this);
        this.a[j].e = j;
        return j;
      }
      int m = k;
      if (!this.a[j].c)
      {
        m = k;
        if (k < 0)
          m = j;
      }
      j += 1;
      k = m;
    }
    return k;
  }

  protected void c()
  {
    int j = 0;
    while (j < this.b)
    {
      if (this.a[j] != null)
      {
        if ((this.a[j].a != null) && (!this.a[j].a.isRecycled()))
          this.a[j].a.recycle();
        this.a[j].a = null;
      }
      j += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bm
 * JD-Core Version:    0.6.2
 */