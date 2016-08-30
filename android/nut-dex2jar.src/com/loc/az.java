package com.loc;

import android.text.TextUtils;
import java.util.Hashtable;
import java.util.Locale;

public final class az
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 98, 99, 100, 101, 102, 103, 104, 106, 107, 109, 110, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
  private static final int[] b = { 16, 8, 4, 2, 1 };

  public static final String a(double paramDouble1, double paramDouble2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int k = 1;
    int i = 0;
    int j = 0;
    double[] arrayOfDouble1 = new double[2];
    double[] tmp25_23 = arrayOfDouble1;
    tmp25_23[0] = -90.0D;
    double[] tmp31_25 = tmp25_23;
    tmp31_25[1] = 90.0D;
    tmp31_25;
    double[] arrayOfDouble2 = new double[2];
    double[] tmp45_43 = arrayOfDouble2;
    tmp45_43[0] = -180.0D;
    double[] tmp51_45 = tmp45_43;
    tmp51_45[1] = 180.0D;
    tmp51_45;
    while (tmp25_23.length() < 6)
    {
      double d;
      if (k != 0)
      {
        d = (tmp45_43[0] + tmp45_43[1]) / 2.0D;
        if (paramDouble2 > d)
        {
          j |= b[i];
          tmp45_43[0] = d;
          label112: if (k != 0)
            break label195;
        }
      }
      label195: for (k = 1; ; k = 0)
      {
        if (i >= 4)
          break label201;
        i += 1;
        break;
        tmp45_43[1] = d;
        break label112;
        d = (tmp31_25[0] + tmp31_25[1]) / 2.0D;
        if (paramDouble1 > d)
        {
          j |= b[i];
          tmp31_25[0] = d;
          break label112;
        }
        tmp31_25[1] = d;
        break label112;
      }
      label201: tmp25_23.append(a[j]);
      i = 0;
      j = 0;
    }
    return tmp25_23.toString();
  }

  private static final String a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1));
    while (TextUtils.isEmpty(paramString2))
      return null;
    Object localObject = paramString1.toLowerCase(Locale.US);
    int i = ((String)localObject).charAt(((String)localObject).length() - 1);
    if (((String)localObject).length() % 2 == 0);
    for (paramString1 = "odd"; ; paramString1 = "even")
    {
      String str = ((String)localObject).substring(0, ((String)localObject).length() - 1);
      localObject = str;
      if (((String)((Hashtable)ax.a.get(paramString2)).get(paramString1)).indexOf(i) != -1)
      {
        localObject = str;
        if (!TextUtils.isEmpty(str))
          localObject = a(str, paramString2);
      }
      i = ((String)((Hashtable)ay.a.get(paramString2)).get(paramString1)).indexOf(i);
      char c = a[i];
      return (String)localObject + c;
    }
  }

  public static final String[] a(String paramString)
  {
    String[] arrayOfString = new String[24];
    arrayOfString[0] = a(paramString, "right");
    arrayOfString[1] = a(paramString, "btm");
    arrayOfString[2] = a(paramString, "left");
    arrayOfString[3] = a(paramString, "top");
    arrayOfString[4] = a(arrayOfString[0], "top");
    arrayOfString[5] = a(arrayOfString[0], "btm");
    arrayOfString[6] = a(arrayOfString[2], "top");
    arrayOfString[7] = a(arrayOfString[2], "btm");
    arrayOfString[8] = a(arrayOfString[0], "right");
    arrayOfString[9] = a(arrayOfString[8], "top");
    arrayOfString[10] = a(arrayOfString[9], "top");
    arrayOfString[11] = a(arrayOfString[10], "left");
    arrayOfString[12] = a(arrayOfString[11], "left");
    arrayOfString[13] = a(arrayOfString[12], "left");
    arrayOfString[14] = a(arrayOfString[13], "left");
    arrayOfString[15] = a(arrayOfString[14], "btm");
    arrayOfString[16] = a(arrayOfString[15], "btm");
    arrayOfString[17] = a(arrayOfString[16], "btm");
    arrayOfString[18] = a(arrayOfString[17], "btm");
    arrayOfString[19] = a(arrayOfString[18], "right");
    arrayOfString[20] = a(arrayOfString[19], "right");
    arrayOfString[21] = a(arrayOfString[20], "right");
    arrayOfString[22] = a(arrayOfString[21], "right");
    arrayOfString[23] = a(arrayOfString[22], "top");
    return arrayOfString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.az
 * JD-Core Version:    0.6.2
 */