.class public Lcom/nut/blehunter/ui/BindPhoneActivity;
.super Lcom/nut/blehunter/ui/b;
.source "BindPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/CountDownTimer;

.field b:Landroid/os/CountDownTimer;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/Menu;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 50
    const-string v0, "BIND_MOBILE"

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->c:Ljava/lang/String;

    .line 52
    const-string v0, "NUT_RESET_PASSWORD"

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->d:Ljava/lang/String;

    .line 54
    const-string v0, "MODIFY_MOBILE_OLD"

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->e:Ljava/lang/String;

    .line 56
    const-string v0, "MODIFY_MOBILE_NEW"

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->f:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    .line 537
    new-instance v0, Lcom/nut/blehunter/ui/x;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/x;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    .line 556
    new-instance v0, Lcom/nut/blehunter/ui/y;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/y;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;)I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    return v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 4

    .prologue
    .line 202
    invoke-static {p1, p2}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 217
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 216
    :goto_1
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nut/blehunter/ui/SendMailActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v3, "country"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "mobile"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 42
    .line 3414
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 3415
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3418
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    .line 4404
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 4405
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 4406
    invoke-static {p1}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5129
    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    if-nez v2, :cond_0

    .line 5130
    new-instance v2, Lcom/nut/blehunter/entity/Mobile;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Mobile;-><init>()V

    iput-object v2, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    .line 5132
    :cond_0
    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iput-object v1, v2, Lcom/nut/blehunter/entity/Mobile;->a:Ljava/lang/String;

    .line 5143
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    if-nez v1, :cond_1

    .line 5144
    new-instance v1, Lcom/nut/blehunter/entity/Mobile;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/Mobile;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    .line 5146
    :cond_1
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iput-object p2, v1, Lcom/nut/blehunter/entity/Mobile;->b:Ljava/lang/String;

    .line 4408
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 4409
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->setResult(I)V

    .line 4410
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->finish()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3497
    :cond_0
    :goto_0
    return-void

    .line 3499
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 3500
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "bindMobile"

    invoke-static {p1, p2, p3}, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->createBindMobileRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindMobile(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/nut/blehunter/ui/v;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    .line 3517
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3521
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 3522
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "modifyMobile"

    invoke-static/range {p1 .. p6}, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->createModifyMobileRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindMobile(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/w;

    invoke-direct {v1, p0, p4, p5}, Lcom/nut/blehunter/ui/w;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/BindPhoneActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 426
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    const-string v1, "captcha"

    invoke-static {p1, p2, p3}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/s;

    invoke-direct {v1, p0, p3}, Lcom/nut/blehunter/ui/s;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/BindPhoneActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/BindPhoneActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private d(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 377
    const v0, 0x7f0d01cc

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 378
    const v1, 0x7f0d01d3

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 379
    const v2, 0x7f0d01d7

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 388
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 393
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    const v0, 0x7f0d01d8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06007a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->q:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    if-eqz p3, :cond_0

    .line 146
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    const v1, 0x7f0d01a1

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0d01cd

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 150
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :goto_0
    iget v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    if-le v1, v0, :cond_1

    .line 111
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    .line 112
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->d(I)V

    .line 119
    :goto_1
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->l()V

    .line 117
    :cond_2
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2472
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 230
    :sswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->t:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->r:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->t:Ljava/lang/String;

    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(I)Z

    move-result v0

    .line 2449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2452
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2453
    if-eqz v0, :cond_2

    const-string v0, "BIND_MOBILE"

    .line 2454
    :goto_1
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v4

    invoke-static {v1, v2, v0, v3}, Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->validCaptcha(Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/t;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/t;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 2453
    :cond_2
    const-string v0, "MODIFY_MOBILE_OLD"

    goto :goto_1

    .line 247
    :sswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->r:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    .line 253
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 259
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->s:Ljava/lang/String;

    const-string v2, "MODIFY_MOBILE_OLD"

    invoke-direct {p0, v0, v1, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 261
    const v0, 0x7f0d01d2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 268
    :sswitch_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->h:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 272
    :cond_5
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BIND_MOBILE"

    .line 273
    :goto_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->p:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->q:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->q:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_6
    const-string v0, "MODIFY_MOBILE_NEW"

    goto :goto_2

    .line 282
    :sswitch_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v3, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->q:Ljava/lang/String;

    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(I)Z

    move-result v2

    .line 2471
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2475
    if-eqz v2, :cond_7

    const-string v0, "BIND_MOBILE"

    .line 2476
    :goto_3
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v1

    invoke-static {v3, v4, v0, v5}, Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->validCaptcha(Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v6

    new-instance v0, Lcom/nut/blehunter/ui/u;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ui/u;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 2475
    :cond_7
    const-string v0, "MODIFY_MOBILE_NEW"

    goto :goto_3

    .line 293
    :sswitch_5
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "BIND_MOBILE"

    .line 294
    :goto_4
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->q:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 296
    const v0, 0x7f0d01da

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 298
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "RESEND_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_8
    const-string v0, "MODIFY_MOBILE_NEW"

    goto :goto_4

    .line 301
    :sswitch_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->h:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Landroid/widget/TextView;Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 304
    :sswitch_7
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Landroid/widget/TextView;Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 308
    :sswitch_8
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0d0145 -> :sswitch_4
        0x7f0d01a1 -> :sswitch_8
        0x7f0d01a2 -> :sswitch_0
        0x7f0d01cd -> :sswitch_8
        0x7f0d01cf -> :sswitch_2
        0x7f0d01d1 -> :sswitch_1
        0x7f0d01d2 -> :sswitch_7
        0x7f0d01d5 -> :sswitch_3
        0x7f0d01da -> :sswitch_5
        0x7f0d01db -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0a0020

    const v4, 0x7f0601cf

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/16 v7, 0x21

    .line 90
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "bind_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    .line 94
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    if-ne v0, v2, :cond_1

    .line 95
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    .line 96
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    .line 1170
    :cond_0
    :goto_0
    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    .line 1171
    const v0, 0x7f0d01a2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->h:Landroid/widget/EditText;

    .line 1172
    const v0, 0x7f0d01d9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->i:Landroid/widget/EditText;

    .line 1173
    const v0, 0x7f0d01cd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    .line 1174
    const v0, 0x7f0d01ce

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->k:Landroid/widget/EditText;

    .line 1175
    const v0, 0x7f0d01d0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->l:Landroid/widget/EditText;

    .line 1176
    const v0, 0x7f0d01d6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->m:Landroid/widget/TextView;

    .line 1178
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    const v0, 0x7f0d01d1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    const v0, 0x7f0d01cf

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    const v0, 0x7f0d01d5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    const v0, 0x7f0d0145

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    const v0, 0x7f0d01da

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    const v0, 0x7f0d01db

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    const v0, 0x7f0d01d2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    const v0, 0x7f0d01d4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    const-string v1, "%1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1329
    aget-object v1, v1, v3

    .line 1330
    const-string v2, "%2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1331
    aget-object v2, v2, v3

    .line 1332
    const-string v3, "%1"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%2"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1336
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1338
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1340
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1342
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1345
    new-instance v0, Lcom/nut/blehunter/ui/z;

    sget-object v6, Lcom/nut/blehunter/a;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v6}, Lcom/nut/blehunter/ui/z;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v0, v3, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1347
    new-instance v0, Lcom/nut/blehunter/ui/z;

    sget-object v1, Lcom/nut/blehunter/a;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/z;-><init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v5, v0, v4, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1350
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->m:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 104
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->d(I)V

    .line 105
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 98
    const v0, 0x7f0601d3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 100
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->u:I

    .line 101
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->n:Landroid/view/Menu;

    .line 124
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    iget v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->o:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->n:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->n:Landroid/view/Menu;

    const v1, 0x7f0d0253

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2165
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 318
    iput-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->a:Landroid/os/CountDownTimer;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 322
    iput-object v1, p0, Lcom/nut/blehunter/ui/BindPhoneActivity;->b:Landroid/os/CountDownTimer;

    .line 324
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 134
    const v1, 0x7f0d0253

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->finish()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
