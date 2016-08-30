package android.support.v4.app;

import android.os.Bundle;

final class cv
{
  static Bundle[] a(ct[] paramArrayOfct)
  {
    if (paramArrayOfct == null)
      return null;
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfct.length];
    int i = 0;
    while (i < paramArrayOfct.length)
    {
      ct localct = paramArrayOfct[i];
      Bundle localBundle = new Bundle();
      localBundle.putString("resultKey", localct.a());
      localBundle.putCharSequence("label", localct.b());
      localBundle.putCharSequenceArray("choices", localct.c());
      localBundle.putBoolean("allowFreeFormInput", localct.d());
      localBundle.putBundle("extras", localct.e());
      arrayOfBundle[i] = localBundle;
      i += 1;
    }
    return arrayOfBundle;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.cv
 * JD-Core Version:    0.6.2
 */