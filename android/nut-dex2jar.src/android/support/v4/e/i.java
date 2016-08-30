package android.support.v4.e;

import java.util.Locale;

class i
{
  public int a(Locale paramLocale)
  {
    int j = 1;
    if ((paramLocale != null) && (!paramLocale.equals(h.a)))
    {
      String str = a.a(paramLocale);
      int i;
      if (str == null)
      {
        i = j;
        switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
        {
        default:
          i = 0;
        case 1:
        case 2:
        }
      }
      do
      {
        do
        {
          return i;
          i = j;
        }
        while (str.equalsIgnoreCase(h.a()));
        i = j;
      }
      while (str.equalsIgnoreCase(h.b()));
    }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.e.i
 * JD-Core Version:    0.6.2
 */