package com.facebook.widget;

import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;

class PlacePickerFragment$3
  implements Runnable
{
  PlacePickerFragment$3(PlacePickerFragment paramPlacePickerFragment)
  {
  }

  public void run()
  {
    try
    {
      this.this$0.loadData(true);
      return;
    }
    catch (FacebookException localFacebookException1)
    {
      localFacebookException1 = localFacebookException1;
      localOnErrorListener = this.this$0.getOnErrorListener();
      if (localOnErrorListener != null)
      {
        localOnErrorListener.onError(this.this$0, localFacebookException1);
        return;
      }
      Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] { localFacebookException1 });
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      FacebookException localFacebookException2 = new FacebookException(localException);
      PickerFragment.OnErrorListener localOnErrorListener = this.this$0.getOnErrorListener();
      if (localOnErrorListener != null)
      {
        localOnErrorListener.onError(this.this$0, localFacebookException2);
        return;
      }
      Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", new Object[] { localFacebookException2 });
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.PlacePickerFragment.3
 * JD-Core Version:    0.6.2
 */