.class public Lcom/nut/blehunter/ui/LoginActivity;
.super Lcom/nut/blehunter/ui/b;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/nut/blehunter/ui/widget/ClearEditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/twitter/sdk/android/core/identity/n;

.field private h:Lcom/facebook/Session$StatusCallback;

.field private i:Lcom/facebook/UiLifecycleHelper;

.field private j:Lcom/tencent/tauth/c;

.field private k:Lcom/nut/blehunter/ui/ce;

.field private l:Lcom/sina/weibo/sdk/a/a/a;

.field private m:Lcom/sina/weibo/sdk/a/a;

.field private n:I

.field private o:Landroid/support/v4/view/ViewPager;

.field private p:Lcom/nut/blehunter/ui/ca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 110
    new-instance v0, Lcom/nut/blehunter/ui/br;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/br;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 675
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nut/blehunter/ui/LoginActivity;->e:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 2

    .prologue
    .line 78
    .line 20131
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b;->a(ILandroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 20387
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20388
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithFacebook(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lrx/h;)V

    :cond_0
    :goto_0
    return-void

    .line 20389
    :cond_1
    if-eqz p3, :cond_0

    .line 20390
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Z)V

    .line 20391
    const-string v0, "facebook login error"

    .line 21039
    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    .line 20275
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20277
    const-string v1, "save_email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    .line 20257
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20259
    const-string v1, "save_country_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20260
    const-string v1, "save_phone_number"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Lrx/h;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lrx/h;)V

    return-void
.end method

