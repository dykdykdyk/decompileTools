package com.nut.blehunter.ui.widget;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

public final class c extends PopupWindow
{
  private ImageView a;
  private ImageView b;
  private View c;

  public c(Activity paramActivity, View.OnClickListener paramOnClickListener)
  {
    super(paramActivity);
    this.c = ((LayoutInflater)paramActivity.getSystemService("layout_inflater")).inflate(2130903184, null);
    this.a = ((ImageView)this.c.findViewById(2131558762));
    this.b = ((ImageView)this.c.findViewById(2131558772));
    this.a.setOnClickListener(paramOnClickListener);
    this.b.setOnClickListener(paramOnClickListener);
    setContentView(this.c);
    setWidth(-1);
    setHeight(-1);
    setFocusable(true);
    setAnimationStyle(2131296461);
    setBackgroundDrawable(new ColorDrawable(2097152000));
    this.c.setOnTouchListener(new d(this));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.c
 * JD-Core Version:    0.6.2
 */