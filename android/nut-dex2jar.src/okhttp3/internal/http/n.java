package okhttp3.internal.http;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class n
{
  private static final ThreadLocal<DateFormat> a = new o();
  private static final String[] b = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  private static final DateFormat[] c = new DateFormat[15];

  public static String a(Date paramDate)
  {
    return ((DateFormat)a.get()).format(paramDate);
  }

  public static Date a(String paramString)
  {
    int i = 0;
    Object localObject;
    if (paramString.length() == 0)
      localObject = null;
    ParsePosition localParsePosition;
    do
    {
      return localObject;
      localParsePosition = new ParsePosition(0);
      localObject = ((DateFormat)a.get()).parse(paramString, localParsePosition);
    }
    while (localParsePosition.getIndex() == paramString.length());
    while (true)
    {
      synchronized (b)
      {
        int j = b.length;
        if (i >= j)
          break;
        DateFormat localDateFormat = c[i];
        localObject = localDateFormat;
        if (localDateFormat == null)
        {
          localObject = new SimpleDateFormat(b[i], Locale.US);
          ((DateFormat)localObject).setTimeZone(okhttp3.internal.o.d);
          c[i] = localObject;
        }
        localParsePosition.setIndex(0);
        localObject = ((DateFormat)localObject).parse(paramString, localParsePosition);
        if (localParsePosition.getIndex() != 0)
          return localObject;
      }
      i += 1;
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.n
 * JD-Core Version:    0.6.2
 */