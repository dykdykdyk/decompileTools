package android.support.v7.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class o extends Handler
{
  private WeakReference<DialogInterface> a;

  public o(DialogInterface paramDialogInterface)
  {
    this.a = new WeakReference(paramDialogInterface);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 0:
    default:
      return;
    case -3:
    case -2:
    case -1:
      ((DialogInterface.OnClickListener)paramMessage.obj).onClick((DialogInterface)this.a.get(), paramMessage.what);
      return;
    case 1:
    }
    ((DialogInterface)paramMessage.obj).dismiss();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.o
 * JD-Core Version:    0.6.2
 */