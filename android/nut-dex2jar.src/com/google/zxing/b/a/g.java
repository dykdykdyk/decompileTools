package com.google.zxing.b.a;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class g extends q
{
  private static final Pattern a = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
  private static final long[] b = { 604800000L, 86400000L, 3600000L, 60000L, 1000L };
  private static final Pattern c = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");
  private final String d;
  private final Date e;
  private final boolean f;
  private final Date g;
  private final boolean h;
  private final String i;
  private final String j;
  private final String[] k;
  private final String l;
  private final double m;
  private final double n;

  public g(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, String paramString7, double paramDouble1, double paramDouble2)
  {
    super(r.i);
    this.d = paramString1;
    while (true)
    {
      long l1;
      try
      {
        this.e = a(paramString2);
        if (paramString3 != null)
          break label156;
        l1 = a(paramString4);
        if (l1 < 0L)
        {
          paramString1 = null;
          this.g = paramString1;
          if (paramString2.length() != 8)
            break label180;
          bool = true;
          this.f = bool;
          if ((paramString3 == null) || (paramString3.length() != 8))
            break label186;
          bool = true;
          this.h = bool;
          this.i = paramString5;
          this.j = paramString6;
          this.k = paramArrayOfString;
          this.l = paramString7;
          this.m = paramDouble1;
          this.n = paramDouble2;
          return;
        }
      }
      catch (ParseException paramString1)
      {
        throw new IllegalArgumentException(paramString1.toString());
      }
      paramString1 = new Date(l1 + this.e.getTime());
      continue;
      try
      {
        label156: this.g = a(paramString3);
      }
      catch (ParseException paramString1)
      {
        throw new IllegalArgumentException(paramString1.toString());
      }
      label180: boolean bool = false;
      continue;
      label186: bool = false;
    }
  }

  private static long a(CharSequence paramCharSequence)
  {
    long l2 = -1L;
    if (paramCharSequence == null);
    do
    {
      return l2;
      paramCharSequence = a.matcher(paramCharSequence);
    }
    while (!paramCharSequence.matches());
    long l1 = 0L;
    int i1 = 0;
    while (true)
    {
      l2 = l1;
      if (i1 >= b.length)
        break;
      String str = paramCharSequence.group(i1 + 1);
      l2 = l1;
      if (str != null)
      {
        l2 = b[i1];
        l2 = l1 + Integer.parseInt(str) * l2;
      }
      i1 += 1;
      l1 = l2;
    }
  }

  private static String a(boolean paramBoolean, Date paramDate)
  {
    if (paramDate == null)
      return null;
    if (paramBoolean);
    for (DateFormat localDateFormat = DateFormat.getDateInstance(2); ; localDateFormat = DateFormat.getDateTimeInstance(2, 2))
      return localDateFormat.format(paramDate);
  }

  private static Date a(String paramString)
    throws ParseException
  {
    if (!c.matcher(paramString).matches())
      throw new ParseException(paramString, 0);
    Object localObject;
    if (paramString.length() == 8)
    {
      localObject = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
      ((DateFormat)localObject).setTimeZone(TimeZone.getTimeZone("GMT"));
      return ((DateFormat)localObject).parse(paramString);
    }
    if ((paramString.length() == 16) && (paramString.charAt(15) == 'Z'))
    {
      paramString = b().parse(paramString.substring(0, 15));
      localObject = new GregorianCalendar();
      long l1 = paramString.getTime() + ((Calendar)localObject).get(15);
      ((Calendar)localObject).setTime(new Date(l1));
      return new Date(l1 + ((Calendar)localObject).get(16));
    }
    return b().parse(paramString);
  }

  private static DateFormat b()
  {
    return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    a(this.d, localStringBuilder);
    a(a(this.f, this.e), localStringBuilder);
    a(a(this.h, this.g), localStringBuilder);
    a(this.i, localStringBuilder);
    a(this.j, localStringBuilder);
    a(this.k, localStringBuilder);
    a(this.l, localStringBuilder);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.g
 * JD-Core Version:    0.6.2
 */