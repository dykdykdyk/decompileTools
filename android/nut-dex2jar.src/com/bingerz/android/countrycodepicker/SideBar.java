package com.bingerz.android.countrycodepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

public class SideBar extends View
{
  public static String[] a = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#" };
  private Context b;
  private k c;
  private int d = -1;
  private Paint e = new Paint();
  private TextView f;

  public SideBar(Context paramContext)
  {
    super(paramContext);
    this.b = paramContext;
  }

  public SideBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext;
  }

  public SideBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.b = paramContext;
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getY();
    int j = this.d;
    paramMotionEvent = this.c;
    int k = (int)(f1 / getHeight() * a.length);
    switch (i)
    {
    default:
      if ((j != k) && (k >= 0) && (k < a.length))
      {
        if (paramMotionEvent != null)
          paramMotionEvent.a(a[k]);
        if (this.f != null)
        {
          this.f.setText(a[k]);
          this.f.setVisibility(0);
        }
        this.d = k;
        invalidate();
      }
      break;
    case 1:
    }
    while (true)
    {
      return true;
      this.d = -1;
      invalidate();
      if (this.f != null)
        this.f.setVisibility(4);
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getHeight();
    int j = getWidth();
    int k = i / a.length;
    i = 0;
    while (i < a.length)
    {
      this.e.setColor(Color.rgb(33, 65, 98));
      this.e.setTypeface(Typeface.DEFAULT_BOLD);
      this.e.setAntiAlias(true);
      this.e.setTextSize((int)(this.b.getResources().getDisplayMetrics().scaledDensity * 14.0F + 0.5F));
      if (i == this.d)
      {
        this.e.setColor(Color.parseColor("#3399ff"));
        this.e.setFakeBoldText(true);
      }
      float f1 = j / 2;
      float f2 = this.e.measureText(a[i]) / 2.0F;
      float f3 = k * i + k;
      paramCanvas.drawText(a[i], f1 - f2, f3, this.e);
      this.e.reset();
      i += 1;
    }
  }

  public void setOnTouchingLetterChangedListener(k paramk)
  {
    this.c = paramk;
  }

  public void setTextView(TextView paramTextView)
  {
    this.f = paramTextView;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.SideBar
 * JD-Core Version:    0.6.2
 */