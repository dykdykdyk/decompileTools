.class public Lcom/nut/blehunter/ui/ResetPasswordActivity;
.super Lcom/nut/blehunter/ui/b;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field b:Landroid/os/CountDownTimer;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/nut/blehunter/ui/widget/ClearEditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Lcom/nut/blehunter/ui/fc;

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->l:Z

    .line 73
    iput v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    .line 75
    const-string v0, "NUT_RESET_PASSWORD"

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->n:Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/nut/blehunter/ui/ew;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/ew;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 201
    new-instance v0, Lcom/nut/blehunter/ui/ex;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/ex;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    .line 380
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->f:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4341
    if-nez p1, :cond_1

    .line 4342
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 4344
    :cond_1
    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 4345
    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v2, 0xd2

    if-ne v1, v2, :cond_0

    .line 4346
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->l:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ResetPasswordActivity;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->g:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->i:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->h:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 368
    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 376
    :goto_0
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/ResetPasswordActivity;)I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    return v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 47
    .line 5152
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->invalidateOptionsMenu()V

    .line 47
    return-void
.end method

.method static synthetic i(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 182
    .line 2152
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->invalidateOptionsMenu()V

    .line 183
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    if-eqz p3, :cond_0

    .line 100
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 101
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 219
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->l:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2248
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2249
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v2

    const-string v3, "captcha"

    const-string v4, "NUT_RESET_PASSWORD"

    invoke-static {v0, v1, v4}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ey;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ey;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 224
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "RESEND_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_1
    iget v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    if-nez v0, :cond_2

    .line 231
    const-string v0, "register_acquire_captcha"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    .line 227
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c()V

    .line 228
    const-string v0, "register_acquire_captcha_error"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->m:I

    if-lez v0, :cond_0

    .line 233
    const-string v0, "register_reacquire_captcha"

    .line 4281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :sswitch_1
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 242
    :sswitch_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c()V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d01a1 -> :sswitch_1
        0x7f0d01d2 -> :sswitch_2
        0x7f0d01da -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f0601e0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(I)V

    .line 1156
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    .line 1157
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    const v2, 0x7f0300ba

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1160
    const v3, 0x7f0300b9

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v0, Lcom/nut/blehunter/ui/fc;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/fc;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->k:Lcom/nut/blehunter/ui/fc;

    .line 1164
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->k:Lcom/nut/blehunter/ui/fc;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1166
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 1167
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1168
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1169
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    iget-object v2, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 121
    :cond_0
    :goto_0
    const v2, 0x7f0d0254

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    return v1

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 128
    const v2, 0x7f0d0254

    if-ne v1, v2, :cond_3

    .line 129
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 148
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/nut/blehunter/d/i;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->d(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 1281
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v6

    new-instance v0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->resetPassword(Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ez;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ez;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 148
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1312
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v1

    const-string v2, "email"

    invoke-static {v2, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->modifyPasswordByEmail(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fa;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fa;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
