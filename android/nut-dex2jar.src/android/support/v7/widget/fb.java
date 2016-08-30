package android.support.v7.widget;

import android.os.ResultReceiver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

final class fb
{
  Method a;
  Method b;
  Method c;
  private Method d;

  fb()
  {
    try
    {
      this.a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
      this.a.setAccessible(true);
      try
      {
        label27: this.b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
        this.b.setAccessible(true);
        try
        {
          label50: this.c = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
          this.c.setAccessible(true);
          try
          {
            label79: this.d = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[] { Integer.TYPE, ResultReceiver.class });
            this.d.setAccessible(true);
            return;
          }
          catch (NoSuchMethodException localNoSuchMethodException1)
          {
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          break label79;
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException3)
      {
        break label50;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException4)
    {
      break label27;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fb
 * JD-Core Version:    0.6.2
 */