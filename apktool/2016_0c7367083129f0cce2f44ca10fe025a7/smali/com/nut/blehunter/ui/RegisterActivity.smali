.class public Lcom/nut/blehunter/ui/RegisterActivity;
.super Lcom/nut/blehunter/ui/b;
.source "RegisterActivity.java"

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

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/support/v4/view/ViewPager;

.field private l:Lcom/nut/blehunter/ui/eu;

.field private m:Z

.field private n:I

.field private final o:Ljava/lang/String;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->m:Z

    .line 94
    iput v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    .line 96
    const-string v0, "NUT_REGISTER_ACCOUNT"

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->o:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->p:Z

    .line 197
    new-instance v0, Lcom/nut/blehunter/ui/en;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/en;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 465
    new-instance v0, Lcom/nut/blehunter/ui/es;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/es;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    .line 496
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    return v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->c:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->f:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    .line 5489
    const-string v0, "static_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5490
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5491
    const-string v1, "save_country_code"

    invoke-static {p1}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5492
    const-string v1, "save_phone_number"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method private a(Lrx/h;)V
    .locals 2
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
    .line 357
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 358
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/eq;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/eq;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ep;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ep;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5420
    if-nez p1, :cond_1

    .line 5421
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 5423
    :cond_1
    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_2

    .line 5424
    const v1, 0x7f060194

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 5426
    :cond_2
    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 5427
    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v2, 0xd2

    if-ne v1, v2, :cond_0

    .line 5428
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->m:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/RegisterActivity;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->g:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->j:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->i:Landroid/widget/EditText;

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 462
    :goto_0
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)V
    .locals 9

    .prologue
    const v8, 0x7f0a0020

    const/4 v3, 0x1

    const/16 v7, 0x21

    .line 66
    .line 6270
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6271
    const-string v1, "%1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6272
    aget-object v1, v1, v3

    .line 6273
    const-string v2, "%2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6274
    aget-object v2, v2, v3

    .line 6275
    const-string v3, "%1"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%2"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6277
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 6279
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 6281
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6283
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6285
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6288
    new-instance v0, Lcom/nut/blehunter/ui/et;

    sget-object v6, Lcom/nut/blehunter/a;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v6}, Lcom/nut/blehunter/ui/et;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v0, v3, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6290
    new-instance v0, Lcom/nut/blehunter/ui/et;

    sget-object v1, Lcom/nut/blehunter/a;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/et;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v5, v0, v4, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6293
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6294
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/RegisterActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->h:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/RegisterActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/RegisterActivity;)I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    return v0
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/RegisterActivity;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 66
    .line 6266
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->invalidateOptionsMenu()V

    .line 66
    return-void
.end method

.method static synthetic j(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic m(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 262
    .line 5266
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->invalidateOptionsMenu()V

    .line 263
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    if-eqz p3, :cond_0

    .line 114
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 115
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    .line 485
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 486
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 224
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->m:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1325
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v2

    const-string v3, "captcha"

    const-string v4, "NUT_REGISTER_ACCOUNT"

    invoke-static {v0, v1, v4}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/eo;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/eo;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 229
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "RESEND_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_1
    iget v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    if-nez v0, :cond_2

    .line 236
    const-string v0, "register_acquire_captcha"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    iget v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    .line 232
    invoke-direct {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->c()V

    .line 233
    const-string v0, "register_acquire_captcha_error"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->n:I

    if-lez v0, :cond_0

    .line 238
    const-string v0, "register_reacquire_captcha"

    .line 4281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :sswitch_1
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->c()V

    goto :goto_0

    .line 222
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

    .line 102
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->setContentView(I)V

    .line 104
    const v0, 0x7f0601d5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(I)V

    .line 1181
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    .line 1182
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    const v2, 0x7f0300b8

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1185
    const v3, 0x7f0300b7

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1186
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance v0, Lcom/nut/blehunter/ui/eu;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/eu;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->l:Lcom/nut/blehunter/ui/eu;

    .line 1189
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->l:Lcom/nut/blehunter/ui/eu;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1191
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 1192
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1193
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1194
    iget-object v0, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/RegisterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    iget-object v2, p0, Lcom/nut/blehunter/ui/RegisterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/nut/blehunter/ui/RegisterActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v4, p0, Lcom/nut/blehunter/ui/RegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 129
    iget-object v5, p0, Lcom/nut/blehunter/ui/RegisterActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 130
    iget-object v6, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    if-nez v6, :cond_1

    .line 131
    iget-object v4, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/j;->a(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 136
    :cond_0
    :goto_0
    const v2, 0x7f0d0248

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    return v1

    .line 134
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 144
    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/nut/blehunter/ui/RegisterActivity;->e:Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/nut/blehunter/ui/RegisterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/nut/blehunter/ui/RegisterActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_1

    .line 155
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/nut/blehunter/d/i;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 156
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->d(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    const-string v5, "mobile"

    invoke-static {v1, v2, v3, v4}, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->createWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->register(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;)Lrx/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lrx/h;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/RegisterActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/nut/blehunter/ui/RegisterActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 165
    const v1, 0x7f0601e7

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 168
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/nut/blehunter/d/i;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 169
    :cond_5
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->d(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 172
    :cond_6
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    const-string v3, "email"

    invoke-static {v1, v2}, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->createWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->register(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;)Lrx/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lrx/h;)V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0248
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method
