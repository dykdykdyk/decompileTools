package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

public class ClearEditText extends EditText
  implements TextWatcher, View.OnFocusChangeListener
{
  private Drawable a = getCompoundDrawables()[2];
  private a b;

  public ClearEditText(Context paramContext)
  {
    this(paramContext, null);
  }

  public ClearEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842862);
  }

  public ClearEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (this.a == null)
      this.a = getResources().getDrawable(2130838004);
    this.a.setBounds(0, 0, this.a.getIntrinsicWidth(), this.a.getIntrinsicHeight());
    setClearIconVisible(false);
    setOnFocusChangeListener(this);
    addTextChangedListener(this);
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramBoolean)
    {
      paramBoolean = bool;
      if (getText().length() > 0)
        paramBoolean = true;
      setClearIconVisible(paramBoolean);
      return;
    }
    setClearIconVisible(false);
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramCharSequence.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      setClearIconVisible(bool);
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if ((getCompoundDrawables()[2] != null) && (paramMotionEvent.getAction() == 1))
      if ((paramMotionEvent.getX() <= getWidth() - getPaddingRight() - this.a.getIntrinsicWidth()) || (paramMotionEvent.getX() >= getWidth() - getPaddingRight()))
        break label104;
    while (true)
    {
      if (i != 0)
      {
        String str = getText().toString();
        setText("");
        if (this.b != null)
          this.b.a(str);
      }
      return super.onTouchEvent(paramMotionEvent);
      label104: i = 0;
    }
  }

  protected void setClearIconVisible(boolean paramBoolean)
  {
    if (paramBoolean);
    for (Drawable localDrawable = this.a; ; localDrawable = null)
    {
      setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], localDrawable, getCompoundDrawables()[3]);
      return;
    }
  }

  public void setOnClickClearListener(a parama)
  {
    this.b = parama;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.ClearEditText
 * JD-Core Version:    0.6.2
 */