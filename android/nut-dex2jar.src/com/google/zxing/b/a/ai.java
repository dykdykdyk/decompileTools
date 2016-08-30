package com.google.zxing.b.a;

import com.google.zxing.a;
import com.google.zxing.m;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ai extends u
{
  private static final Pattern a = Pattern.compile("[IOQ]");
  private static final Pattern b = Pattern.compile("[A-Z0-9]{17}");

  private static ah d(m paramm)
  {
    if (paramm.d != a.c)
      return null;
    paramm = paramm.a;
    String str1 = a.matcher(paramm).replaceAll("").trim();
    if (!b.matcher(str1).matches())
      return null;
    int m = 0;
    int k = 0;
    label558: label571: label586: 
    while (true)
    {
      int i;
      int j;
      try
      {
        String str2;
        String str3;
        String str4;
        if (m < str1.length())
        {
          i = m + 1;
          if ((i <= 0) || (i > 7))
            continue;
          i = 9 - i;
          j = str1.charAt(m);
          if ((j < 65) || (j > 73))
            break label494;
          j = j - 65 + 1;
          continue;
          throw new IllegalArgumentException();
          throw new IllegalArgumentException();
        }
        else
        {
          j = str1.charAt(8);
          i = k % 11;
          if (i >= 10)
            break label571;
          i = (char)(i + 48);
          break label558;
          throw new IllegalArgumentException();
          str2 = str1.substring(0, 3);
          str3 = str1.substring(3, 9);
          str4 = str1.substring(9, 17);
          i = str2.charAt(0);
          j = str2.charAt(1);
        }
        switch (i)
        {
        default:
          String str5 = str1.substring(3, 8);
          i = str1.charAt(9);
          if ((i < 69) || (i > 72))
            break label833;
          i = i - 69 + 1984;
          return new ah(str1, str2, str3, str4, paramm, str5, i, str1.charAt(10), str1.substring(11));
          throw new IllegalArgumentException();
          m += 1;
          k += j * i;
          continue;
          if (i == 8)
          {
            i = 10;
            continue;
          }
          if (i == 9)
          {
            i = 0;
            continue;
          }
          if ((i < 10) || (i > 17))
            continue;
          i = 19 - i;
          continue;
        case 49:
        case 52:
        case 53:
        case 50:
        case 51:
        case 57:
        case 74:
        case 75:
        case 76:
        case 77:
        case 83:
        case 86:
        case 87:
        case 88:
        case 90:
        }
      }
      catch (IllegalArgumentException paramm)
      {
        return null;
      }
      label494: if ((j >= 74) && (j <= 82))
      {
        j = j - 74 + 1;
      }
      else if ((j >= 83) && (j <= 90))
      {
        j = j - 83 + 2;
      }
      else if ((j >= 48) && (j <= 57))
      {
        j -= 48;
        continue;
        if (j == i);
        for (i = 1; ; i = 0)
        {
          if (i != 0)
            break label586;
          return null;
          if (i != 10)
            break;
          i = 88;
          break label558;
        }
        continue;
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          paramm = null;
                          break;
                          paramm = "US";
                          break;
                          paramm = "CA";
                          break;
                        }
                        while ((j < 65) || (j > 87));
                        paramm = "MX";
                        break;
                      }
                      while (((j < 65) || (j > 69)) && ((j < 51) || (j > 57)));
                      paramm = "BR";
                      break;
                    }
                    while ((j < 65) || (j > 84));
                    paramm = "JP";
                    break;
                  }
                  while ((j < 76) || (j > 82));
                  paramm = "KO";
                  break;
                  paramm = "CN";
                  break;
                }
                while ((j < 65) || (j > 69));
                paramm = "IN";
                break;
                if ((j >= 65) && (j <= 77))
                {
                  paramm = "UK";
                  break;
                }
              }
              while ((j < 78) || (j > 84));
              paramm = "DE";
              break;
              if ((j >= 70) && (j <= 82))
              {
                paramm = "FR";
                break;
              }
            }
            while ((j < 83) || (j > 87));
            paramm = "ES";
            break;
            paramm = "DE";
            break;
          }
          while ((j != 48) && ((j < 51) || (j > 57)));
          paramm = "RU";
          break;
        }
        while ((j < 65) || (j > 82));
        paramm = "IT";
        continue;
        if ((i >= 74) && (i <= 78))
          i = i - 74 + 1988;
        else if (i == 80)
          i = 1993;
        else if ((i >= 82) && (i <= 84))
          i = i - 82 + 1994;
        else if ((i >= 86) && (i <= 89))
          i = i - 86 + 1997;
        else if ((i >= 49) && (i <= 57))
          i = i - 49 + 2001;
        else if ((i >= 65) && (i <= 68))
          i = i - 65 + 2010;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.ai
 * JD-Core Version:    0.6.2
 */