package com.nut.blehunter.ui;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.bingerz.android.countrycodepicker.g;

final class ao
  implements View.OnTouchListener
{
  ao(InputPhoneNumberActivity paramInputPhoneNumberActivity)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = (TextView)this.a.findViewById(2131558818);
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getRawX() >= paramView.getRight() - paramView.getCompoundDrawables()[2].getBounds().width()))
    {
      new g();
      g.a(this.a);
      return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ao
 * JD-Core Version:    0.6.2
 */