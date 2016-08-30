package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.CompoundButton;

public final class d
{
  private static final g a = new f();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new e();
      return;
    }
    if (i >= 21)
    {
      a = new h();
      return;
    }
  }

  public static Drawable a(CompoundButton paramCompoundButton)
  {
    return a.a(paramCompoundButton);
  }

  public static void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    a.a(paramCompoundButton, paramColorStateList);
  }

  public static void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    a.a(paramCompoundButton, paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.d
 * JD-Core Version:    0.6.2
 */