package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.services.AccountService;
import io.fabric.sdk.android.services.b.ah;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import retrofit.RetrofitError;

public final class a<T extends q>
{
  protected final e a;
  private final ah b;
  private final d c;
  private final r<T> d;
  private final ExecutorService e;

  private a(r<T> paramr, ah paramah, d paramd, ExecutorService paramExecutorService, e parame)
  {
    this.b = paramah;
    this.d = paramr;
    this.c = paramd;
    this.e = paramExecutorService;
    this.a = parame;
  }

  public a(r<T> paramr, ExecutorService paramExecutorService)
  {
    this(paramr, new ah(), new d(), paramExecutorService, new e());
  }

  public final void a()
  {
    q localq = this.d.a();
    long l = System.currentTimeMillis();
    if ((localq != null) && (this.a.a(l)));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        this.e.submit(new c(this));
      return;
    }
  }

  protected final void b()
  {
    Iterator localIterator = this.d.b().values().iterator();
    while (localIterator.hasNext())
    {
      AccountService localAccountService = (AccountService)new s((q)localIterator.next()).a(AccountService.class);
      try
      {
        localAccountService.verifyCredentials(Boolean.valueOf(true), Boolean.valueOf(false));
      }
      catch (RetrofitError localRetrofitError)
      {
      }
    }
    this.a.b(System.currentTimeMillis());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.a
 * JD-Core Version:    0.6.2
 */