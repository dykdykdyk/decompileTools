package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.b;
import com.google.android.gms.internal.s;

public class GoogleApiActivity extends Activity
  implements DialogInterface.OnCancelListener
{
  protected int a = 0;

  public static PendingIntent a(Context paramContext, PendingIntent paramPendingIntent, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, GoogleApiActivity.class);
    localIntent.putExtra("pending_intent", paramPendingIntent);
    localIntent.putExtra("failing_client_id", paramInt);
    localIntent.putExtra("notify_manager", true);
    return PendingIntent.getActivity(paramContext, 0, localIntent, 134217728);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
    {
      boolean bool = getIntent().getBooleanExtra("notify_manager", true);
      this.a = 0;
      paramIntent = s.a();
      setResult(paramInt2);
      if (bool)
        switch (paramInt2)
        {
        default:
        case 0:
        case -1:
        }
    }
    while (true)
    {
      finish();
      return;
      paramIntent.b(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
      continue;
      paramIntent.b();
      continue;
      if (paramInt1 == 2)
      {
        this.a = 0;
        setResult(paramInt2);
      }
    }
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.a = 0;
    setResult(0);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
      this.a = paramBundle.getInt("resolution");
    if (this.a != 1)
    {
      localObject = getIntent().getExtras();
      if (localObject == null)
      {
        Log.e("GoogleApiActivity", "Activity started without extras");
        finish();
      }
    }
    else
    {
      return;
    }
    paramBundle = (PendingIntent)((Bundle)localObject).get("pending_intent");
    Object localObject = (Integer)((Bundle)localObject).get("error_code");
    if ((paramBundle == null) && (localObject == null))
    {
      Log.e("GoogleApiActivity", "Activity started without resolution");
      finish();
      return;
    }
    if (paramBundle != null)
      try
      {
        startIntentSenderForResult(paramBundle.getIntentSender(), 1, null, 0, 0, 0);
        this.a = 1;
        return;
      }
      catch (IntentSender.SendIntentException paramBundle)
      {
        Log.e("GoogleApiActivity", "Failed to launch pendingIntent", paramBundle);
        finish();
        return;
      }
    b.a();
    b.a(this, ((Integer)localObject).intValue(), this);
    this.a = 1;
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("resolution", this.a);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiActivity
 * JD-Core Version:    0.6.2
 */