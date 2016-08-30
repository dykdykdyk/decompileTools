package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

final class i
{
  private static Field a;
  private static boolean b;

  static Drawable a(CompoundButton paramCompoundButton)
  {
    if (!b);
    try
    {
      Field localField = CompoundButton.class.getDeclaredField("mButtonDrawable");
      a = localField;
      localField.setAccessible(true);
      b = true;
      if (a == null);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        paramCompoundButton = (Drawable)a.get(paramCompoundButton);
        return paramCompoundButton;
        localNoSuchFieldException = localNoSuchFieldException;
        Log.i("CompoundButtonCompatDonut", "Failed to retrieve mButtonDrawable field", localNoSuchFieldException);
      }
      catch (IllegalAccessException paramCompoundButton)
      {
        Log.i("CompoundButtonCompatDonut", "Failed to get button drawable via reflection", paramCompoundButton);
        a = null;
      }
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.i
 * JD-Core Version:    0.6.2
 */