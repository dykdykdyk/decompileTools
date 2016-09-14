.class public Lcom/nut/blehunter/dfu/DfuActivity;
.super Lcom/nut/blehunter/ui/b;
.source "DfuActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field private a:Lcom/nut/blehunter/entity/Nut;

.field private b:Ljava/io/File;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/nut/blehunter/entity/i;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/CountDownTimer;

.field private final l:Lno/nordicsemi/android/dfu/DfuProgressListener;

.field private m:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 81
    iput v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    .line 83
    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->h:Z

    .line 85
    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->i:Z

    .line 87
    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->j:Z

    .line 89
    new-instance v0, Lcom/nut/blehunter/dfu/a;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/dfu/a;-><init>(Lcom/nut/blehunter/dfu/DfuActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    .line 103
    new-instance v0, Lcom/nut/blehunter/dfu/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/dfu/b;-><init>(Lcom/nut/blehunter/dfu/DfuActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->l:Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 198
    new-instance v0, Lcom/nut/blehunter/dfu/d;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/dfu/d;-><init>(Lcom/nut/blehunter/dfu/DfuActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/dfu/DfuActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 487
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 488
    new-instance v1, Landroid/content/Intent;

    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 491
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->r()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->a(ILandroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/dfu/DfuActivity;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/dfu/DfuActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/dfu/DfuActivity;)Lcom/nut/blehunter/entity/i;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    return-object v0
.end method

.method static synthetic h(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 2

    .prologue
    .line 55
    .line 5131
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b;->a(ILandroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method static synthetic l(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5314
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 5315
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600b3

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/dfu/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f06008e

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    const-string v1, "dfu_success"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 5322
    const-string v0, "NTDFUEvent"

    const-string v1, "DFU_SUCCEEDED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic m(Lcom/nut/blehunter/dfu/DfuActivity;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->h:Z

    return v0
.end method

.method static synthetic n(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic o(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 2

    .prologue
    .line 55
    .line 5326
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 5327
    const-string v1, "dfu_failed"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 5328
    if-eqz v1, :cond_0

    .line 5329
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/nut/blehunter/dfu/DfuActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->h:Z

    .line 249
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 250
    return-void
.end method

.method static synthetic q(Lcom/nut/blehunter/dfu/DfuActivity;)I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    return v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->j:Z

    .line 254
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 255
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2131
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b;->a(ILandroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/dfu/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060091

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060083

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    const-string v1, "dfu_failed"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 309
    const-string v0, "NTDFUEvent"

    const-string v1, "DFU_FAILED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "dfu_workflow_failed_alert"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method static synthetic r(Lcom/nut/blehunter/dfu/DfuActivity;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->j:Z

    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->startActivity(Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method static synthetic s(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 2

    .prologue
    .line 6213
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060091

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060083

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    .line 6220
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    const-string v1, "dfu_connect_overtime"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 6222
    const-string v0, "dfu_workflow_entered"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 265
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 266
    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 285
    :sswitch_0
    iget-boolean v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->j:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->i:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->h:Z

    if-nez v2, :cond_0

    .line 288
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 289
    const-string v1, "oauth_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 292
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->d()V

    goto :goto_0

    .line 275
    :sswitch_1
    iget-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->i:Z

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v3, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iput v3, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 280
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->c()V

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, -0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 335
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 382
    :cond_1
    :goto_1
    return-void

    .line 335
    :sswitch_0
    const-string v5, "dfu_failed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "dfu_success"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v5, "dfu_connect_overtime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 337
    :pswitch_0
    if-ne p2, v2, :cond_3

    .line 338
    iput v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    .line 339
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 340
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->e:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 342
    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    iget v0, v0, Lcom/nut/blehunter/entity/j;->a:I

    if-ne v0, v4, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->q()V

    .line 348
    :goto_2
    const-string v0, "NTDFUEvent"

    const-string v1, "RETRY_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->c()V

    .line 346
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->p()V

    goto :goto_2

    .line 349
    :cond_3
    if-ne p2, v6, :cond_1

    .line 350
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    :cond_4
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->s()V

    goto :goto_1

    .line 359
    :pswitch_1
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->s()V

    goto :goto_1

    .line 363
    :pswitch_2
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 364
    if-ne p2, v2, :cond_7

    .line 365
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v3, :cond_5

    .line 366
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->d()V

    .line 367
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->p()V

    goto/16 :goto_1

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-nez v0, :cond_6

    .line 369
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->q()V

    goto/16 :goto_1

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->c()V

    .line 372
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->p()V

    goto/16 :goto_1

    .line 374
    :cond_7
    if-ne p2, v6, :cond_1

    .line 375
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 378
    :cond_8
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->s()V

    goto/16 :goto_1

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x4ee47dc9 -> :sswitch_0
        0x5f2487f7 -> :sswitch_1
        0x61c18fe2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->r()V

    .line 556
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/q;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setKeepBond(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?i)HEX|BIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 550
    if-eqz v1, :cond_1

    .line 551
    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setBinOrHex(ILandroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 555
    :goto_1
    const-class v1, Lcom/nut/blehunter/dfu/DfuService;

    invoke-virtual {v0, p0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setZip(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    goto :goto_1
.end method

.method protected final e_()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->i:Z

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->c()V

    .line 232
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->p()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->q()V

    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->d()V

    .line 237
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->p()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 392
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->setContentView(I)V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->g:I

    .line 394
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 395
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 396
    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    .line 397
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->finish()V

    .line 427
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)HEX|BIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 407
    if-eqz v0, :cond_3

    const-string v0, "firmware_sys.hex"

    .line 408
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/nut/blehunter/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    .line 409
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2431
    :cond_2
    :try_start_0
    const-string v0, "16e92d2456e3d7a5"

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->f:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/dfu/DfuActivity;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 415
    :goto_2
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->e()V

    .line 417
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 418
    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setImageResource(I)V

    .line 419
    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 420
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->d:Landroid/widget/TextView;

    .line 422
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->e:Landroid/widget/TextView;

    .line 423
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->c:Landroid/widget/ProgressBar;

    .line 424
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f06009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->e:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const-string v0, "dfu_workflow_entered"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :cond_3
    const-string v0, "firmware_sys.zip"

    goto/16 :goto_1

    .line 2433
    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2434
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->finish()V

    goto :goto_2

    .line 2433
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(I)V

    .line 467
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 469
    iput-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->k:Landroid/os/CountDownTimer;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 473
    iput-object v1, p0, Lcom/nut/blehunter/dfu/DfuActivity;->m:Landroid/os/CountDownTimer;

    .line 475
    :cond_1
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 476
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 481
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nut/blehunter/ui/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 454
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->l:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {p0, v0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->unregisterProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    .line 455
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 448
    iget-object v0, p0, Lcom/nut/blehunter/dfu/DfuActivity;->l:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {p0, v0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->registerProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    .line 449
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 441
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->f()V

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(I)V

    .line 443
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/nut/blehunter/dfu/DfuActivity;->g()V

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(I)V

    .line 461
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 462
    return-void
.end method
