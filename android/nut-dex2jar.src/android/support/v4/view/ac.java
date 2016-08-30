package android.support.v4.view;

import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;

class ac extends ab
{
  public void a(LayoutInflater paramLayoutInflater, ai paramai)
  {
    if (paramai != null);
    for (paramai = new ah(paramai); ; paramai = null)
    {
      paramLayoutInflater.setFactory2(paramai);
      LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
      if (!(localFactory instanceof LayoutInflater.Factory2))
        break;
      ag.a(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
      return;
    }
    ag.a(paramLayoutInflater, paramai);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ac
 * JD-Core Version:    0.6.2
 */