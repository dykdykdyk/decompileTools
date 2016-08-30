package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.k;
import java.util.List;
import retrofit2.Call;

public class ShareManageActivity extends b
{
  private Nut m;
  private RecyclerView n;
  private eq o;

  public void onBackPressed()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("nut", this.m);
    setResult(-1, localIntent);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903104);
    b(2131100045);
    paramBundle = getIntent();
    if (paramBundle != null)
      this.m = ((Nut)paramBundle.getParcelableExtra("nut"));
    this.n = ((RecyclerView)findViewById(2131558607));
    this.o = new eq(this);
    this.n.setLayoutManager(new LinearLayoutManager(this));
    this.n.setAdapter(this.o);
    if ((this.m != null) && (!TextUtils.isEmpty(this.m.f)))
    {
      paramBundle = this.m.f;
      k.a(this);
      com.nut.blehunter.rxApi.a.b().getSharedUsers(com.nut.blehunter.rxApi.a.a("articleUUID", paramBundle)).enqueue(new en(this));
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623936, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    Object localObject;
    if (paramMenuItem.getItemId() == 2131558914)
    {
      if ((this.m.A != null) && (this.m.A.size() >= 20))
        break label88;
      localObject = new Intent(this, LookForShareActivity.class);
      ((Intent)localObject).putExtra("nut", this.m);
      startActivity((Intent)localObject);
      u.a("NTGroupControlEvent", "ENTRY_TAPPED");
      com.umeng.analytics.b.a(this, "find_mode_share_button_tapped");
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      label88: localObject = getString(2131099854, new Object[] { this.m.c });
      new com.nut.blehunter.ui.b.a.b(this).a(2131099881).a(true).b(false).b((String)localObject).a(2131099792, null).a().a(d(), "baseDialog");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ShareManageActivity
 * JD-Core Version:    0.6.2
 */