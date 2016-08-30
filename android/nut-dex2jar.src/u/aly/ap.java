package u.aly;

import android.content.Context;
import android.text.TextUtils;

public final class ap
  implements t
{
  private static ap h = null;
  boolean a = false;
  int b = -1;
  int c = -1;
  private int d = -1;
  private float e = 0.0F;
  private float f = 0.0F;
  private Context g = null;

  private ap(Context paramContext, String paramString, int paramInt)
  {
    this.g = paramContext;
    b(paramString, paramInt);
  }

  private static float a(String paramString, int paramInt)
  {
    paramInt *= 2;
    if (paramString == null)
      return 0.0F;
    return Integer.valueOf(paramString.substring(paramInt, paramInt + 5), 16).intValue() / 1048576.0F;
  }

  public static ap a(Context paramContext)
  {
    try
    {
      if (h == null)
      {
        fk localfk = fj.a(paramContext).b;
        h = new ap(paramContext, localfk.c(), localfk.a(0));
      }
      paramContext = h;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    int i;
    int j;
    do
    {
      do
      {
        do
        {
          return false;
          paramString = paramString.split("\\|");
        }
        while (paramString.length != 6);
        if ((paramString[0].startsWith("SIG7")) && (paramString[1].split(",").length == paramString[5].split(",").length))
          return true;
      }
      while (!paramString[0].startsWith("FIXED"));
      i = paramString[5].split(",").length;
      j = Integer.parseInt(paramString[1]);
    }
    while ((i < j) || (j <= 0));
    return true;
  }

  private void b(String paramString, int paramInt)
  {
    this.d = paramInt;
    String str = fe.a(this.g);
    if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramString)))
      this.a = false;
    String[] arrayOfString;
    float f1;
    while (true)
    {
      return;
      try
      {
        this.e = a(str, 12);
        this.f = a(str, 6);
        if (!paramString.startsWith("SIG7"))
          break label443;
        if (paramString != null)
        {
          arrayOfString = paramString.split("\\|");
          f1 = 0.0F;
          if (arrayOfString[2].equals("SIG13"))
            f1 = Float.valueOf(arrayOfString[3]).floatValue();
          if (this.e > f1)
          {
            this.a = false;
            return;
          }
        }
      }
      catch (Exception localException1)
      {
        this.a = false;
        ct.b("v:" + paramString, localException1);
        return;
      }
    }
    Object localObject5;
    label207: Object localObject6;
    Object localObject4;
    Object localObject2;
    if (arrayOfString[0].equals("SIG7"))
    {
      Object localObject1 = arrayOfString[1].split(",");
      localObject5 = new float[localObject1.length];
      paramInt = 0;
      while (paramInt < localObject1.length)
      {
        localObject5[paramInt] = Float.valueOf(localObject1[paramInt]).floatValue();
        paramInt += 1;
        continue;
        localObject1 = null;
        localObject6 = null;
        if (arrayOfString[4].equals("RPT"))
        {
          localObject6 = arrayOfString[5].split(",");
          localObject4 = new int[localObject6.length];
          paramInt = 0;
          while (true)
          {
            localObject1 = localObject4;
            if (paramInt >= localObject6.length)
              break;
            localObject4[paramInt] = Integer.valueOf(localObject6[paramInt]).intValue();
            paramInt += 1;
          }
        }
        if (arrayOfString[4].equals("DOM"))
        {
          if (cr.k(this.g))
          {
            this.a = false;
            return;
          }
          localObject4 = localObject6;
          try
          {
            arrayOfString = arrayOfString[5].split(",");
            localObject4 = localObject6;
            localObject6 = new int[arrayOfString.length];
            paramInt = 0;
            while (true)
            {
              localObject4 = localObject6;
              localObject1 = localObject6;
              if (paramInt >= arrayOfString.length)
                break;
              localObject4 = localObject6;
              localObject6[paramInt] = Integer.valueOf(arrayOfString[paramInt]).intValue();
              paramInt += 1;
            }
          }
          catch (Exception localException2)
          {
            localObject2 = localObject4;
          }
        }
        f1 = 0.0F;
        paramInt = 0;
      }
    }
    while (true)
    {
      if (paramInt < localObject5.length)
      {
        f1 += localObject5[paramInt];
        if (this.f >= f1);
      }
      else
      {
        while (true)
        {
          if (paramInt != -1)
          {
            this.a = true;
            this.c = (paramInt + 1);
            if (localObject2 == null)
              break;
            this.b = localObject2[paramInt];
            return;
          }
          this.a = false;
          return;
          label443: if ((!paramString.startsWith("FIXED")) || (paramString == null))
            break;
          localObject6 = paramString.split("\\|");
          f1 = 0.0F;
          if (localObject6[2].equals("SIG13"))
            f1 = Float.valueOf(localObject6[3]).floatValue();
          if (this.e > f1)
          {
            this.a = false;
            return;
          }
          if (localObject6[0].equals("FIXED"));
          for (paramInt = Integer.valueOf(localObject6[1]).intValue(); ; paramInt = -1)
          {
            localObject2 = null;
            localObject5 = null;
            int i;
            if (localObject6[4].equals("RPT"))
            {
              localObject5 = localObject6[5].split(",");
              localObject4 = new int[localObject5.length];
              i = 0;
              while (true)
              {
                localObject2 = localObject4;
                if (i >= localObject5.length)
                  break;
                localObject4[i] = Integer.valueOf(localObject5[i]).intValue();
                i += 1;
              }
            }
            Object localObject3;
            if (localObject6[4].equals("DOM"))
            {
              if (cr.k(this.g))
              {
                this.a = false;
                return;
              }
              localObject4 = localObject5;
              try
              {
                localObject6 = localObject6[5].split(",");
                localObject4 = localObject5;
                localObject5 = new int[localObject6.length];
                i = 0;
                while (true)
                {
                  localObject4 = localObject5;
                  localObject2 = localObject5;
                  if (i >= localObject6.length)
                    break;
                  localObject4 = localObject5;
                  localObject5[i] = Integer.valueOf(localObject6[i]).intValue();
                  i += 1;
                }
              }
              catch (Exception localException3)
              {
                localObject3 = localObject4;
              }
            }
            if (paramInt != -1)
            {
              this.a = true;
              this.c = paramInt;
              if (localObject3 == null)
                break;
              this.b = localObject3[(paramInt - 1)];
              return;
            }
            this.a = false;
            return;
          }
          paramInt = -1;
        }
        localObject5 = null;
        break label207;
        break label207;
      }
      paramInt += 1;
    }
  }

  public final void a(fk paramfk)
  {
    b(paramfk.c(), paramfk.a(0));
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" p13:");
    localStringBuilder.append(this.e);
    localStringBuilder.append(" p07:");
    localStringBuilder.append(this.f);
    localStringBuilder.append(" policy:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(" interval:");
    localStringBuilder.append(this.d);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ap
 * JD-Core Version:    0.6.2
 */