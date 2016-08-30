package com.nut.blehunter.ui;

import android.support.v4.view.be;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.nut.blehunter.d.i;
import com.nut.blehunter.ui.widget.ClearEditText;
import java.util.List;

final class ba extends be
{
  List<View> b;
  private final String[] d = { this.c.getString(2131100022), this.c.getString(2131100021) };

  public ba(List<View> paramList)
  {
    Object localObject;
    this.b = localObject;
  }

  public final int a()
  {
    return this.b.size();
  }

  public final CharSequence a(int paramInt)
  {
    return this.d[paramInt];
  }

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.addView((View)this.b.get(paramInt));
    paramViewGroup = (View)this.b.get(paramInt);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return this.b.get(paramInt);
      LoginActivity.a(this.c, (TextView)paramViewGroup.findViewById(2131558818));
      LoginActivity.a(this.c, (ClearEditText)paramViewGroup.findViewById(2131558819));
      LoginActivity.a(this.c, (EditText)paramViewGroup.findViewById(2131558910));
      LoginActivity.c(this.c).setOnClickListener(this.c);
      TextView localTextView = LoginActivity.c(this.c);
      if (!TextUtils.isEmpty(LoginActivity.d(this.c)));
      for (paramViewGroup = "+" + LoginActivity.d(this.c); ; paramViewGroup = i.a(this.c))
      {
        localTextView.setText(paramViewGroup);
        if (!TextUtils.isEmpty(LoginActivity.e(this.c)))
          LoginActivity.f(this.c).setText(LoginActivity.e(this.c));
        LoginActivity.f(this.c).setSelectAllOnFocus(true);
        LoginActivity.f(this.c).addTextChangedListener(new bb(this));
        LoginActivity.f(this.c).setOnClickClearListener(new bc(this));
        break;
      }
      LoginActivity.b(this.c, (EditText)paramViewGroup.findViewById(2131558802));
      LoginActivity.c(this.c, (EditText)paramViewGroup.findViewById(2131558909));
      if (!TextUtils.isEmpty(LoginActivity.g(this.c)))
        LoginActivity.h(this.c).setText(LoginActivity.g(this.c));
    }
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public final void b(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeView((View)this.b.get(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ba
 * JD-Core Version:    0.6.2
 */