package com.facebook.widget;

import android.os.Bundle;
import java.util.Collection;

abstract class PickerFragment$SelectionStrategy
{
  PickerFragment$SelectionStrategy(PickerFragment paramPickerFragment)
  {
  }

  abstract void clear();

  abstract Collection<String> getSelectedIds();

  abstract boolean isEmpty();

  abstract boolean isSelected(String paramString);

  abstract void readSelectionFromBundle(Bundle paramBundle, String paramString);

  abstract void saveSelectionToBundle(Bundle paramBundle, String paramString);

  abstract boolean shouldShowCheckBoxIfUnselected();

  abstract void toggleSelection(String paramString);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.PickerFragment.SelectionStrategy
 * JD-Core Version:    0.6.2
 */