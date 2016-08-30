package com.nut.blehunter.d;

import android.text.TextUtils;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e
{
  public static DateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  public static DateFormat b = new SimpleDateFormat("yyyy-MM-dd");

  public static String a(long paramLong)
  {
    return a.format(new Date(1000L * paramLong));
  }

  public static String a(String[] paramArrayOfString, int paramInt)
  {
    Object localObject1 = "";
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if ((paramInt >> i & 0x1) == 1)
        localObject2 = (String)localObject1 + paramArrayOfString[i] + " ";
      i += 1;
      localObject1 = localObject2;
    }
    paramArrayOfString = (String[])localObject1;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      paramArrayOfString = (String[])localObject1;
      if (((String)localObject1).endsWith(" "))
        paramArrayOfString = ((String)localObject1).substring(0, ((String)localObject1).length() - 2);
    }
    return paramArrayOfString;
  }

  public static int[] a(String paramString)
  {
    paramString = paramString.split(":");
    if (paramString == null)
      return null;
    return new int[] { Integer.valueOf(paramString[0]).intValue(), Integer.valueOf(paramString[1]).intValue() };
  }

  public static int[] a(String paramString1, String paramString2)
  {
    paramString1 = paramString1.split(":");
    paramString2 = paramString2.split(":");
    int[] arrayOfInt = new int[2];
    int i = Integer.valueOf(paramString1[0]).intValue();
    int j = Integer.valueOf(paramString1[1]).intValue();
    int k = Integer.valueOf(paramString2[0]).intValue();
    int m = Integer.valueOf(paramString2[1]).intValue();
    arrayOfInt[0] = (j * 60 + i * 3600 + arrayOfInt[0]);
    arrayOfInt[1] += m * 60 + k * 3600;
    return arrayOfInt;
  }

  public static String[] a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 % 60 != 0) || (paramInt2 % 60 != 0))
      return null;
    int i = paramInt1 / 3600;
    paramInt1 = paramInt1 % 3600 / 60;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "";
    StringBuilder localStringBuilder = new StringBuilder().append(arrayOfString[0]);
    if (i < 10)
    {
      localObject = "0" + i;
      localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (paramInt1 >= 10)
        break label264;
      localObject = "0" + paramInt1;
      label118: arrayOfString[0] = localObject;
      i = paramInt2 / 3600;
      paramInt2 = paramInt2 % 3600 / 60;
      paramInt1 = i;
      if (i > 24)
        paramInt1 = i - 24;
      arrayOfString[1] = "";
      localStringBuilder = new StringBuilder().append(arrayOfString[1]);
      if (paramInt1 >= 10)
        break label272;
      localObject = "0" + paramInt1;
      label204: localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (paramInt2 >= 10)
        break label280;
    }
    label264: label272: label280: for (Object localObject = "0" + paramInt2; ; localObject = Integer.valueOf(paramInt2))
    {
      arrayOfString[1] = localObject;
      return arrayOfString;
      localObject = Integer.valueOf(i);
      break;
      localObject = Integer.valueOf(paramInt1);
      break label118;
      localObject = Integer.valueOf(paramInt1);
      break label204;
    }
  }

  public static long b(String paramString)
    throws ParseException
  {
    if (TextUtils.isEmpty(paramString))
      return 0L;
    return a.parse(paramString).getTime() / 1000L;
  }

  public static String b(int paramInt1, int paramInt2)
  {
    String[] arrayOfString = a(paramInt1, paramInt2);
    if (arrayOfString == null)
      return "";
    return arrayOfString[0] + "--" + arrayOfString[1];
  }

  public static String c(String paramString)
  {
    return Pattern.compile("(\\w{3})(\\w+)(\\w{3})").matcher(paramString).replaceAll("$1****$3");
  }

  public static String d(String paramString)
  {
    return Pattern.compile("(\\w{1})(\\w+)(\\w{1})(@\\w+)").matcher(paramString).replaceAll("$1***$3$4");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.e
 * JD-Core Version:    0.6.2
 */