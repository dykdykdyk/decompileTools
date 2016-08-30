package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.nut.blehunter.d.i;

final class dh
  implements TextWatcher
{
  dh(dg paramdg)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (i.a(RegisterActivity.e(this.a.b), RegisterActivity.f(this.a.b)))
    {
      RegisterActivity.g(this.a.b);
      RegisterActivity.h(this.a.b);
      if (this.a.b.n != null)
        this.a.b.n.cancel();
      RegisterActivity.b(this.a.b).setText(2131099737);
      RegisterActivity.b(this.a.b).setEnabled(true);
    }
    while (true)
    {
      RegisterActivity.i(this.a.b);
      return;
      RegisterActivity.b(this.a.b).setEnabled(false);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dh
 * JD-Core Version:    0.6.2
 */