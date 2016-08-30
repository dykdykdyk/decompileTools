package com.facebook.widget;

import android.os.Bundle;
import android.support.v4.app.aw;
import android.support.v4.b.g;
import com.facebook.FacebookException;

class PickerFragment$LoadingStrategy$1
  implements aw<SimpleGraphObjectCursor<T>>
{
  PickerFragment$LoadingStrategy$1(PickerFragment.LoadingStrategy paramLoadingStrategy)
  {
  }

  public g<SimpleGraphObjectCursor<T>> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return this.this$1.onCreateLoader();
  }

  public void onLoadFinished(g<SimpleGraphObjectCursor<T>> paramg, SimpleGraphObjectCursor<T> paramSimpleGraphObjectCursor)
  {
    if (paramg != this.this$1.loader)
      throw new FacebookException("Received callback for unknown loader.");
    this.this$1.onLoadFinished((GraphObjectPagingLoader)paramg, paramSimpleGraphObjectCursor);
  }

  public void onLoaderReset(g<SimpleGraphObjectCursor<T>> paramg)
  {
    if (paramg != this.this$1.loader)
      throw new FacebookException("Received callback for unknown loader.");
    this.this$1.onLoadReset((GraphObjectPagingLoader)paramg);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.PickerFragment.LoadingStrategy.1
 * JD-Core Version:    0.6.2
 */