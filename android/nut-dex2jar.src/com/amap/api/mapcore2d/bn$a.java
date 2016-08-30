package com.amap.api.mapcore2d;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.MotionEvent;

public class bn$a extends bn
{
  float p;
  float q;
  float r;
  float s;
  long t = 0L;
  int u = 0;
  int v = 0;
  private long w = 0L;

  // ERROR //
  private void a(PointF paramPointF, MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: fconst_0
    //   1: fstore 4
    //   3: invokestatic 40	com/amap/api/mapcore2d/bn:b	()Ljava/lang/reflect/Method;
    //   6: aload_2
    //   7: iconst_1
    //   8: anewarray 42	java/lang/Object
    //   11: dup
    //   12: iconst_0
    //   13: iconst_0
    //   14: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: aastore
    //   18: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   21: checkcast 56	java/lang/Float
    //   24: invokevirtual 60	java/lang/Float:floatValue	()F
    //   27: fstore_3
    //   28: invokestatic 40	com/amap/api/mapcore2d/bn:b	()Ljava/lang/reflect/Method;
    //   31: aload_2
    //   32: iconst_1
    //   33: anewarray 42	java/lang/Object
    //   36: dup
    //   37: iconst_0
    //   38: iconst_1
    //   39: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   42: aastore
    //   43: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   46: checkcast 56	java/lang/Float
    //   49: invokevirtual 60	java/lang/Float:floatValue	()F
    //   52: fstore 5
    //   54: fload 5
    //   56: fload_3
    //   57: fadd
    //   58: fstore_3
    //   59: invokestatic 63	com/amap/api/mapcore2d/bn:c	()Ljava/lang/reflect/Method;
    //   62: aload_2
    //   63: iconst_1
    //   64: anewarray 42	java/lang/Object
    //   67: dup
    //   68: iconst_0
    //   69: iconst_0
    //   70: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   73: aastore
    //   74: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   77: checkcast 56	java/lang/Float
    //   80: invokevirtual 60	java/lang/Float:floatValue	()F
    //   83: fstore 5
    //   85: invokestatic 63	com/amap/api/mapcore2d/bn:c	()Ljava/lang/reflect/Method;
    //   88: aload_2
    //   89: iconst_1
    //   90: anewarray 42	java/lang/Object
    //   93: dup
    //   94: iconst_0
    //   95: iconst_1
    //   96: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   99: aastore
    //   100: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   103: checkcast 56	java/lang/Float
    //   106: invokevirtual 60	java/lang/Float:floatValue	()F
    //   109: fstore 6
    //   111: fload 5
    //   113: fload 6
    //   115: fadd
    //   116: fstore 4
    //   118: fload_3
    //   119: fstore 6
    //   121: fload 4
    //   123: fstore 5
    //   125: aload_0
    //   126: getfield 23	com/amap/api/mapcore2d/bn$a:u	I
    //   129: ifeq +31 -> 160
    //   132: fload_3
    //   133: fstore 6
    //   135: fload 4
    //   137: fstore 5
    //   139: aload_0
    //   140: getfield 25	com/amap/api/mapcore2d/bn$a:v	I
    //   143: ifeq +17 -> 160
    //   146: aload_0
    //   147: getfield 23	com/amap/api/mapcore2d/bn$a:u	I
    //   150: i2f
    //   151: fstore 6
    //   153: aload_0
    //   154: getfield 25	com/amap/api/mapcore2d/bn$a:v	I
    //   157: i2f
    //   158: fstore 5
    //   160: aload_1
    //   161: fload 6
    //   163: fconst_2
    //   164: fdiv
    //   165: fload 5
    //   167: fconst_2
    //   168: fdiv
    //   169: invokevirtual 69	android/graphics/PointF:set	(FF)V
    //   172: return
    //   173: astore 7
    //   175: aload 7
    //   177: ldc 71
    //   179: ldc 73
    //   181: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   184: fconst_0
    //   185: fstore_3
    //   186: goto -127 -> 59
    //   189: astore 7
    //   191: aload 7
    //   193: ldc 71
    //   195: ldc 73
    //   197: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   200: fconst_0
    //   201: fstore_3
    //   202: goto -143 -> 59
    //   205: astore 7
    //   207: aload 7
    //   209: ldc 71
    //   211: ldc 73
    //   213: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   216: fconst_0
    //   217: fstore_3
    //   218: goto -159 -> 59
    //   221: astore_2
    //   222: aload_2
    //   223: ldc 71
    //   225: ldc 73
    //   227: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   230: goto -112 -> 118
    //   233: astore_2
    //   234: aload_2
    //   235: ldc 71
    //   237: ldc 73
    //   239: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   242: goto -124 -> 118
    //   245: astore_2
    //   246: aload_2
    //   247: ldc 71
    //   249: ldc 73
    //   251: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   254: goto -136 -> 118
    //
    // Exception table:
    //   from	to	target	type
    //   3	54	173	java/lang/IllegalArgumentException
    //   3	54	189	java/lang/IllegalAccessException
    //   3	54	205	java/lang/reflect/InvocationTargetException
    //   59	111	221	java/lang/IllegalArgumentException
    //   59	111	233	java/lang/IllegalAccessException
    //   59	111	245	java/lang/reflect/InvocationTargetException
  }

