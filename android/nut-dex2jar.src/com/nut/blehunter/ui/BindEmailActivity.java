package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.nut.blehunter.d.h;
import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.Email;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.ui.b.a.k;
import retrofit2.Call;

public class BindEmailActivity extends b
  implements TextWatcher, View.OnClickListener
{
  private int m;
  private EditText n;
  private EditText o;
  private EditText p;

  private void b(String paramString)
  {
    k.a(this);
    a.b().bindEmail(a.a("email", paramString)).enqueue(new l(this, paramString));
  }

  private void g()
  {
    this.n = ((EditText)findViewById(2131558802));
    this.o = ((EditText)findViewById(2131558799));
    this.p = ((EditText)findViewById(2131558800));
    this.n.addTextChangedListener(this);
    this.o.addTextChangedListener(this);
    this.p.addTextChangedListener(this);
    Object localObject = (Button)findViewById(2131558804);
    TextView localTextView = (TextView)findViewById(2131558803);
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131558801);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131558798);
    ((Button)localObject).setOnClickListener(this);
    switch (this.m)
    {
    default:
      return;
    case 100:
      localLinearLayout1.setVisibility(0);
      ((Button)localObject).setVisibility(8);
      localTextView.setVisibility(8);
      localLinearLayout2.setVisibility(8);
      return;
    case 101:
      localLinearLayout1.setVisibility(8);
      ((Button)localObject).setVisibility(8);
      localTextView.setVisibility(8);
      localLinearLayout2.setVisibility(0);
      return;
    case 102:
    }
    localLinearLayout1.setVisibility(0);
    ((Button)localObject).setVisibility(0);
    localTextView.setVisibility(0);
    localLinearLayout2.setVisibility(8);
    localObject = m.a().b();
    if ((localObject != null) && (((User)localObject).c != null))
      this.n.setText(((User)localObject).c.a);
    this.n.setEnabled(false);
  }

  public void afterTextChanged(Editable paramEditable)
  {
    invalidateOptionsMenu();
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558804:
    }
    paramView = this.n.getText().toString().trim();
    if (!h.b(paramView))
    {
      n.a(this, 2131100099);
      return;
    }
    b(paramView);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    b(2131100086);
    this.m = getIntent().getIntExtra("bind_type", 100);
    if (this.m == 101)
      b(2131100091);
    g();
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    int k = 2131623948;
    int i1 = 2131558925;
    boolean bool2 = false;
    boolean bool1;
    int j;
    int i;
    switch (this.m)
    {
    default:
      bool1 = bool2;
      j = k;
      i = i1;
    case 100:
    case 101:
    case 102:
    }
    while (true)
    {
      getMenuInflater().inflate(j, paramMenu);
      paramMenu.findItem(i).setEnabled(bool1);
      return true;
      String str = this.n.getText().toString().trim();
      Object localObject = m.a().b();
      if ((localObject != null) && (((User)localObject).k()))
      {
        i = i1;
        j = k;
        bool1 = bool2;
        if (!((User)localObject).c.a.equals(str))
        {
          bool1 = true;
          i = i1;
          j = k;
        }
      }
      else
      {
        i = i1;
        j = k;
        bool1 = bool2;
        if (!TextUtils.isEmpty(str))
        {
          bool1 = true;
          i = i1;
          j = k;
          continue;
          str = this.o.getText().toString().trim();
          localObject = this.p.getText().toString().trim();
          i = i1;
          j = k;
          bool1 = bool2;
          if (!TextUtils.isEmpty(str))
          {
            i = i1;
            j = k;
            bool1 = bool2;
            if (!TextUtils.isEmpty((CharSequence)localObject))
            {
              bool1 = true;
              i = i1;
              j = k;
              continue;
              j = 2131623941;
              i = 2131558919;
              bool1 = true;
            }
          }
        }
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131558925:
    case 2131558919:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      String str1;
      if (this.m == 100)
      {
        str1 = this.n.getText().toString().trim();
        if (!h.b(str1))
        {
          n.a(this, 2131100099);
          return false;
        }
        b(str1);
      }
      else if (this.m == 101)
      {
        str1 = this.o.getText().toString().trim();
        String str2 = this.p.getText().toString().trim();
        User localUser = m.a().b();
        if ((localUser != null) && (localUser.c != null) && (!str1.equals(localUser.c.a)))
        {
          n.a(this, 2131100101);
          return false;
        }
        if (!h.b(str2))
        {
          n.a(this, 2131100099);
          return false;
        }
        b(str2);
        continue;
        this.m = 100;
        g();
        this.n.setEnabled(true);
        this.n.setSelection(this.n.getText().toString().trim().length());
        invalidateOptionsMenu();
      }
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.BindEmailActivity
 * JD-Core Version:    0.6.2
 */