package com.soundcloud.android.crop;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public class CropImageActivity extends v
{
  boolean a;
  private final Handler b = new Handler();
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private Uri h;
  private Uri i;
  private int j;
  private ae k;
  private CropImageView l;
  private n m;

  // ERROR //
  private int a(Uri paramUri)
    throws IOException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: new 39	android/graphics/BitmapFactory$Options
    //   5: dup
    //   6: invokespecial 40	android/graphics/BitmapFactory$Options:<init>	()V
    //   9: astore 5
    //   11: aload 5
    //   13: iconst_1
    //   14: putfield 43	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   17: aload_0
    //   18: invokevirtual 47	com/soundcloud/android/crop/CropImageActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   21: aload_1
    //   22: invokevirtual 53	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   25: astore 4
    //   27: aload 4
    //   29: aconst_null
    //   30: aload 5
    //   32: invokestatic 59	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   35: pop
    //   36: aload 4
    //   38: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   41: iconst_1
    //   42: newarray int
    //   44: astore_1
    //   45: sipush 3379
    //   48: aload_1
    //   49: iconst_0
    //   50: invokestatic 70	android/opengl/GLES10:glGetIntegerv	(I[II)V
    //   53: aload_1
    //   54: iconst_0
    //   55: iaload
    //   56: istore_2
    //   57: iload_2
    //   58: ifne +47 -> 105
    //   61: sipush 2048
    //   64: istore_2
    //   65: aload 5
    //   67: getfield 73	android/graphics/BitmapFactory$Options:outHeight	I
    //   70: iload_3
    //   71: idiv
    //   72: iload_2
    //   73: if_icmpgt +14 -> 87
    //   76: aload 5
    //   78: getfield 76	android/graphics/BitmapFactory$Options:outWidth	I
    //   81: iload_3
    //   82: idiv
    //   83: iload_2
    //   84: if_icmple +32 -> 116
    //   87: iload_3
    //   88: iconst_1
    //   89: ishl
    //   90: istore_3
    //   91: goto -26 -> 65
    //   94: astore_1
    //   95: aconst_null
    //   96: astore 4
    //   98: aload 4
    //   100: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   103: aload_1
    //   104: athrow
    //   105: iload_2
    //   106: sipush 4096
    //   109: invokestatic 82	java/lang/Math:min	(II)I
    //   112: istore_2
    //   113: goto -48 -> 65
    //   116: iload_3
    //   117: ireturn
    //   118: astore_1
    //   119: goto -21 -> 98
    //
    // Exception table:
    //   from	to	target	type
    //   17	27	94	finally
    //   27	36	118	finally
  }

  // ERROR //
  private android.graphics.Bitmap a(android.graphics.Rect paramRect, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: fconst_0
    //   4: fstore 5
    //   6: aload_0
    //   7: getfield 90	com/soundcloud/android/crop/CropImageActivity:l	Lcom/soundcloud/android/crop/CropImageView;
    //   10: invokevirtual 94	com/soundcloud/android/crop/CropImageView:a	()V
    //   13: aload_0
    //   14: getfield 96	com/soundcloud/android/crop/CropImageActivity:k	Lcom/soundcloud/android/crop/ae;
    //   17: ifnull +10 -> 27
    //   20: aload_0
    //   21: getfield 96	com/soundcloud/android/crop/CropImageActivity:k	Lcom/soundcloud/android/crop/ae;
    //   24: invokevirtual 100	com/soundcloud/android/crop/ae:c	()V
    //   27: invokestatic 105	java/lang/System:gc	()V
    //   30: aload_0
    //   31: invokevirtual 47	com/soundcloud/android/crop/CropImageActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   34: aload_0
    //   35: getfield 107	com/soundcloud/android/crop/CropImageActivity:h	Landroid/net/Uri;
    //   38: invokevirtual 53	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   41: astore 8
    //   43: aload 8
    //   45: astore 10
    //   47: aload 8
    //   49: iconst_0
    //   50: invokestatic 113	android/graphics/BitmapRegionDecoder:newInstance	(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    //   53: astore 12
    //   55: aload 8
    //   57: astore 10
    //   59: aload 12
    //   61: invokevirtual 117	android/graphics/BitmapRegionDecoder:getWidth	()I
    //   64: istore 6
    //   66: aload 8
    //   68: astore 10
    //   70: aload 12
    //   72: invokevirtual 120	android/graphics/BitmapRegionDecoder:getHeight	()I
    //   75: istore 7
    //   77: aload_1
    //   78: astore 9
    //   80: aload 8
    //   82: astore 10
    //   84: aload_0
    //   85: getfield 122	com/soundcloud/android/crop/CropImageActivity:g	I
    //   88: ifeq +152 -> 240
    //   91: aload 8
    //   93: astore 10
    //   95: new 124	android/graphics/Matrix
    //   98: dup
    //   99: invokespecial 125	android/graphics/Matrix:<init>	()V
    //   102: astore 9
    //   104: aload 8
    //   106: astore 10
    //   108: aload 9
    //   110: aload_0
    //   111: getfield 122	com/soundcloud/android/crop/CropImageActivity:g	I
    //   114: ineg
    //   115: i2f
    //   116: invokevirtual 129	android/graphics/Matrix:setRotate	(F)V
    //   119: aload 8
    //   121: astore 10
    //   123: new 131	android/graphics/RectF
    //   126: dup
    //   127: invokespecial 132	android/graphics/RectF:<init>	()V
    //   130: astore 13
    //   132: aload 8
    //   134: astore 10
    //   136: aload 9
    //   138: aload 13
    //   140: new 131	android/graphics/RectF
    //   143: dup
    //   144: aload_1
    //   145: invokespecial 135	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
    //   148: invokevirtual 139	android/graphics/Matrix:mapRect	(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    //   151: pop
    //   152: aload 8
    //   154: astore 10
    //   156: aload 13
    //   158: getfield 143	android/graphics/RectF:left	F
    //   161: fconst_0
    //   162: fcmpg
    //   163: ifge +204 -> 367
    //   166: iload 6
    //   168: i2f
    //   169: fstore 4
    //   171: aload 8
    //   173: astore 10
    //   175: aload 13
    //   177: getfield 146	android/graphics/RectF:top	F
    //   180: fconst_0
    //   181: fcmpg
    //   182: ifge +8 -> 190
    //   185: iload 7
    //   187: i2f
    //   188: fstore 5
    //   190: aload 8
    //   192: astore 10
    //   194: aload 13
    //   196: fload 4
    //   198: fload 5
    //   200: invokevirtual 150	android/graphics/RectF:offset	(FF)V
    //   203: aload 8
    //   205: astore 10
    //   207: new 152	android/graphics/Rect
    //   210: dup
    //   211: aload 13
    //   213: getfield 143	android/graphics/RectF:left	F
    //   216: f2i
    //   217: aload 13
    //   219: getfield 146	android/graphics/RectF:top	F
    //   222: f2i
    //   223: aload 13
    //   225: getfield 155	android/graphics/RectF:right	F
    //   228: f2i
    //   229: aload 13
    //   231: getfield 158	android/graphics/RectF:bottom	F
    //   234: f2i
    //   235: invokespecial 161	android/graphics/Rect:<init>	(IIII)V
    //   238: astore 9
    //   240: aload 8
    //   242: astore 10
    //   244: aload 12
    //   246: aload 9
    //   248: new 39	android/graphics/BitmapFactory$Options
    //   251: dup
    //   252: invokespecial 40	android/graphics/BitmapFactory$Options:<init>	()V
    //   255: invokevirtual 165	android/graphics/BitmapRegionDecoder:decodeRegion	(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   258: astore_1
    //   259: aload_1
    //   260: astore 11
    //   262: aload_1
    //   263: ifnull +96 -> 359
    //   266: aload 8
    //   268: astore 10
    //   270: aload 9
    //   272: invokevirtual 168	android/graphics/Rect:width	()I
    //   275: iload_2
    //   276: if_icmpgt +19 -> 295
    //   279: aload_1
    //   280: astore 11
    //   282: aload 8
    //   284: astore 10
    //   286: aload 9
    //   288: invokevirtual 171	android/graphics/Rect:height	()I
    //   291: iload_3
    //   292: if_icmple +67 -> 359
    //   295: aload 8
    //   297: astore 10
    //   299: new 124	android/graphics/Matrix
    //   302: dup
    //   303: invokespecial 125	android/graphics/Matrix:<init>	()V
    //   306: astore 11
    //   308: aload 8
    //   310: astore 10
    //   312: aload 11
    //   314: iload_2
    //   315: i2f
    //   316: aload 9
    //   318: invokevirtual 168	android/graphics/Rect:width	()I
    //   321: i2f
    //   322: fdiv
    //   323: iload_3
    //   324: i2f
    //   325: aload 9
    //   327: invokevirtual 171	android/graphics/Rect:height	()I
    //   330: i2f
    //   331: fdiv
    //   332: invokevirtual 175	android/graphics/Matrix:postScale	(FF)Z
    //   335: pop
    //   336: aload 8
    //   338: astore 10
    //   340: aload_1
    //   341: iconst_0
    //   342: iconst_0
    //   343: aload_1
    //   344: invokevirtual 178	android/graphics/Bitmap:getWidth	()I
    //   347: aload_1
    //   348: invokevirtual 179	android/graphics/Bitmap:getHeight	()I
    //   351: aload 11
    //   353: iconst_1
    //   354: invokestatic 183	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   357: astore 11
    //   359: aload 8
    //   361: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   364: aload 11
    //   366: areturn
    //   367: fconst_0
    //   368: fstore 4
    //   370: goto -199 -> 171
    //   373: astore 10
    //   375: aload 11
    //   377: astore_1
    //   378: aload 10
    //   380: astore 11
    //   382: aload 8
    //   384: astore 10
    //   386: new 88	java/lang/IllegalArgumentException
    //   389: dup
    //   390: new 185	java/lang/StringBuilder
    //   393: dup
    //   394: ldc 187
    //   396: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   399: aload 9
    //   401: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   404: ldc 196
    //   406: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: iload 6
    //   411: invokevirtual 202	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   414: ldc 204
    //   416: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: iload 7
    //   421: invokevirtual 202	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   424: ldc 204
    //   426: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: aload_0
    //   430: getfield 122	com/soundcloud/android/crop/CropImageActivity:g	I
    //   433: invokevirtual 202	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   436: ldc 206
    //   438: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   444: aload 11
    //   446: invokespecial 213	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   449: athrow
    //   450: astore 9
    //   452: aload_1
    //   453: astore 10
    //   455: aload 8
    //   457: astore_1
    //   458: aload 10
    //   460: astore 8
    //   462: new 185	java/lang/StringBuilder
    //   465: dup
    //   466: ldc 215
    //   468: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   471: aload 9
    //   473: invokevirtual 218	java/io/IOException:getMessage	()Ljava/lang/String;
    //   476: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   482: aload 9
    //   484: invokestatic 222	com/soundcloud/android/crop/u:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   487: aload_0
    //   488: aload 9
    //   490: invokespecial 225	com/soundcloud/android/crop/CropImageActivity:a	(Ljava/lang/Throwable;)V
    //   493: aload_1
    //   494: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   497: aload 8
    //   499: areturn
    //   500: astore 9
    //   502: aconst_null
    //   503: astore 8
    //   505: aconst_null
    //   506: astore_1
    //   507: aload 8
    //   509: astore 10
    //   511: new 185	java/lang/StringBuilder
    //   514: dup
    //   515: ldc 227
    //   517: invokespecial 190	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   520: aload 9
    //   522: invokevirtual 228	java/lang/OutOfMemoryError:getMessage	()Ljava/lang/String;
    //   525: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   531: aload 9
    //   533: invokestatic 222	com/soundcloud/android/crop/u:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   536: aload 8
    //   538: astore 10
    //   540: aload_0
    //   541: aload 9
    //   543: invokespecial 225	com/soundcloud/android/crop/CropImageActivity:a	(Ljava/lang/Throwable;)V
    //   546: aload 8
    //   548: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   551: aload_1
    //   552: areturn
    //   553: astore_1
    //   554: aconst_null
    //   555: astore 10
    //   557: aload 10
    //   559: invokestatic 64	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   562: aload_1
    //   563: athrow
    //   564: astore_1
    //   565: goto -8 -> 557
    //   568: astore 8
    //   570: aload_1
    //   571: astore 10
    //   573: aload 8
    //   575: astore_1
    //   576: goto -19 -> 557
    //   579: astore 9
    //   581: aconst_null
    //   582: astore_1
    //   583: goto -76 -> 507
    //   586: astore 9
    //   588: goto -81 -> 507
    //   591: astore 9
    //   593: goto -86 -> 507
    //   596: astore 9
    //   598: aconst_null
    //   599: astore_1
    //   600: aconst_null
    //   601: astore 8
    //   603: goto -141 -> 462
    //   606: astore 9
    //   608: aload 8
    //   610: astore_1
    //   611: aconst_null
    //   612: astore 8
    //   614: goto -152 -> 462
    //   617: astore 9
    //   619: aload 8
    //   621: astore 10
    //   623: aload_1
    //   624: astore 8
    //   626: aload 10
    //   628: astore_1
    //   629: goto -167 -> 462
    //   632: astore 11
    //   634: goto -252 -> 382
    //
    // Exception table:
    //   from	to	target	type
    //   244	259	373	java/lang/IllegalArgumentException
    //   386	450	450	java/io/IOException
    //   30	43	500	java/lang/OutOfMemoryError
    //   30	43	553	finally
    //   47	55	564	finally
    //   59	66	564	finally
    //   70	77	564	finally
    //   84	91	564	finally
    //   95	104	564	finally
    //   108	119	564	finally
    //   123	132	564	finally
    //   136	152	564	finally
    //   156	166	564	finally
    //   175	185	564	finally
    //   194	203	564	finally
    //   207	240	564	finally
    //   244	259	564	finally
    //   270	279	564	finally
    //   286	295	564	finally
    //   299	308	564	finally
    //   312	336	564	finally
    //   340	359	564	finally
    //   386	450	564	finally
    //   511	536	564	finally
    //   540	546	564	finally
    //   462	493	568	finally
    //   47	55	579	java/lang/OutOfMemoryError
    //   59	66	579	java/lang/OutOfMemoryError
    //   70	77	579	java/lang/OutOfMemoryError
    //   84	91	579	java/lang/OutOfMemoryError
    //   95	104	579	java/lang/OutOfMemoryError
    //   108	119	579	java/lang/OutOfMemoryError
    //   123	132	579	java/lang/OutOfMemoryError
    //   136	152	579	java/lang/OutOfMemoryError
    //   156	166	579	java/lang/OutOfMemoryError
    //   175	185	579	java/lang/OutOfMemoryError
    //   194	203	579	java/lang/OutOfMemoryError
    //   207	240	579	java/lang/OutOfMemoryError
    //   244	259	579	java/lang/OutOfMemoryError
    //   270	279	586	java/lang/OutOfMemoryError
    //   286	295	586	java/lang/OutOfMemoryError
    //   299	308	586	java/lang/OutOfMemoryError
    //   312	336	586	java/lang/OutOfMemoryError
    //   340	359	586	java/lang/OutOfMemoryError
    //   386	450	591	java/lang/OutOfMemoryError
    //   30	43	596	java/io/IOException
    //   47	55	606	java/io/IOException
    //   59	66	606	java/io/IOException
    //   70	77	606	java/io/IOException
    //   84	91	606	java/io/IOException
    //   95	104	606	java/io/IOException
    //   108	119	606	java/io/IOException
    //   123	132	606	java/io/IOException
    //   136	152	606	java/io/IOException
    //   156	166	606	java/io/IOException
    //   175	185	606	java/io/IOException
    //   194	203	606	java/io/IOException
    //   207	240	606	java/io/IOException
    //   244	259	606	java/io/IOException
    //   270	279	617	java/io/IOException
    //   286	295	617	java/io/IOException
    //   299	308	617	java/io/IOException
    //   312	336	617	java/io/IOException
    //   340	359	617	java/io/IOException
    //   270	279	632	java/lang/IllegalArgumentException
    //   286	295	632	java/lang/IllegalArgumentException
    //   299	308	632	java/lang/IllegalArgumentException
    //   312	336	632	java/lang/IllegalArgumentException
    //   340	359	632	java/lang/IllegalArgumentException
  }

  private void a(Throwable paramThrowable)
  {
    setResult(404, new Intent().putExtra("error", paramThrowable));
  }

  public void onCreate(Bundle paramBundle)
  {
    BitmapFactory.Options localOptions = null;
    Object localObject4 = null;
    InputStream localInputStream = null;
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    if (Build.VERSION.SDK_INT >= 19)
      getWindow().clearFlags(67108864);
    setContentView(ab.crop__activity_crop);
    this.l = ((CropImageView)findViewById(aa.crop_image));
    this.l.c = this;
    this.l.setRecycler(new b(this));
    findViewById(aa.btn_cancel).setOnClickListener(new c(this));
    findViewById(aa.btn_done).setOnClickListener(new d(this));
    paramBundle = getIntent();
    Object localObject1 = paramBundle.getExtras();
    if (localObject1 != null)
    {
      this.c = ((Bundle)localObject1).getInt("aspect_x");
      this.d = ((Bundle)localObject1).getInt("aspect_y");
      this.e = ((Bundle)localObject1).getInt("max_x");
      this.f = ((Bundle)localObject1).getInt("max_y");
      this.i = ((Uri)((Bundle)localObject1).getParcelable("output"));
    }
    this.h = paramBundle.getData();
    Object localObject3;
    if (this.h != null)
    {
      this.g = k.a(k.a(this, getContentResolver(), this.h));
      localObject1 = localInputStream;
      localObject3 = localOptions;
      paramBundle = localObject4;
    }
    do
      try
      {
        this.j = a(this.h);
        localObject1 = localInputStream;
        localObject3 = localOptions;
        paramBundle = localObject4;
        localInputStream = getContentResolver().openInputStream(this.h);
        localObject1 = localInputStream;
        localObject3 = localInputStream;
        paramBundle = localInputStream;
        localOptions = new BitmapFactory.Options();
        localObject1 = localInputStream;
        localObject3 = localInputStream;
        paramBundle = localInputStream;
        localOptions.inSampleSize = this.j;
        localObject1 = localInputStream;
        localObject3 = localInputStream;
        paramBundle = localInputStream;
        this.k = new ae(BitmapFactory.decodeStream(localInputStream, null, localOptions), this.g);
        k.a(localInputStream);
        if (this.k == null)
        {
          finish();
          return;
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          paramBundle = (Bundle)localObject1;
          u.a("Error reading image: " + localIOException.getMessage(), localIOException);
          paramBundle = (Bundle)localObject1;
          a(localIOException);
          k.a((Closeable)localObject1);
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          paramBundle = localIOException;
          u.a("OOM reading image: " + localOutOfMemoryError.getMessage(), localOutOfMemoryError);
          paramBundle = localIOException;
          a(localOutOfMemoryError);
          k.a(localIOException);
        }
      }
      finally
      {
        k.a(paramBundle);
      }
    while (isFinishing());
    this.l.a(this.k, true);
    k.a(this, getResources().getString(ac.crop__wait), new e(this), this.b);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.k != null)
      this.k.c();
  }

  public boolean onSearchRequested()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.CropImageActivity
 * JD-Core Version:    0.6.2
 */