  // ERROR //
  private float b(MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: fconst_0
    //   1: fstore_3
    //   2: invokestatic 40	com/amap/api/mapcore2d/bn:b	()Ljava/lang/reflect/Method;
    //   5: aload_1
    //   6: iconst_1
    //   7: anewarray 42	java/lang/Object
    //   10: dup
    //   11: iconst_0
    //   12: iconst_0
    //   13: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   16: aastore
    //   17: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 56	java/lang/Float
    //   23: invokevirtual 60	java/lang/Float:floatValue	()F
    //   26: fstore_2
    //   27: invokestatic 40	com/amap/api/mapcore2d/bn:b	()Ljava/lang/reflect/Method;
    //   30: aload_1
    //   31: iconst_1
    //   32: anewarray 42	java/lang/Object
    //   35: dup
    //   36: iconst_0
    //   37: iconst_1
    //   38: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   41: aastore
    //   42: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   45: checkcast 56	java/lang/Float
    //   48: invokevirtual 60	java/lang/Float:floatValue	()F
    //   51: fstore 4
    //   53: fload_2
    //   54: fload 4
    //   56: fsub
    //   57: fstore_2
    //   58: invokestatic 63	com/amap/api/mapcore2d/bn:c	()Ljava/lang/reflect/Method;
    //   61: aload_1
    //   62: iconst_1
    //   63: anewarray 42	java/lang/Object
    //   66: dup
    //   67: iconst_0
    //   68: iconst_0
    //   69: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   72: aastore
    //   73: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   76: checkcast 56	java/lang/Float
    //   79: invokevirtual 60	java/lang/Float:floatValue	()F
    //   82: fstore 4
    //   84: invokestatic 63	com/amap/api/mapcore2d/bn:c	()Ljava/lang/reflect/Method;
    //   87: aload_1
    //   88: iconst_1
    //   89: anewarray 42	java/lang/Object
    //   92: dup
    //   93: iconst_0
    //   94: iconst_1
    //   95: invokestatic 48	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   98: aastore
    //   99: invokevirtual 54	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   102: checkcast 56	java/lang/Float
    //   105: invokevirtual 60	java/lang/Float:floatValue	()F
    //   108: fstore 5
    //   110: fload 4
    //   112: fload 5
    //   114: fsub
    //   115: fstore_3
    //   116: fload_2
    //   117: fload_2
    //   118: fmul
    //   119: fload_3
    //   120: fload_3
    //   121: fmul
    //   122: fadd
    //   123: f2d
    //   124: invokestatic 85	java/lang/Math:sqrt	(D)D
    //   127: d2f
    //   128: freturn
    //   129: astore 6
    //   131: aload 6
    //   133: ldc 71
    //   135: ldc 87
    //   137: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   140: fconst_0
    //   141: fstore_2
    //   142: goto -84 -> 58
    //   145: astore 6
    //   147: aload 6
    //   149: ldc 71
    //   151: ldc 87
    //   153: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   156: fconst_0
    //   157: fstore_2
    //   158: goto -100 -> 58
    //   161: astore 6
    //   163: aload 6
    //   165: ldc 71
    //   167: ldc 87
    //   169: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   172: fconst_0
    //   173: fstore_2
    //   174: goto -116 -> 58
    //   177: astore_1
    //   178: aload_1
    //   179: ldc 71
    //   181: ldc 87
    //   183: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   186: goto -70 -> 116
    //   189: astore_1
    //   190: aload_1
    //   191: ldc 71
    //   193: ldc 87
    //   195: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   198: goto -82 -> 116
    //   201: astore_1
    //   202: aload_1
    //   203: ldc 71
    //   205: ldc 87
    //   207: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   210: goto -94 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   2	53	129	java/lang/IllegalArgumentException
    //   2	53	145	java/lang/IllegalAccessException
    //   2	53	161	java/lang/reflect/InvocationTargetException
    //   58	110	177	java/lang/IllegalArgumentException
    //   58	110	189	java/lang/IllegalAccessException
    //   58	110	201	java/lang/reflect/InvocationTargetException
  }

