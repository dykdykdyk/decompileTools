package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.internal.Utility;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.Builder;
import com.facebook.widget.WebDialog.OnCompleteListener;

class AuthorizationClient$WebViewAuthHandler extends AuthorizationClient.AuthHandler
{
  private static final long serialVersionUID = 1L;
  private String applicationId;
  private String e2e;
  private transient WebDialog loginDialog;

  AuthorizationClient$WebViewAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }

  private String loadCookieToken()
  {
    return this.this$0.getStartActivityDelegate().getActivityContext().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
  }

  private void saveCookieToken(String paramString)
  {
    this.this$0.getStartActivityDelegate().getActivityContext().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", paramString).apply();
  }

  void cancel()
  {
    if (this.loginDialog != null)
    {
      this.loginDialog.setOnCompleteListener(null);
      this.loginDialog.dismiss();
      this.loginDialog = null;
    }
  }

  String getNameForLogging()
  {
    return "web_view";
  }

  boolean needsInternetPermission()
  {
    return true;
  }

  boolean needsRestart()
  {
    return true;
  }

  void onWebDialogComplete(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest, Bundle paramBundle, FacebookException paramFacebookException)
  {
    if (paramBundle != null)
    {
      if (paramBundle.containsKey("e2e"))
        this.e2e = paramBundle.getString("e2e");
      paramBundle = AccessToken.createFromWebBundle(paramAuthorizationRequest.getPermissions(), paramBundle, AccessTokenSource.WEB_VIEW);
      paramAuthorizationRequest = AuthorizationClient.Result.createTokenResult(this.this$0.pendingRequest, paramBundle);
      CookieSyncManager.createInstance(this.this$0.context).sync();
      saveCookieToken(paramBundle.getToken());
    }
    while (true)
    {
      if (!Utility.isNullOrEmpty(this.e2e))
        AuthorizationClient.access$200(this.this$0, this.applicationId, this.e2e);
      this.this$0.completeAndValidate(paramAuthorizationRequest);
      return;
      if (!(paramFacebookException instanceof FacebookOperationCanceledException))
        break;
      paramAuthorizationRequest = AuthorizationClient.Result.createCancelResult(this.this$0.pendingRequest, "User canceled log in.");
    }
    this.e2e = null;
    paramBundle = paramFacebookException.getMessage();
    if ((paramFacebookException instanceof FacebookServiceException))
    {
      paramBundle = ((FacebookServiceException)paramFacebookException).getRequestError();
      paramAuthorizationRequest = String.format("%d", new Object[] { Integer.valueOf(paramBundle.getErrorCode()) });
      paramBundle = paramBundle.toString();
    }
    while (true)
    {
      paramAuthorizationRequest = AuthorizationClient.Result.createErrorResult(this.this$0.pendingRequest, null, paramBundle, paramAuthorizationRequest);
      break;
      paramAuthorizationRequest = null;
    }
  }

  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    this.applicationId = paramAuthorizationRequest.getApplicationId();
    Bundle localBundle = new Bundle();
    if (!Utility.isNullOrEmpty(paramAuthorizationRequest.getPermissions()))
    {
      localObject = TextUtils.join(",", paramAuthorizationRequest.getPermissions());
      localBundle.putString("scope", (String)localObject);
      addLoggingExtra("scope", localObject);
    }
    localBundle.putString("default_audience", paramAuthorizationRequest.getDefaultAudience().getNativeProtocolAudience());
    Object localObject = paramAuthorizationRequest.getPreviousAccessToken();
    if ((!Utility.isNullOrEmpty((String)localObject)) && (((String)localObject).equals(loadCookieToken())))
    {
      localBundle.putString("access_token", (String)localObject);
      addLoggingExtra("access_token", "1");
    }
    while (true)
    {
      localObject = new AuthorizationClient.WebViewAuthHandler.1(this, paramAuthorizationRequest);
      this.e2e = AuthorizationClient.access$100();
      addLoggingExtra("e2e", this.e2e);
      this.loginDialog = ((WebDialog.Builder)new AuthorizationClient.AuthDialogBuilder(this.this$0.getStartActivityDelegate().getActivityContext(), this.applicationId, localBundle).setE2E(this.e2e).setIsRerequest(paramAuthorizationRequest.isRerequest()).setOnCompleteListener((WebDialog.OnCompleteListener)localObject)).build();
      this.loginDialog.show();
      return true;
      Utility.clearFacebookCookies(this.this$0.context);
      addLoggingExtra("access_token", "0");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.WebViewAuthHandler
 * JD-Core Version:    0.6.2
 */