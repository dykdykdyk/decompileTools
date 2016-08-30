package com.nut.blehunter.d;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.TextView;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.e;
import com.google.i18n.phonenumbers.o;
import com.nut.blehunter.entity.User;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class i
{
  public static String a(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0);
    for (Object localObject3 = (TelephonyManager)paramContext.getSystemService("phone"); ; localObject3 = null)
    {
      if (localObject3 != null)
      {
        localObject1 = ((TelephonyManager)localObject3).getLine1Number();
        if ((TextUtils.isEmpty((CharSequence)localObject1)) || (((String)localObject1).matches("^0*$")));
      }
      for (Object localObject1 = b((String)localObject1); ; localObject1 = null)
      {
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          if (localObject3 != null)
            localObject1 = ((TelephonyManager)localObject3).getNetworkCountryIso();
          localObject2 = localObject1;
          if (localObject1 == null)
            localObject2 = paramContext.getResources().getConfiguration().locale.getCountry();
        }
        if (localObject2 != null)
        {
          localObject1 = ((String)localObject2).toUpperCase();
          paramContext = (Context)localObject1;
          if (TextUtils.isEmpty((CharSequence)localObject1))
            paramContext = Locale.getDefault().getCountry();
          localObject1 = e.a();
          if (((e)localObject1).a(paramContext))
            break label217;
          localObject2 = e.b;
          localObject3 = Level.WARNING;
          localObject1 = paramContext;
          if (paramContext == null)
            localObject1 = "null";
          paramContext = String.valueOf(String.valueOf(localObject1));
          ((Logger)localObject2).log((Level)localObject3, paramContext.length() + 43 + "Invalid or missing region code (" + paramContext + ") provided.");
        }
        for (int i = 0; ; i = ((com.google.i18n.phonenumbers.k)localObject1).l)
        {
          if (i <= 0)
            break label276;
          return "+" + i;
          localObject1 = null;
          break;
          label217: localObject1 = ((e)localObject1).b(paramContext);
          if (localObject1 == null)
          {
            paramContext = String.valueOf(paramContext);
            if (paramContext.length() != 0);
            for (paramContext = "Invalid region code: ".concat(paramContext); ; paramContext = new String("Invalid region code: "))
              throw new IllegalArgumentException(paramContext);
          }
        }
        label276: return "";
      }
    }
  }

  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return "";
    return paramString.replaceAll("\\+", "");
  }

  public static boolean a(TextView paramTextView, EditText paramEditText)
  {
    try
    {
      e locale = e.a();
      paramTextView = paramTextView.getText().toString().trim();
      paramEditText = paramEditText.getText().toString().trim();
      paramTextView = locale.c(paramTextView + paramEditText);
      if (!paramEditText.equals(paramTextView.c))
        return false;
    }
    catch (NumberParseException paramTextView)
    {
      paramTextView.printStackTrace();
      return false;
    }
    switch (paramTextView.a)
    {
    default:
      paramTextView = paramTextView.c;
      return Pattern.compile("^[0-9]{6,12}$").matcher(paramTextView).matches();
    case 86:
    }
    paramTextView = paramTextView.c;
    return Pattern.compile("^(1)\\d{10}$").matcher(paramTextView).matches();
  }

  public static String b(Context paramContext)
  {
    User localUser = com.nut.blehunter.provider.k.b().c();
    if ((localUser != null) && (!TextUtils.isEmpty(localUser.a())))
      return "+" + localUser.a();
    return a(paramContext);
  }

  private static String b(String paramString)
  {
    Object localObject1;
    if (paramString == null)
      localObject1 = null;
    do
    {
      return localObject1;
      localObject1 = e.a();
      try
      {
        paramString = ((e)localObject1).c(paramString);
        int i = paramString.a;
        Object localObject2 = (List)((e)localObject1).h.get(Integer.valueOf(i));
        if (localObject2 == null)
        {
          localObject2 = e.a(paramString);
          paramString = e.b;
          localObject1 = Level.INFO;
          localObject2 = String.valueOf(String.valueOf(localObject2));
          paramString.log((Level)localObject1, ((String)localObject2).length() + 54 + "Missing/invalid country_code (" + i + ") for number " + (String)localObject2);
          paramString = null;
        }
        else if (((List)localObject2).size() == 1)
        {
          paramString = (String)((List)localObject2).get(0);
        }
        else
        {
          paramString = ((e)localObject1).a(paramString, (List)localObject2);
        }
      }
      catch (NumberParseException paramString)
      {
        return null;
      }
      localObject1 = paramString;
    }
    while (paramString != null);
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.i
 * JD-Core Version:    0.6.2
 */