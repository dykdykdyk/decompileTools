package com.nut.blehunter.ui;

import android.support.v4.view.be;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.nut.blehunter.d.i;
import com.nut.blehunter.ui.widget.ClearEditText;
import java.util.List;

final class dg extends be
{
  private final String[] c = { this.b.getString(2131100022), this.b.getString(2131100021) };
  private List<View> d;

  public dg(List<View> paramList)
  {
    Object localObject;
    this.d = localObject;
  }

  public final int a()
  {
    return this.d.size();
  }

  public final CharSequence a(int paramInt)
  {
    return this.c[paramInt];
  }

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.addView((View)this.d.get(paramInt));
    paramViewGroup = (View)this.d.get(paramInt);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return this.d.get(paramInt);
      RegisterActivity.a(this.b, (TextView)paramViewGroup.findViewById(2131558818));
      RegisterActivity.a(this.b, (ClearEditText)paramViewGroup.findViewById(2131558819));
      RegisterActivity.a(this.b, (EditText)paramViewGroup.findViewById(2131558825));
      RegisterActivity.b(this.b, (EditText)paramViewGroup.findViewById(2131558910));
      RegisterActivity.b(this.b, (TextView)paramViewGroup.findViewById(2131558816));
      RegisterActivity.d(this.b).setOnClickListener(this.b);
      TextView localTextView = (TextView)paramViewGroup.findViewById(2131558822);
      RegisterActivity.e(this.b).setOnClickListener(this.b);
      RegisterActivity.e(this.b).setText(i.a(this.b));
      RegisterActivity.a(this.b, (Button)paramViewGroup.findViewById(2131558826));
      RegisterActivity.b(this.b).setOnClickListener(this.b);
      RegisterActivity.b(this.b).setEnabled(false);
      RegisterActivity.f(this.b).addTextChangedListener(new dh(this));
      RegisterActivity.j(this.b).addTextChangedListener(this.b);
      RegisterActivity.k(this.b).addTextChangedListener(this.b);
      RegisterActivity.c(this.b, localTextView);
      continue;
      RegisterActivity.c(this.b, (EditText)paramViewGroup.findViewById(2131558802));
      RegisterActivity.d(this.b, (EditText)paramViewGroup.findViewById(2131558909));
      paramViewGroup = (TextView)paramViewGroup.findViewById(2131558822);
      RegisterActivity.l(this.b).addTextChangedListener(this.b);
      RegisterActivity.m(this.b).addTextChangedListener(this.b);
      RegisterActivity.c(this.b, paramViewGroup);
    }
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public final void b(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeView((View)this.d.get(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dg
 * JD-Core Version:    0.6.2
 */