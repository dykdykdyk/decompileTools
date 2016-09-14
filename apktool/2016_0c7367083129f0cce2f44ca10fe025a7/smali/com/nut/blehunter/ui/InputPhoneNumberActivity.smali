.class public Lcom/nut/blehunter/ui/InputPhoneNumberActivity;
.super Lcom/nut/blehunter/ui/b;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/CountDownTimer;

.field private final b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 35
    const-string v0, "LOSE_RECORD"

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->f:I

    .line 169
    new-instance v0, Lcom/nut/blehunter/ui/be;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/be;-><init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    if-eqz p3, :cond_0

    .line 95
    sget-object v0, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const v1, 0x7f0d01a1

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x25c
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 133
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "LOSE_RECORD"

    .line 1189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 142
    iget v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->f:I

    .line 143
    iget v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 144
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "RESEND_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1192
    :cond_3
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1193
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v3

    const-string v4, "captcha"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bf;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bf;-><init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1

    .line 148
    :sswitch_1
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 149
    const-string v0, "NTUIEventAuthCode"

    const-string v1, "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :sswitch_2
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x7f0d01a1 -> :sswitch_2
        0x7f0d01cf -> :sswitch_0
        0x7f0d01de -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0d01a1

    .line 47
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f0601d3

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a(I)V

    .line 56
    :goto_0
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0d01a2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f0d01d9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->e:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f0d01cf

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0d01de

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/nut/blehunter/ui/bd;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bd;-><init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    return-void

    .line 53
    :cond_0
    const v0, 0x7f0601d4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a:Landroid/os/CountDownTimer;

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 112
    const v2, 0x7f0d024a

    if-ne v1, v2, :cond_3

    .line 113
    iget-object v1, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const v1, 0x7f060145

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 126
    :goto_0
    return v0

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->d:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 1159
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1160
    const-string v4, "country"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v1, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1163
    const-string v1, "captcha"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->setResult(ILandroid/content/Intent;)V

    .line 1166
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->finish()V

    .line 126
    :cond_3
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
