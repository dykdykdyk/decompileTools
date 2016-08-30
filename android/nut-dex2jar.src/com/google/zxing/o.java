package com.google.zxing;

import com.google.zxing.common.a.a;

public class o
{
  public final float a;
  public final float b;

  public o(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }

  public static float a(o paramo1, o paramo2)
  {
    return a.a(paramo1.a, paramo1.b, paramo2.a, paramo2.b);
  }

  public static void a(o[] paramArrayOfo)
  {
    float f1 = a(paramArrayOfo[0], paramArrayOfo[1]);
    float f2 = a(paramArrayOfo[1], paramArrayOfo[2]);
    float f3 = a(paramArrayOfo[0], paramArrayOfo[2]);
    o localo;
    Object localObject2;
    Object localObject1;
    if ((f2 >= f1) && (f2 >= f3))
    {
      localo = paramArrayOfo[0];
      localObject2 = paramArrayOfo[1];
      localObject1 = paramArrayOfo[2];
      f1 = localo.a;
      f2 = localo.b;
      f3 = ((o)localObject1).a;
      float f4 = ((o)localObject2).b;
      float f5 = ((o)localObject1).b;
      if ((f3 - f1) * (f4 - f2) - (((o)localObject2).a - f1) * (f5 - f2) >= 0.0F)
        break label179;
    }
    while (true)
    {
      paramArrayOfo[0] = localObject1;
      paramArrayOfo[1] = localo;
      paramArrayOfo[2] = localObject2;
      return;
      if ((f3 >= f2) && (f3 >= f1))
      {
        localo = paramArrayOfo[1];
        localObject2 = paramArrayOfo[0];
        localObject1 = paramArrayOfo[2];
        break;
      }
      localo = paramArrayOfo[2];
      localObject2 = paramArrayOfo[0];
      localObject1 = paramArrayOfo[1];
      break;
      label179: Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof o))
    {
      paramObject = (o)paramObject;
      bool1 = bool2;
      if (this.a == paramObject.a)
      {
        bool1 = bool2;
        if (this.b == paramObject.b)
          bool1 = true;
      }
    }
    return bool1;
  }

  public final int hashCode()
  {
    return Float.floatToIntBits(this.a) * 31 + Float.floatToIntBits(this.b);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(25);
    localStringBuilder.append('(');
    localStringBuilder.append(this.a);
    localStringBuilder.append(',');
    localStringBuilder.append(this.b);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.o
 * JD-Core Version:    0.6.2
 */