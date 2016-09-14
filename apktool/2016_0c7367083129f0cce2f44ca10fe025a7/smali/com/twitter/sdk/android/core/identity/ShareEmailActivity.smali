.class public Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;
.super Landroid/app/Activity;
.source "ShareEmailActivity.java"


# instance fields
.field a:Lcom/twitter/sdk/android/core/identity/l;

.field private b:Lcom/twitter/sdk/android/core/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->a:Lcom/twitter/sdk/android/core/identity/l;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/l;->a()V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 94
    return-void
.end method

.method public onClickAllow(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->a:Lcom/twitter/sdk/android/core/identity/l;

    .line 4027
    iget-object v1, v0, Lcom/twitter/sdk/android/core/identity/l;->a:Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    .line 4031
    new-instance v2, Lcom/twitter/sdk/android/core/identity/m;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/identity/m;-><init>(Lcom/twitter/sdk/android/core/identity/l;)V

    .line 4032
    const-class v0, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient$EmailService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/f;)V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    .line 88
    return-void
.end method

.method public onClickNotNow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->a:Lcom/twitter/sdk/android/core/identity/l;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/l;->a()V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/twitter/sdk/android/core/R$layout;->tw__activity_share_email:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->setContentView(I)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1053
    const-string v0, "result_receiver"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 1054
    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResultReceiver must not be null. This activity should not be started directly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Failed to create ShareEmailActivity."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->finish()V

    .line 50
    :goto_0
    return-void

    .line 1063
    :cond_0
    :try_start_1
    const-string v2, "session_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1065
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v1

    .line 1195
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->g()V

    .line 1196
    iget-object v1, v1, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    .line 1065
    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/m;->a(J)Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/u;

    .line 1067
    if-nez v1, :cond_1

    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No TwitterSession for id:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object v1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->b:Lcom/twitter/sdk/android/core/u;

    .line 42
    new-instance v1, Lcom/twitter/sdk/android/core/identity/l;

    new-instance v2, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->b:Lcom/twitter/sdk/android/core/u;

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;-><init>(Lcom/twitter/sdk/android/core/u;)V

    invoke-direct {v1, v2, v0}, Lcom/twitter/sdk/android/core/identity/l;-><init>(Lcom/twitter/sdk/android/core/identity/ShareEmailClient;Landroid/os/ResultReceiver;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->a:Lcom/twitter/sdk/android/core/identity/l;

    .line 44
    sget v0, Lcom/twitter/sdk/android/core/R$id;->tw__share_email_desc:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2075
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/core/R$string;->tw__share_email_desc:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/twitter/sdk/android/core/identity/ShareEmailActivity;->b:Lcom/twitter/sdk/android/core/u;

    .line 3046
    iget-object v5, v5, Lcom/twitter/sdk/android/core/u;->c:Ljava/lang/String;

    .line 2075
    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
