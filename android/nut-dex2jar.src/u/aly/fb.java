package u.aly;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class fb
{
  static long a(long paramLong)
  {
    long l1 = 0L;
    try
    {
      long l3 = new SimpleDateFormat("yyyy").parse("1970").getTime();
      long l2 = (paramLong - l3) / 86400000L;
      if ((paramLong - l3) % 86400000L > 0L)
        l1 = 1L;
      return l1 + l2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0L;
  }

  static long a(long paramLong, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int j = localCalendar.get(11);
    int k = localCalendar.get(12) / 6;
    int m = localCalendar.get(13);
    int i = 0;
    if (paramInt == 1002)
      i = 360 - (localCalendar.get(12) % 6 * 60 + m);
    while (true)
    {
      return i * 1000;
      if (paramInt == 1001)
      {
        paramInt = 60 - m % 60;
        i = paramInt;
        if ((k + 1 + j * 10) % 6 == 0)
          i = paramInt + 60;
      }
    }
  }

  public static int b(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return localCalendar.get(5);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fb
 * JD-Core Version:    0.6.2
 */