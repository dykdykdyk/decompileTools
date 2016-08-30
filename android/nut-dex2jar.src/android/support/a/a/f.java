package android.support.a.a;

import java.util.ArrayList;

final class f
{
  private static int a(String paramString, int paramInt)
  {
    while (true)
    {
      if (paramInt < paramString.length())
      {
        int i = paramString.charAt(paramInt);
        if ((((i - 65) * (i - 90) > 0) && ((i - 97) * (i - 122) > 0)) || (i == 101) || (i == 69));
      }
      else
      {
        return paramInt;
      }
      paramInt += 1;
    }
  }

  private static void a(ArrayList<h> paramArrayList, char paramChar, float[] paramArrayOfFloat)
  {
    paramArrayList.add(new h(paramChar, paramArrayOfFloat, (byte)0));
  }

  static float[] a(float[] paramArrayOfFloat, int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException();
    int i = paramArrayOfFloat.length;
    if (i < 0)
      throw new ArrayIndexOutOfBoundsException();
    paramInt += 0;
    i = Math.min(paramInt, i + 0);
    float[] arrayOfFloat = new float[paramInt];
    System.arraycopy(paramArrayOfFloat, 0, arrayOfFloat, 0, i);
    return arrayOfFloat;
  }

  public static h[] a(String paramString)
  {
    if (paramString == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    int j = 1;
    int i = 0;
    while (j < paramString.length())
    {
      j = a(paramString, j);
      String str = paramString.substring(i, j).trim();
      if (str.length() > 0)
      {
        float[] arrayOfFloat = b(str);
        a(localArrayList, str.charAt(0), arrayOfFloat);
      }
      int k = j + 1;
      i = j;
      j = k;
    }
    if ((j - i == 1) && (i < paramString.length()))
      a(localArrayList, paramString.charAt(i), new float[0]);
    return (h[])localArrayList.toArray(new h[localArrayList.size()]);
  }

  public static h[] a(h[] paramArrayOfh)
  {
    if (paramArrayOfh == null)
      return null;
    h[] arrayOfh = new h[paramArrayOfh.length];
    int i = 0;
    while (i < paramArrayOfh.length)
    {
      arrayOfh[i] = new h(paramArrayOfh[i], 0);
      i += 1;
    }
    return arrayOfh;
  }

  private static float[] b(String paramString)
  {
    int i;
    if (paramString.charAt(0) == 'z')
    {
      i = 1;
      if (paramString.charAt(0) != 'Z')
        break label39;
    }
    label39: for (int j = 1; ; j = 0)
    {
      if ((i | j) == 0)
        break label44;
      return new float[0];
      i = 0;
      break;
    }
    while (true)
    {
      label44: int i1;
      try
      {
        float[] arrayOfFloat = new float[paramString.length()];
        g localg = new g((byte)0);
        int i3 = paramString.length();
        n = 1;
        m = 0;
        if (n < i3)
        {
          localg.b = false;
          k = 0;
          i = 0;
          j = 0;
          i1 = n;
          if (i1 >= paramString.length());
        }
        switch (paramString.charAt(i1))
        {
        case '-':
          if ((i1 == n) || (k != 0))
            break label320;
          localg.b = true;
          j = i;
          k = 1;
          i = 0;
          break label330;
          label198: localg.b = true;
          j = i;
          k = 1;
          i = 0;
          break label330;
          localg.a = i1;
          j = localg.a;
          if (n < j)
          {
            i = m + 1;
            arrayOfFloat[m] = Float.parseFloat(paramString.substring(n, j));
            if (!localg.b)
              break label388;
            n = j;
            m = i;
            continue;
            arrayOfFloat = a(arrayOfFloat, m);
            return arrayOfFloat;
          }
          break;
        default:
        case ' ':
        case ',':
        case '.':
        case 'E':
        case 'e':
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new RuntimeException("error in parsing \"" + paramString + "\"", localNumberFormatException);
      }
      i = m;
      continue;
      label320: int i2 = 0;
      int k = j;
      j = i;
      i = i2;
      while (true)
      {
        label330: if (k != 0)
          break label386;
        i2 = i1 + 1;
        i1 = i;
        i = j;
        j = k;
        k = i1;
        i1 = i2;
        break;
        j = i;
        k = 1;
        i = 0;
        continue;
        if (i != 0)
          break label198;
        i = 0;
        k = j;
        j = 1;
        continue;
        k = j;
        j = i;
        i = 1;
      }
      label386: continue;
      label388: int n = j + 1;
      int m = i;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.f
 * JD-Core Version:    0.6.2
 */