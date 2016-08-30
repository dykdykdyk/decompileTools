package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.b.c;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new b();
  public static com.google.android.gms.common.b.b a = c.a();
  private static Comparator<Scope> n = new a();
  final int b;
  String c;
  String d;
  String e;
  String f;
  Uri g;
  String h;
  long i;
  String j;
  List<Scope> k;
  String l;
  String m;

  GoogleSignInAccount(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, String paramString5, long paramLong, String paramString6, List<Scope> paramList, String paramString7, String paramString8)
  {
    this.b = paramInt;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.g = paramUri;
    this.h = paramString5;
    this.i = paramLong;
    this.j = paramString6;
    this.k = paramList;
    this.l = paramString7;
    this.m = paramString8;
  }

  private JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    try
    {
      if (this.c != null)
        localJSONObject.put("id", this.c);
      if (this.d != null)
        localJSONObject.put("tokenId", this.d);
      if (this.e != null)
        localJSONObject.put("email", this.e);
      if (this.f != null)
        localJSONObject.put("displayName", this.f);
      if (this.l != null)
        localJSONObject.put("givenName", this.l);
      if (this.m != null)
        localJSONObject.put("familyName", this.m);
      if (this.g != null)
        localJSONObject.put("photoUrl", this.g.toString());
      if (this.h != null)
        localJSONObject.put("serverAuthCode", this.h);
      localJSONObject.put("expirationTime", this.i);
      localJSONObject.put("obfuscatedIdentifier", this.j);
      localJSONArray = new JSONArray();
      Collections.sort(this.k, n);
      Iterator localIterator = this.k.iterator();
      while (localIterator.hasNext())
        localJSONArray.put(((Scope)localIterator.next()).b);
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
    localJSONException.put("grantedScopes", localJSONArray);
    return localJSONException;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GoogleSignInAccount))
      return false;
    return ((GoogleSignInAccount)paramObject).a().toString().equals(a().toString());
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.auth.api.signin.GoogleSignInAccount
 * JD-Core Version:    0.6.2
 */