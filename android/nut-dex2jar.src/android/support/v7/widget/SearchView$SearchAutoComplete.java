package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Method;

public class SearchView$SearchAutoComplete extends ai
{
  private int a = getThreshold();
  private SearchView b;

  public SearchView$SearchAutoComplete(Context paramContext)
  {
    this(paramContext, null);
  }

  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.autoCompleteTextViewStyle);
  }

  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public boolean enoughToFilter()
  {
    return (this.a <= 0) || (super.enoughToFilter());
  }

  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    this.b.d();
  }

  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      KeyEvent.DispatcherState localDispatcherState;
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        localDispatcherState = getKeyDispatcherState();
        if (localDispatcherState != null)
          localDispatcherState.startTracking(paramKeyEvent, this);
        return true;
      }
      if (paramKeyEvent.getAction() == 1)
      {
        localDispatcherState = getKeyDispatcherState();
        if (localDispatcherState != null)
          localDispatcherState.handleUpEvent(paramKeyEvent);
        if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
        {
          this.b.clearFocus();
          SearchView.a(this.b);
          return true;
        }
      }
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    fb localfb;
    if ((paramBoolean) && (this.b.hasFocus()) && (getVisibility() == 0))
    {
      ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
      if (SearchView.a(getContext()))
      {
        localfb = SearchView.a;
        if (localfb.c == null);
      }
    }
    try
    {
      localfb.c.invoke(this, new Object[] { Boolean.valueOf(true) });
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void performCompletion()
  {
  }

  protected void replaceText(CharSequence paramCharSequence)
  {
  }

  void setSearchView(SearchView paramSearchView)
  {
    this.b = paramSearchView;
  }

  public void setThreshold(int paramInt)
  {
    super.setThreshold(paramInt);
    this.a = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.SearchView.SearchAutoComplete
 * JD-Core Version:    0.6.2
 */