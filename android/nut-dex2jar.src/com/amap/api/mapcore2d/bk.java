package com.amap.api.mapcore2d;

import android.content.Context;

class bk
{
  static double a = 0.6499999761581421D;
  public bk.e b;
  public bk.d c;
  public bk.b d;
  public bk.a e;
  public bk.c f;
  public z g;
  public b h;
  public bf i = null;
  private at j;

  public bk(Context paramContext, b paramb, int paramInt)
  {
    this.h = paramb;
    this.c = new bk.d(this, paramb, null);
    this.i = new bf(this.c);
    this.i.a = paramInt;
    this.i.b = paramInt;
    this.i.a();
    a(paramContext);
    this.f = new bk.c(this, this, paramContext, null);
    this.e = new bk.a(this, paramContext, null);
    this.b = new bk.e(this);
    this.d = new bk.b(this);
    this.g = new z();
    this.c.a(false, false);
  }

  public void a()
  {
    this.e.a();
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
  }

  // ERROR //
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: new 110	android/util/DisplayMetrics
    //   3: dup
    //   4: invokespecial 111	android/util/DisplayMetrics:<init>	()V
    //   7: pop
    //   8: aload_1
    //   9: invokevirtual 117	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   12: invokevirtual 121	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   15: invokevirtual 127	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   18: astore 5
    //   20: aload 5
    //   22: invokevirtual 131	java/lang/Object:getClass	()Ljava/lang/Class;
    //   25: ldc 133
    //   27: invokevirtual 139	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull +144 -> 176
    //   35: aload 5
    //   37: getfield 142	android/util/DisplayMetrics:widthPixels	I
    //   40: aload 5
    //   42: getfield 145	android/util/DisplayMetrics:heightPixels	I
    //   45: imul
    //   46: i2l
    //   47: lstore_3
    //   48: aload_1
    //   49: aload 5
    //   51: invokevirtual 151	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   54: istore_2
    //   55: iload_2
    //   56: bipush 120
    //   58: if_icmpgt +68 -> 126
    //   61: iconst_1
    //   62: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   65: return
    //   66: astore_1
    //   67: aload_1
    //   68: ldc 158
    //   70: ldc 160
    //   72: invokestatic 165	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   75: aconst_null
    //   76: astore_1
    //   77: goto -46 -> 31
    //   80: astore_1
    //   81: aload_1
    //   82: ldc 158
    //   84: ldc 160
    //   86: invokestatic 165	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   89: aconst_null
    //   90: astore_1
    //   91: goto -60 -> 31
    //   94: astore_1
    //   95: aload_1
    //   96: ldc 158
    //   98: ldc 160
    //   100: invokestatic 165	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   103: sipush 160
    //   106: istore_2
    //   107: goto -52 -> 55
    //   110: astore_1
    //   111: aload_1
    //   112: ldc 158
    //   114: ldc 160
    //   116: invokestatic 165	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   119: sipush 160
    //   122: istore_2
    //   123: goto -68 -> 55
    //   126: iload_2
    //   127: sipush 160
    //   130: if_icmple +41 -> 171
    //   133: iload_2
    //   134: sipush 240
    //   137: if_icmpgt +8 -> 145
    //   140: iconst_2
    //   141: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   144: return
    //   145: lload_3
    //   146: ldc2_w 166
    //   149: lcmp
    //   150: ifle +8 -> 158
    //   153: iconst_2
    //   154: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   157: return
    //   158: lload_3
    //   159: ldc2_w 166
    //   162: lcmp
    //   163: ifge +8 -> 171
    //   166: iconst_1
    //   167: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   170: return
    //   171: iconst_3
    //   172: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   175: return
    //   176: aload 5
    //   178: getfield 142	android/util/DisplayMetrics:widthPixels	I
    //   181: aload 5
    //   183: getfield 145	android/util/DisplayMetrics:heightPixels	I
    //   186: imul
    //   187: i2l
    //   188: lstore_3
    //   189: lload_3
    //   190: ldc2_w 166
    //   193: lcmp
    //   194: ifle +8 -> 202
    //   197: iconst_2
    //   198: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   201: return
    //   202: lload_3
    //   203: ldc2_w 166
    //   206: lcmp
    //   207: ifge +8 -> 215
    //   210: iconst_1
    //   211: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   214: return
    //   215: iconst_3
    //   216: putstatic 156	com/amap/api/mapcore2d/v:l	I
    //   219: return
    //
    // Exception table:
    //   from	to	target	type
    //   20	31	66	java/lang/SecurityException
    //   20	31	80	java/lang/NoSuchFieldException
    //   48	55	94	java/lang/IllegalArgumentException
    //   48	55	110	java/lang/IllegalAccessException
  }

  public void a(boolean paramBoolean)
  {
    this.e.b(paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bk
 * JD-Core Version:    0.6.2
 */