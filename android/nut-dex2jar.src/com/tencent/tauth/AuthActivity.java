package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.connect.common.AssistActivity;
import com.tencent.open.a.h;
import com.tencent.open.utils.o;
import com.tencent.open.utils.s;
import org.json.JSONObject;

public class AuthActivity extends Activity
{
  private static int a = 0;

  private static void a(String paramString)
  {
    h.a("openSDK_LOG.AuthActivity", "execAuthCallback url = " + paramString);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent() == null)
    {
      h.d("openSDK_LOG.AuthActivity", "-->onCreate, getIntent() return null");
      return;
    }
    paramBundle = null;
    try
    {
      Uri localUri = getIntent().getData();
      paramBundle = localUri;
      h.a("openSDK_LOG.AuthActivity", "-->onCreate, uri: " + paramBundle);
      h.c("openSDK_LOG.AuthActivity", "-->handleActionUri--start");
      if ((paramBundle == null) || (paramBundle.toString() == null) || (paramBundle.toString().equals("")))
      {
        h.d("openSDK_LOG.AuthActivity", "-->handleActionUri, uri invalid");
        finish();
        return;
      }
    }
    catch (Exception localException1)
    {
      while (true)
        h.e("openSDK_LOG.AuthActivity", "-->onCreate, getIntent().getData() has exception! " + localException1.getMessage());
      Object localObject1 = paramBundle.toString();
      paramBundle = s.a(((String)localObject1).substring(((String)localObject1).indexOf("#") + 1));
      if (paramBundle == null)
      {
        h.d("openSDK_LOG.AuthActivity", "-->handleActionUri, bundle is null");
        finish();
        return;
      }
      Object localObject2 = paramBundle.getString("action");
      h.c("openSDK_LOG.AuthActivity", "-->handleActionUri, action: " + (String)localObject2);
      if (localObject2 == null)
      {
        a((String)localObject1);
        return;
      }
      if ((((String)localObject2).equals("shareToQQ")) || (((String)localObject2).equals("shareToQzone")) || (((String)localObject2).equals("addToQQFavorites")) || (((String)localObject2).equals("sendToMyComputer")) || (((String)localObject2).equals("shareToTroopBar")))
      {
        if ((((String)localObject2).equals("shareToQzone")) && (o.a(this, "com.tencent.mobileqq") != null) && (o.c(this, "5.2.0") < 0))
        {
          int i = a + 1;
          a = i;
          if (i == 2)
          {
            a = 0;
            finish();
            return;
          }
        }
        h.c("openSDK_LOG.AuthActivity", "-->handleActionUri, most share action, start assistactivity");
        localObject1 = new Intent(this, AssistActivity.class);
        ((Intent)localObject1).putExtras(paramBundle);
        ((Intent)localObject1).setFlags(603979776);
        startActivity((Intent)localObject1);
        finish();
        return;
      }
      if (((String)localObject2).equals("sharePrize"))
      {
        localObject2 = getPackageManager().getLaunchIntentForPackage(getPackageName());
        localObject1 = paramBundle.getString("response");
        paramBundle = "";
        try
        {
          localObject1 = s.d((String)localObject1).getString("activityid");
          paramBundle = (Bundle)localObject1;
          if (!TextUtils.isEmpty(paramBundle))
          {
            ((Intent)localObject2).putExtra("sharePrize", true);
            localObject1 = new Bundle();
            ((Bundle)localObject1).putString("activityid", paramBundle);
            ((Intent)localObject2).putExtras((Bundle)localObject1);
          }
          startActivity((Intent)localObject2);
          finish();
          return;
        }
        catch (Exception localException2)
        {
          while (true)
            h.b("openSDK_LOG.AuthActivity", "sharePrize parseJson has exception.", localException2);
        }
      }
      a(localException2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.tauth.AuthActivity
 * JD-Core Version:    0.6.2
 */