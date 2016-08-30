package com.facebook.widget;

class PlacePickerFragment$AsNeededLoadingStrategy$1
  implements GraphObjectAdapter.DataNeededListener
{
  PlacePickerFragment$AsNeededLoadingStrategy$1(PlacePickerFragment.AsNeededLoadingStrategy paramAsNeededLoadingStrategy)
  {
  }

  public void onDataNeeded()
  {
    if (!this.this$1.loader.isLoading())
      this.this$1.loader.followNextLink();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.PlacePickerFragment.AsNeededLoadingStrategy.1
 * JD-Core Version:    0.6.2
 */