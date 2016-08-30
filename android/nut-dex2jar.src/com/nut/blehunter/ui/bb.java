package com.nut.blehunter.ui;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import com.nut.blehunter.d.i;
import com.nut.blehunter.ui.widget.ClearEditText;

final class bb
  implements TextWatcher
{
  bb(ba paramba)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (i.a(LoginActivity.c(this.a.c), LoginActivity.f(this.a.c)))
    {
      LoginActivity.f(this.a.c).setTextColor(this.a.c.getResources().getColor(2131427348));
      return;
    }
    LoginActivity.f(this.a.c).setTextColor(this.a.c.getResources().getColor(17170454));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bb
 * JD-Core Version:    0.6.2
 */