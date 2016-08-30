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

final class do extends be
{
  private final String[] c = { this.b.getString(2131100022), this.b.getString(2131100021) };
  private List<View> d;

  public do(List<View> paramList)
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
      ResetPasswordActivity.a(this.b, (TextView)paramViewGroup.findViewById(2131558818));
      ResetPasswordActivity.a(this.b, (ClearEditText)paramViewGroup.findViewById(2131558819));
      ResetPasswordActivity.a(this.b, (EditText)paramViewGroup.findViewById(2131558825));
      ResetPasswordActivity.b(this.b, (EditText)paramViewGroup.findViewById(2131558910));
      ResetPasswordActivity.b(this.b, (TextView)paramViewGroup.findViewById(2131558816));
      ResetPasswordActivity.c(this.b).setOnClickListener(this.b);
      ResetPasswordActivity.d(this.b).setOnClickListener(this.b);
      ResetPasswordActivity.d(this.b).setText(i.a(this.b));
      ResetPasswordActivity.a(this.b, (Button)paramViewGroup.findViewById(2131558826));
      ResetPasswordActivity.a(this.b).setOnClickListener(this.b);
      ResetPasswordActivity.a(this.b).setEnabled(false);
      ResetPasswordActivity.e(this.b).addTextChangedListener(new dp(this));
      ResetPasswordActivity.i(this.b).addTextChangedListener(this.b);
      ResetPasswordActivity.j(this.b).addTextChangedListener(this.b);
      continue;
      ResetPasswordActivity.c(this.b, (EditText)paramViewGroup.findViewById(2131558802));
      ResetPasswordActivity.k(this.b).addTextChangedListener(this.b);
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
 * Qualified Name:     com.nut.blehunter.ui.do
 * JD-Core Version:    0.6.2
 */