  public boolean a(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
  {
    boolean bool3 = false;
    boolean bool2 = true;
    this.u = paramInt1;
    this.v = paramInt2;
    bn.a(paramMotionEvent);
    if (!bn.a())
      return false;
    boolean bool1 = bool3;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default:
      bool1 = bool3;
    case 4:
    case 0:
    case 5:
    case 1:
    case 3:
    case 6:
    case 2:
    }
    while (true)
    {
      return bool1;
      this.t = paramMotionEvent.getEventTime();
      this.p = paramMotionEvent.getX();
      this.q = paramMotionEvent.getY();
      this.d.set(this.c);
      this.e.set(this.p, this.q);
      this.b = 1;
      bool1 = false;
      continue;
      this.n += 1;
      bool1 = bool3;
      if (this.n == 1)
      {
        this.m = true;
        j = 1.0F;
        this.h = b(paramMotionEvent);
        bool1 = bool3;
        if (this.h > 10.0F)
        {
          this.c.reset();
          this.d.reset();
          this.d.set(this.c);
          a(this.f, paramMotionEvent);
          this.b = 2;
          this.k = true;
          bool1 = this.a.a(this.e) | false;
          this.r = this.f.x;
          this.s = this.f.y;
          continue;
          this.o = paramMotionEvent.getEventTime();
          this.k = false;
          this.b = 0;
          bool1 = false;
          continue;
          this.n -= 1;
          if (this.n == 1)
          {
            this.m = true;
            this.b = 2;
          }
          bool1 = bool3;
          if (this.n == 0)
          {
            a(this.f, paramMotionEvent);
            this.l = false;
            this.m = false;
            bool1 = bool3;
            if (this.k)
            {
              bool1 = this.a.b(this.i, this.f) | false;
              this.b = 0;
              continue;
              float f1;
              if (this.b == 1)
              {
                f1 = paramMotionEvent.getX();
                float f2 = paramMotionEvent.getY();
                this.c.set(this.d);
                this.c.postTranslate(paramMotionEvent.getX() - this.e.x, paramMotionEvent.getY() - this.e.y);
                bool1 = this.a.a(f1 - this.p, f2 - this.q);
                this.p = f1;
                this.q = f2;
                bool1 = this.a.a(this.c) | (bool1 | false);
                if (paramMotionEvent.getEventTime() - this.t < 30L)
                  bool1 = bool2;
              }
              else
              {
                bool1 = bool3;
                if (this.b == 2)
                {
                  f1 = b(paramMotionEvent);
                  this.i = 1.0F;
                  long l = paramMotionEvent.getEventTime();
                  bool1 = bool3;
                  if (f1 > 10.0F)
                  {
                    bool1 = bool3;
                    if (Math.abs(f1 - this.h) > 5.0F)
                    {
                      bool1 = bool3;
                      if (l - this.w > 10L)
                      {
                        this.w = l;
                        this.i = (f1 / this.h);
                        j = 1.0F;
                        this.h = f1;
                        a(this.g, paramMotionEvent);
                        bool1 = this.a.a(this.g.x - this.r, this.g.y - this.s);
                        this.r = this.g.x;
                        this.s = this.g.y;
                        bool1 = bool1 | false | this.a.a(this.i, this.f);
                        this.l = true;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bn.a
 * JD-Core Version:    0.6.2
 */