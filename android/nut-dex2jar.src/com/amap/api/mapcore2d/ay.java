package com.amap.api.mapcore2d;

import android.graphics.PointF;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class ay
  implements View.OnKeyListener
{
  private float a = 0.0F;
  private float b = 0.0F;
  private bk c;
  private boolean d;
  private ay.b e;
  private ay.a f;

  ay(bk parambk)
  {
    this.c = parambk;
    this.d = false;
    this.e = new ay.b(this, null);
    this.f = new ay.a(this, null);
  }

  private boolean a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramInt1, paramInt2, paramBoolean1, paramBoolean2, 1);
  }

  private boolean a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    this.c.c.g().L();
    boolean bool = false;
    float f1;
    if (paramBoolean1)
      f1 = this.c.c.e() + paramInt3;
    while (true)
    {
      f1 = this.c.c.g().a(f1);
      if (f1 != this.c.c.e())
      {
        a(paramInt1, paramInt2, f1, paramBoolean1, paramBoolean2);
        bool = true;
      }
      try
      {
        if (this.c.h.p().a())
          this.c.h.M();
        return bool;
        f1 = this.c.c.e() - paramInt3;
      }
      catch (RemoteException localRemoteException)
      {
        cz.a(localRemoteException, "MapController", "zoomWithAnimation");
      }
    }
    return bool;
  }

  private boolean b(ab paramab)
  {
    if ((paramab == null) || (this.c == null) || (this.c.c == null));
    ab localab;
    do
    {
      return false;
      localab = this.c.c.f();
    }
    while ((localab == null) || ((paramab.b() == localab.b()) && (paramab.a() == localab.a())));
    return true;
  }

  private void c(ab paramab)
  {
    this.c.h.L();
    this.c.c.a(paramab);
  }

  private float e(float paramFloat)
  {
    b localb = this.c.c.g();
    localb.L();
    paramFloat = localb.a(paramFloat);
    this.c.c.a(paramFloat);
    try
    {
      if (this.c.h.p().a())
        this.c.h.M();
      return paramFloat;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MapController", "setZoom");
    }
    return paramFloat;
  }

  private boolean f(float paramFloat)
  {
    if ((this.c == null) || (this.c.c == null));
    while (paramFloat == this.c.c.e())
      return false;
    return true;
  }

  public final float a()
  {
    return this.a;
  }

  public final void a(float paramFloat)
  {
    this.a = paramFloat;
  }

  // ERROR //
  public final void a(float paramFloat1, float paramFloat2)
  {
    // Byte code:
    //   0: fload_1
    //   1: fconst_0
    //   2: fcmpg
    //   3: ifle +9 -> 12
    //   6: fload_2
    //   7: fconst_0
    //   8: fcmpg
    //   9: ifgt +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   17: ifnull -5 -> 12
    //   20: aload_0
    //   21: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   24: getfield 55	com/amap/api/mapcore2d/bk:c	Lcom/amap/api/mapcore2d/bk$d;
    //   27: ifnull -15 -> 12
    //   30: aload_0
    //   31: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   34: getfield 126	com/amap/api/mapcore2d/bk:b	Lcom/amap/api/mapcore2d/bk$e;
    //   37: ifnull -25 -> 12
    //   40: fconst_0
    //   41: fstore 8
    //   43: fload 8
    //   45: fstore 7
    //   47: aload_0
    //   48: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   51: getfield 55	com/amap/api/mapcore2d/bk:c	Lcom/amap/api/mapcore2d/bk$d;
    //   54: invokevirtual 69	com/amap/api/mapcore2d/bk$d:e	()F
    //   57: fstore 9
    //   59: fload 8
    //   61: fstore 7
    //   63: aload_0
    //   64: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   67: getfield 126	com/amap/api/mapcore2d/bk:b	Lcom/amap/api/mapcore2d/bk$e;
    //   70: invokevirtual 129	com/amap/api/mapcore2d/bk$e:b	()I
    //   73: istore 10
    //   75: fload 8
    //   77: fstore 7
    //   79: aload_0
    //   80: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   83: getfield 126	com/amap/api/mapcore2d/bk:b	Lcom/amap/api/mapcore2d/bk$e;
    //   86: invokevirtual 130	com/amap/api/mapcore2d/bk$e:a	()I
    //   89: istore 11
    //   91: iload 10
    //   93: ifne +48 -> 141
    //   96: iload 11
    //   98: ifne +43 -> 141
    //   101: fload 8
    //   103: fstore 7
    //   105: aload_0
    //   106: fload_1
    //   107: putfield 24	com/amap/api/mapcore2d/ay:a	F
    //   110: fload 8
    //   112: fstore 7
    //   114: aload_0
    //   115: fload_2
    //   116: putfield 26	com/amap/api/mapcore2d/ay:b	F
    //   119: return
    //   120: astore 12
    //   122: fload 7
    //   124: fstore_1
    //   125: aload 12
    //   127: ldc 93
    //   129: ldc 132
    //   131: invokestatic 100	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload_0
    //   135: fload_1
    //   136: invokevirtual 134	com/amap/api/mapcore2d/ay:c	(F)F
    //   139: pop
    //   140: return
    //   141: iload 11
    //   143: i2f
    //   144: fload_1
    //   145: fdiv
    //   146: f2d
    //   147: dstore_3
    //   148: iload 10
    //   150: i2f
    //   151: fload_2
    //   152: fdiv
    //   153: f2d
    //   154: dstore 5
    //   156: dload_3
    //   157: dload 5
    //   159: invokestatic 140	java/lang/Math:min	(DD)D
    //   162: dstore_3
    //   163: aload_0
    //   164: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   167: getfield 144	com/amap/api/mapcore2d/bk:i	Lcom/amap/api/mapcore2d/bf;
    //   170: getfield 150	com/amap/api/mapcore2d/bf:k	D
    //   173: dload_3
    //   174: ddiv
    //   175: dstore 5
    //   177: iconst_0
    //   178: istore 10
    //   180: aload_0
    //   181: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   184: getfield 144	com/amap/api/mapcore2d/bk:i	Lcom/amap/api/mapcore2d/bf;
    //   187: getfield 152	com/amap/api/mapcore2d/bf:d	D
    //   190: dstore_3
    //   191: dload_3
    //   192: ldc2_w 153
    //   195: ddiv
    //   196: dstore_3
    //   197: dload_3
    //   198: dload 5
    //   200: dcmpl
    //   201: ifle +12 -> 213
    //   204: iload 10
    //   206: iconst_1
    //   207: iadd
    //   208: istore 10
    //   210: goto -19 -> 191
    //   213: aload_0
    //   214: getfield 28	com/amap/api/mapcore2d/ay:c	Lcom/amap/api/mapcore2d/bk;
    //   217: getfield 144	com/amap/api/mapcore2d/bk:i	Lcom/amap/api/mapcore2d/bf;
    //   220: getfield 152	com/amap/api/mapcore2d/bf:d	D
    //   223: iconst_1
    //   224: iload 10
    //   226: ishl
    //   227: i2d
    //   228: ddiv
    //   229: dload 5
    //   231: ddiv
    //   232: invokestatic 158	java/lang/Math:log	(D)D
    //   235: dstore_3
    //   236: ldc2_w 153
    //   239: invokestatic 158	java/lang/Math:log	(D)D
    //   242: dstore 5
    //   244: dload_3
    //   245: dload 5
    //   247: ddiv
    //   248: iload 10
    //   250: i2d
    //   251: dadd
    //   252: d2f
    //   253: fstore_1
    //   254: fload_1
    //   255: fstore 7
    //   257: aload_0
    //   258: fload_1
    //   259: invokevirtual 160	com/amap/api/mapcore2d/ay:d	(F)F
    //   262: fstore_2
    //   263: fload_2
    //   264: f2i
    //   265: istore 10
    //   267: fload_2
    //   268: iload 10
    //   270: i2f
    //   271: fsub
    //   272: fstore 7
    //   274: fload 7
    //   276: f2d
    //   277: dstore_3
    //   278: dload_3
    //   279: dconst_1
    //   280: dconst_1
    //   281: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   284: dsub
    //   285: ldc2_w 163
    //   288: dmul
    //   289: dsub
    //   290: dcmpl
    //   291: ifle +15 -> 306
    //   294: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   297: d2f
    //   298: iload 10
    //   300: i2f
    //   301: fadd
    //   302: fstore_1
    //   303: goto -169 -> 134
    //   306: fload 7
    //   308: f2d
    //   309: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   312: dcmpl
    //   313: ifle +19 -> 332
    //   316: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   319: ldc2_w 165
    //   322: dsub
    //   323: d2f
    //   324: iload 10
    //   326: i2f
    //   327: fadd
    //   328: fstore_1
    //   329: goto -195 -> 134
    //   332: fload_2
    //   333: fstore_1
    //   334: fload 7
    //   336: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   339: ldc2_w 165
    //   342: dsub
    //   343: d2f
    //   344: fcmpl
    //   345: ifne -211 -> 134
    //   348: getstatic 162	com/amap/api/mapcore2d/bk:a	D
    //   351: dstore_3
    //   352: dload_3
    //   353: ldc2_w 165
    //   356: dsub
    //   357: d2f
    //   358: iload 10
    //   360: i2f
    //   361: fadd
    //   362: fstore_1
    //   363: goto -229 -> 134
    //   366: astore 12
    //   368: fload 9
    //   370: fstore_1
    //   371: goto -246 -> 125
    //   374: astore 12
    //   376: fload_2
    //   377: fstore_1
    //   378: goto -253 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   47	59	120	java/lang/Exception
    //   63	75	120	java/lang/Exception
    //   79	91	120	java/lang/Exception
    //   105	110	120	java/lang/Exception
    //   114	119	120	java/lang/Exception
    //   257	263	120	java/lang/Exception
    //   156	177	366	java/lang/Exception
    //   180	191	366	java/lang/Exception
    //   191	197	366	java/lang/Exception
    //   213	244	366	java/lang/Exception
    //   278	303	374	java/lang/Exception
    //   306	329	374	java/lang/Exception
    //   334	352	374	java/lang/Exception
  }

  public final void a(int paramInt1, int paramInt2, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.e.a(paramInt1, paramInt2, paramFloat, paramBoolean1, paramBoolean2);
  }

  public final void a(ab paramab)
  {
    if (b(paramab))
      c(paramab);
  }

  public final void a(ab paramab, float paramFloat)
  {
    if ((!b(paramab)) && (!f(paramFloat)))
      return;
    c(paramab);
    e(paramFloat);
    q.a().b();
  }

  public final void a(ab paramab, int paramInt)
  {
    this.f.a(paramab, null, null, paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    this.e.a();
    this.f.a();
  }

  final boolean a(int paramInt)
  {
    return a(this.c.c.c() / 2, this.c.c.d() / 2, true, false, paramInt);
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, true);
  }

  public final float b()
  {
    return this.b;
  }

  public final void b(float paramFloat)
  {
    this.b = paramFloat;
  }

  public final void b(int paramInt1, int paramInt2)
  {
    if (this.d)
      this.d = false;
    while ((paramInt1 == 0) && (paramInt2 == 0))
      return;
    if (v.p == true)
    {
      PointF localPointF1 = new PointF(0.0F, 0.0F);
      PointF localPointF2 = new PointF(paramInt1, paramInt2);
      this.c.i.a(localPointF1, localPointF2, this.c.c.e());
    }
    this.c.c.a(false, false);
  }

  final boolean b(int paramInt)
  {
    return a(this.c.c.c() / 2, this.c.c.d() / 2, false, false, paramInt);
  }

  public final float c(float paramFloat)
  {
    if (!f(paramFloat))
      return paramFloat;
    e(paramFloat);
    q.a().b();
    return paramFloat;
  }

  public final boolean c()
  {
    return a(1);
  }

  public final float d(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat < this.c.c.b())
      f1 = this.c.c.b();
    paramFloat = f1;
    if (f1 > this.c.c.a())
      paramFloat = this.c.c.a();
    return paramFloat;
  }

  public final boolean d()
  {
    return b(1);
  }

  public final void e()
  {
    this.d = true;
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() != 0)
      return false;
    boolean bool = true;
    switch (paramInt)
    {
    default:
      bool = false;
    case 21:
    case 22:
    case 19:
    case 20:
    }
    while (true)
    {
      return bool;
      b(-10, 0);
      continue;
      b(10, 0);
      continue;
      b(0, -10);
      continue;
      b(0, 10);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ay
 * JD-Core Version:    0.6.2
 */