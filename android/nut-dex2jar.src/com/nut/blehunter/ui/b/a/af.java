package com.nut.blehunter.ui.b.a;

import android.widget.NumberPicker.Formatter;
import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

final class af
  implements NumberPicker.Formatter
{
  final StringBuilder a = new StringBuilder();
  final Object[] b = new Object[1];
  char c;
  Formatter d;

  af()
  {
    b(Locale.getDefault());
  }

  private static char a(Locale paramLocale)
  {
    return new DecimalFormatSymbols(paramLocale).getZeroDigit();
  }

  private void b(Locale paramLocale)
  {
    this.d = new Formatter(this.a, paramLocale);
    this.c = a(paramLocale);
  }

  public final String format(int paramInt)
  {
    Locale localLocale = Locale.getDefault();
    if (this.c != a(localLocale))
      b(localLocale);
    this.b[0] = Integer.valueOf(paramInt);
    this.a.delete(0, this.a.length());
    this.d.format("%02d", this.b);
    return this.d.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.af
 * JD-Core Version:    0.6.2
 */