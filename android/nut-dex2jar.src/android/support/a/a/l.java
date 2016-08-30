package android.support.a.a;

import android.content.res.TypedArray;

final class l extends o
{
  public l()
  {
  }

  public l(l paraml)
  {
    super(paraml);
  }

  final void a(TypedArray paramTypedArray)
  {
    String str = paramTypedArray.getString(0);
    if (str != null)
      this.n = str;
    paramTypedArray = paramTypedArray.getString(1);
    if (paramTypedArray != null)
      this.m = f.a(paramTypedArray);
  }

  public final boolean a()
  {
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.l
 * JD-Core Version:    0.6.2
 */