.method private a(Lrx/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const v0, 0x7f0600f3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 579
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 447
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bz;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bz;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/by;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/by;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bx;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bx;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bw;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bw;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    .line 18870
    invoke-static {}, Lrx/b/c;->a()Lrx/b/d;

    move-result-object v2

    .line 18871
    invoke-static {}, Lrx/b/c;->a()Lrx/b/d;

    move-result-object v3

    .line 18872
    new-instance v4, Lrx/c/d/a;

    invoke-direct {v4, v1, v2, v3}, Lrx/c/d/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    .line 18874
    new-instance v1, Lrx/c/a/i;

    invoke-direct {v1, v4}, Lrx/c/a/i;-><init>(Lrx/k;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/j;)Lrx/h;

    move-result-object v0

    .line 447
    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bv;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bv;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z
    .locals 3

    .prologue
    .line 19589
    if-nez p1, :cond_0

    .line 19590
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 19592
    :cond_0
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_1

    .line 19593
    const v0, 0x7f060147

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060149

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06008c

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/ui/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19600
    :goto_1
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 19597
    :cond_1
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/LoginActivity;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nut/blehunter/ui/LoginActivity;->d:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nut/blehunter/ui/LoginActivity;->f:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c()V
    .locals 1

    .prologue
    .line 19582
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->d()V

    .line 19583
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->g()V

    .line 19584
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->h()V

    .line 19585
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/j;->d()V

    .line 78
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .line 21265
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21266
    const-string v1, "save_country_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .line 21270
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21271
    const-string v1, "save_phone_number"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .line 21282
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21283
    const-string v1, "save_email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final i()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    .line 401
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 402
    iget v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    packed-switch v0, :pswitch_data_0

    .line 420
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_15

    if-ne p2, v8, :cond_15

    .line 421
    invoke-virtual {p0, v8}, Lcom/nut/blehunter/ui/LoginActivity;->setResult(I)V

    .line 422
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->finish()V

    .line 439
    :cond_1
    :goto_1
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/LoginActivity;->g:Lcom/twitter/sdk/android/core/identity/n;

    .line 13138
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v4, "Twitter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResult called with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13140
    iget-object v0, v2, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13141
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Twitter"

    const-string v4, "Authorize not in progress"

    invoke-interface {v0, v2, v4, v3}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13143
    :cond_2
    iget-object v0, v2, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    .line 14041
    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/identity/a;

    .line 13144
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/a;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13146
    iget-object v0, v2, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    .line 15033
    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v3, p0, Lcom/nut/blehunter/ui/LoginActivity;->k:Lcom/nut/blehunter/ui/ce;

    .line 15374
    const-string v4, "openSDK_LOG.Tencent"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResultData() reqcode = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", resultcode = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", data = null ? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", listener = null ? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15376
    invoke-static {}, Lcom/tencent/connect/common/c;->a()Lcom/tencent/connect/common/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/tencent/connect/common/c;->a(IILandroid/content/Intent;Lcom/tencent/tauth/b;)Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 15374
    goto :goto_2

    .line 416
    :pswitch_3
    iget-object v4, p0, Lcom/nut/blehunter/ui/LoginActivity;->l:Lcom/sina/weibo/sdk/a/a/a;

    .line 16229
    const-string v0, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16230
    iget v0, v4, Lcom/sina/weibo/sdk/a/a/a;->d:I

    if-ne p1, v0, :cond_11

    .line 16233
    if-ne p2, v8, :cond_f

    .line 16234
    iget-object v5, v4, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->e:Lcom/sina/weibo/sdk/c;

    .line 17083
    if-eqz v0, :cond_5

    .line 18052
    iget v6, v0, Lcom/sina/weibo/sdk/c;->b:I

    .line 17083
    const/16 v7, 0x2870

    if-le v6, v7, :cond_a

    .line 17085
    :cond_5
    if-eqz v0, :cond_a

    .line 17090
    if-eqz p3, :cond_9

    const-string v0, "_weibo_appPackage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17092
    :goto_3
    if-eqz v0, :cond_6

    .line 17093
    const-string v3, "_weibo_transaction"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 17094
    invoke-static {v5, v0}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 16234
    :cond_6
    :goto_4
    if-eqz v2, :cond_0

    .line 16239
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16240
    if-nez v0, :cond_7

    .line 16241
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16245
    :cond_7
    if-eqz v0, :cond_d

    .line 16246
    const-string v2, "access_denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 16247
    :cond_8
    const-string v0, "Weibo_SSO_login"

    const-string v2, "Login canceled by user."

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v3

    .line 17090
    goto :goto_3

    :cond_a
    move v2, v1

    .line 17098
    goto :goto_4

    .line 16250
    :cond_b
    const-string v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16251
    if-eqz v2, :cond_c

    .line 16252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16255
    :cond_c
    const-string v3, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16256
    iget-object v3, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 16257
    new-instance v4, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    invoke-direct {v4, v0, p2, v2}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16256
    invoke-interface {v3, v4}, Lcom/sina/weibo/sdk/a/c;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 16261
    :cond_d
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 16262
    invoke-static {v0}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/a/b;

    move-result-object v2

    .line 16264
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 16265
    const-string v3, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login Success! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16266
    iget-object v2, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    invoke-interface {v2, v0}, Lcom/sina/weibo/sdk/a/c;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 16268
    :cond_e
    const-string v0, "Weibo_SSO_login"

    const-string v2, "Failed to receive access token by SSO"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16270
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    iget-object v2, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/a/a/d;->a(Lcom/sina/weibo/sdk/a/c;)V

    goto/16 :goto_0

    .line 16275
    :cond_f
    if-nez p2, :cond_0

    .line 16278
    if-eqz p3, :cond_10

    .line 16279
    const-string v0, "Weibo_SSO_login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16280
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 16281
    new-instance v2, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    .line 16282
    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16283
    const-string v4, "error_code"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 16284
    const-string v5, "failing_url"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16281
    invoke-direct {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16280
    invoke-interface {v0, v2}, Lcom/sina/weibo/sdk/a/c;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 16287
    :cond_10
    const-string v0, "Weibo_SSO_login"

    const-string v2, "Login canceled by user."

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16291
    :cond_11
    const v0, 0x9c40

    if-ne p1, v0, :cond_0

    .line 16294
    if-ne p2, v8, :cond_12

    .line 16295
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 16296
    invoke-static {v0}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/a/b;

    move-result-object v2

    .line 16297
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16298
    const-string v3, "Weibo_SSO_login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login Success! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16299
    iget-object v2, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    invoke-interface {v2, v0}, Lcom/sina/weibo/sdk/a/c;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 16302
    :cond_12
    if-nez p2, :cond_0

    .line 16303
    if-eqz p3, :cond_14

    .line 16304
    const-string v0, "Weibo_SSO_login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16305
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16306
    if-nez v0, :cond_13

    .line 16307
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16310
    :cond_13
    if-eqz v0, :cond_0

    .line 16311
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    new-instance v2, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_code"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "error_description"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/sina/weibo/sdk/a/c;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 16315
    :cond_14
    const-string v0, "Weibo_SSO_login"

    const-string v2, "Login canceled by user."

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_15
    const/16 v0, 0x25c

    if-ne p1, v0, :cond_1

    if-ne p2, v8, :cond_1

    .line 425
    if-eqz p3, :cond_1

    .line 428
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 432
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setTextColor(I)V

    goto/16 :goto_1

    .line 434
    :cond_16
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setTextColor(I)V

    goto/16 :goto_1

    .line 402
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v3, 0x7f060146

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 8082
    :cond_0
    :goto_0
    return-void

    .line 211
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    const-class v1, Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 221
    :sswitch_2
    const-string v0, "login_phone_number"

    .line 5281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 5287
    iput v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 5288
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5289
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5290
    const v0, 0x7f060145

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 5292
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v1, v2}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5293
    const v0, 0x7f060147

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060149

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06008c

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/ui/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5298
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5299
    invoke-static {p0, v3}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 5302
    :cond_3
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->k()V

    .line 5303
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5304
    iget-object v2, p0, Lcom/nut/blehunter/ui/LoginActivity;->c:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5305
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v3

    const-string v4, "mobile"

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lrx/h;)V

    goto/16 :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5310
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 5311
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5312
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5314
    const v0, 0x7f0600f9

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 5316
    :cond_5
    invoke-static {v0}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5317
    const v0, 0x7f0601e7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 5321
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5322
    invoke-static {p0, v3}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 5325
    :cond_7
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->k()V

    .line 5326
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v2

    const-string v3, "email"

    invoke-static {v0, v1}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lrx/h;)V

    goto/16 :goto_0

    .line 230
    :sswitch_3
    const-string v0, "login_facebook"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 6373
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Z)V

    .line 6374
    const/4 v0, 0x3

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 6375
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 6376
    if-eqz v0, :cond_0

    .line 6377
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 6378
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "public_profile"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/LoginActivity;->h:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_0

    .line 6381
    :cond_8
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->h:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto/16 :goto_0

    .line 235
    :sswitch_4
    const-string v0, "login_twitter"

    .line 7281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 7353
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Z)V

    .line 7354
    const/4 v0, 0x4

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 7355
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->g:Lcom/twitter/sdk/android/core/identity/n;

    if-nez v0, :cond_9

    .line 7356
    new-instance v0, Lcom/twitter/sdk/android/core/identity/n;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/n;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->g:Lcom/twitter/sdk/android/core/identity/n;

    .line 7358
    :cond_9
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->g:Lcom/twitter/sdk/android/core/identity/n;

    new-instance v1, Lcom/nut/blehunter/ui/bu;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bu;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    .line 8074
    if-nez p0, :cond_a

    .line 8075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8081
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8082
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Cannot authorize, activity is finishing."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 8089
    :cond_b
    invoke-static {}, Lcom/twitter/sdk/android/core/identity/n;->a()V

    .line 8090
    new-instance v3, Lcom/twitter/sdk/android/core/identity/p;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/identity/n;->b:Lcom/twitter/sdk/android/core/m;

    invoke-direct {v3, v4, v1}, Lcom/twitter/sdk/android/core/identity/p;-><init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/f;)V

    .line 8098
    invoke-static {p0}, Lcom/twitter/sdk/android/core/identity/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8099
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v4, "Using SSO"

    invoke-interface {v1, v2, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8100
    iget-object v1, v0, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v2, Lcom/twitter/sdk/android/core/identity/k;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/identity/n;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a()I

    move-result v5

    invoke-direct {v2, v4, v3, v5}, Lcom/twitter/sdk/android/core/identity/k;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V

    invoke-virtual {v1, p0, v2}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v2

    .line 8091
    :cond_c
    if-nez v2, :cond_0

    .line 8108
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v4, "Using OAuth"

    invoke-interface {v1, v2, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8109
    iget-object v1, v0, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v2, Lcom/twitter/sdk/android/core/identity/g;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/n;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/twitter/sdk/android/core/identity/g;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/f;I)V

    invoke-virtual {v1, p0, v2}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result v0

    .line 8091
    if-nez v0, :cond_0

    .line 8093
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v1, "Authorize failed."

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/twitter/sdk/android/core/identity/p;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto/16 :goto_0

    .line 240
    :sswitch_5
    const-string v0, "login_qq"

    .line 8281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 8330
    const/4 v0, 0x5

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 8331
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->j:Lcom/tencent/tauth/c;

    if-nez v0, :cond_d

    .line 8332
    const v0, 0x7f060250

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->j:Lcom/tencent/tauth/c;

    .line 8334
    :cond_d
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->k:Lcom/nut/blehunter/ui/ce;

    if-nez v0, :cond_e

    .line 8335
    new-instance v0, Lcom/nut/blehunter/ui/ce;

    invoke-direct {v0, p0, v2}, Lcom/nut/blehunter/ui/ce;-><init>(Lcom/nut/blehunter/ui/LoginActivity;B)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->k:Lcom/nut/blehunter/ui/ce;

    .line 8337
    :cond_e
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->j:Lcom/tencent/tauth/c;

    const-string v1, ""

    iget-object v2, p0, Lcom/nut/blehunter/ui/LoginActivity;->k:Lcom/nut/blehunter/ui/ce;

    .line 9156
    const-string v3, "openSDK_LOG.Tencent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login() with activity, scope is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9157
    iget-object v0, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 10103
    const-string v3, "openSDK_LOG.QQAuth"

    const-string v4, "login()"

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10127
    const-string v3, "openSDK_LOG.QQAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-->login activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10128
    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/connect/b/u;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I

    goto/16 :goto_0

    .line 245
    :sswitch_6
    const-string v0, "login_weibo"

    .line 10281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 10341
    const/4 v0, 0x6

    iput v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->n:I

    .line 10342
    const v0, 0x7f060254

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10343
    iget-object v3, p0, Lcom/nut/blehunter/ui/LoginActivity;->m:Lcom/sina/weibo/sdk/a/a;

    if-nez v3, :cond_f

    .line 10344
    new-instance v3, Lcom/sina/weibo/sdk/a/a;

    const-string v4, "http://www.nutspace.com/weibo/callback"

    const-string v5, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nut/blehunter/ui/LoginActivity;->m:Lcom/sina/weibo/sdk/a/a;

    .line 10346
    :cond_f
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->l:Lcom/sina/weibo/sdk/a/a/a;

    if-nez v0, :cond_10

    .line 10347
    new-instance v0, Lcom/sina/weibo/sdk/a/a/a;

    iget-object v3, p0, Lcom/nut/blehunter/ui/LoginActivity;->m:Lcom/sina/weibo/sdk/a/a;

    invoke-direct {v0, p0, v3}, Lcom/sina/weibo/sdk/a/a/a;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/a/a;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->l:Lcom/sina/weibo/sdk/a/a/a;

    .line 10349
    :cond_10
    iget-object v4, p0, Lcom/nut/blehunter/ui/LoginActivity;->l:Lcom/sina/weibo/sdk/a/a/a;

    new-instance v3, Lcom/nut/blehunter/ui/cf;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/cf;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    .line 11142
    sget-object v5, Lcom/sina/weibo/sdk/a/a/c;->a:Lcom/sina/weibo/sdk/a/a/c;

    .line 11179
    const v0, 0x80cd

    iput v0, v4, Lcom/sina/weibo/sdk/a/a/a;->d:I

    .line 11180
    iput-object v3, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 11183
    sget-object v0, Lcom/sina/weibo/sdk/a/a/c;->b:Lcom/sina/weibo/sdk/a/a/c;

    if-ne v5, v0, :cond_16

    move v0, v1

    .line 11186
    :goto_1
    sget-object v6, Lcom/sina/weibo/sdk/a/a/c;->c:Lcom/sina/weibo/sdk/a/a/c;

    if-ne v5, v6, :cond_12

    .line 11188
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    invoke-virtual {v0, v3}, Lcom/sina/weibo/sdk/a/a/d;->a(Lcom/sina/weibo/sdk/a/c;)V

    .line 11143
    :cond_11
    :goto_2
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    iget-object v1, v4, Lcom/sina/weibo/sdk/a/a/a;->f:Lcom/sina/weibo/sdk/a/a;

    .line 13036
    iget-object v1, v1, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 11143
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/i;->a()V

    goto/16 :goto_0

    .line 11194
    :cond_12
    iget-object v3, v4, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 11425
    iget-object v3, v4, Lcom/sina/weibo/sdk/a/a/a;->e:Lcom/sina/weibo/sdk/c;

    if-eqz v3, :cond_13

    iget-object v3, v4, Lcom/sina/weibo/sdk/a/a/a;->e:Lcom/sina/weibo/sdk/c;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/c;->a()Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v1

    .line 11358
    :goto_3
    if-nez v3, :cond_14

    .line 11197
    :goto_4
    if-nez v2, :cond_11

    .line 11198
    if-eqz v0, :cond_15

    .line 11199
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    if-eqz v0, :cond_11

    .line 11200
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 11201
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "not install weibo client!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 11200
    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/a/c;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_2

    :cond_13
    move v3, v2

    .line 11425
    goto :goto_3

    .line 11362
    :cond_14
    iget-object v2, v4, Lcom/sina/weibo/sdk/a/a/a;->e:Lcom/sina/weibo/sdk/c;

    .line 12046
    iget-object v2, v2, Lcom/sina/weibo/sdk/c;->a:Ljava/lang/String;

    .line 11363
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sina.weibo.remotessoservice"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11364
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11366
    iget-object v2, v4, Lcom/sina/weibo/sdk/a/a/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    goto :goto_4

    .line 11204
    :cond_15
    iget-object v0, v4, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    iget-object v1, v4, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/a/a/d;->a(Lcom/sina/weibo/sdk/a/c;)V

    goto :goto_2

    .line 250
    :sswitch_7
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_16
    move v0, v2

    goto :goto_1

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00d8 -> :sswitch_2
        0x7f0d00d9 -> :sswitch_0
        0x7f0d00da -> :sswitch_1
        0x7f0d00de -> :sswitch_3
        0x7f0d00df -> :sswitch_4
        0x7f0d00e0 -> :sswitch_5
        0x7f0d00e1 -> :sswitch_6
        0x7f0d01a1 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0d00db

    .line 127
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->e()V

    .line 129
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->setContentView(I)V

    .line 130
    const v0, 0x7f0601d1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(I)V

    .line 132
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    .line 133
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    const v2, 0x7f0300b6

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    const v3, 0x7f0300b5

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/nut/blehunter/ui/ca;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/ca;-><init>(Lcom/nut/blehunter/ui/LoginActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->p:Lcom/nut/blehunter/ui/ca;

    .line 140
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->p:Lcom/nut/blehunter/ui/ca;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 142
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 143
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 144
    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->o:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 147
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    new-instance v1, Lcom/nut/blehunter/ui/bs;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bs;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/nut/blehunter/ui/widget/u;)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    new-instance v1, Lcom/nut/blehunter/ui/bt;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bt;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/nut/blehunter/ui/widget/t;)V

    .line 174
    new-instance v0, Lcom/nut/blehunter/ui/cd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/cd;-><init>(Lcom/nut/blehunter/ui/LoginActivity;B)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->h:Lcom/facebook/Session$StatusCallback;

    .line 175
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    iget-object v1, p0, Lcom/nut/blehunter/ui/LoginActivity;->h:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    .line 176
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 616
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 617
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 199
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 193
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 610
    iget-object v0, p0, Lcom/nut/blehunter/ui/LoginActivity;->i:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 611
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 187
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/LoginActivity;->g()V

    .line 204
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 205
    return-void
.end method
