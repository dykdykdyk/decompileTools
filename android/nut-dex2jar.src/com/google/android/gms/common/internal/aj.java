package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.c;
import com.google.android.gms.common.b.d;
import com.google.android.gms.common.b.f;

public final class aj
{
  public static String a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default:
      Log.e("GoogleApiAvailability", 33 + "Unexpected error code " + paramInt);
    case 4:
    case 6:
      return null;
    case 1:
      return paramContext.getString(c.common_google_play_services_install_title);
    case 3:
      return paramContext.getString(c.common_google_play_services_enable_title);
    case 18:
      return paramContext.getString(c.common_google_play_services_updating_title);
    case 2:
    case 42:
      return paramContext.getString(c.common_google_play_services_update_title);
    case 9:
      Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
      return paramContext.getString(c.common_google_play_services_unsupported_title);
    case 7:
      Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
      return paramContext.getString(c.common_google_play_services_network_error_title);
    case 8:
      Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
      return null;
    case 10:
      Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
      return null;
    case 5:
      Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
      return paramContext.getString(c.common_google_play_services_invalid_account_title);
    case 11:
      Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
      return null;
    case 16:
      Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
      return null;
    case 17:
      Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
      return paramContext.getString(c.common_google_play_services_sign_in_failed_title);
    case 20:
    }
    Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
    return paramContext.getString(c.common_google_play_services_restricted_profile_title);
  }

  public static String a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default:
      return paramContext.getString(c.common_google_play_services_unknown_issue, new Object[] { paramString });
    case 1:
      boolean bool;
      if (paramContext == null)
      {
        bool = false;
        if (bool)
          return paramContext.getString(c.common_google_play_services_install_text_tablet, new Object[] { paramString });
      }
      else
      {
        if (d.a == null)
        {
          if ((paramContext.getConfiguration().screenLayout & 0xF) <= 3)
            break label260;
          paramInt = 1;
          if ((!f.a(11)) || (paramInt == 0))
          {
            if (d.b == null)
            {
              Configuration localConfiguration = paramContext.getConfiguration();
              if ((!f.a(13)) || ((localConfiguration.screenLayout & 0xF) > 3) || (localConfiguration.smallestScreenWidthDp < 600))
                break label265;
              bool = true;
              d.b = Boolean.valueOf(bool);
            }
            if (!d.b.booleanValue())
              break label270;
          }
        }
        for (bool = true; ; bool = false)
        {
          d.a = Boolean.valueOf(bool);
          bool = d.a.booleanValue();
          break;
          paramInt = 0;
          break label168;
          bool = false;
          break label225;
        }
      }
      return paramContext.getString(c.common_google_play_services_install_text_phone, new Object[] { paramString });
    case 3:
      return paramContext.getString(c.common_google_play_services_enable_text, new Object[] { paramString });
    case 18:
      return paramContext.getString(c.common_google_play_services_updating_text, new Object[] { paramString });
    case 2:
      return paramContext.getString(c.common_google_play_services_update_text, new Object[] { paramString });
    case 42:
      return paramContext.getString(c.common_google_play_services_wear_update_text);
    case 9:
      return paramContext.getString(c.common_google_play_services_unsupported_text, new Object[] { paramString });
    case 7:
      return paramContext.getString(c.common_google_play_services_network_error_text);
    case 5:
      return paramContext.getString(c.common_google_play_services_invalid_account_text);
    case 16:
      label260: label265: label270: return paramContext.getString(c.common_google_play_services_api_unavailable_text, new Object[] { paramString });
    case 17:
      label168: label225: return paramContext.getString(c.common_google_play_services_sign_in_failed_text);
    case 20:
    }
    return paramContext.getString(c.common_google_play_services_restricted_profile_text);
  }

  public static String b(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default:
      return paramContext.getString(17039370);
    case 1:
      return paramContext.getString(c.common_google_play_services_install_button);
    case 3:
      return paramContext.getString(c.common_google_play_services_enable_button);
    case 2:
    }
    return paramContext.getString(c.common_google_play_services_update_button);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.aj
 * JD-Core Version:    0.6.2
 */