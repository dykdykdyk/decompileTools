.class final Lcom/crashlytics/android/core/o;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/crashlytics/android/core/u;

.field final synthetic c:Lcom/crashlytics/android/core/aw;

.field final synthetic d:Lio/fabric/sdk/android/services/e/o;

.field final synthetic e:Lcom/crashlytics/android/core/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/h;Landroid/app/Activity;Lcom/crashlytics/android/core/u;Lcom/crashlytics/android/core/aw;Lio/fabric/sdk/android/services/e/o;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/crashlytics/android/core/o;->e:Lcom/crashlytics/android/core/h;

    iput-object p2, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/core/o;->b:Lcom/crashlytics/android/core/u;

    iput-object p4, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    iput-object p5, p0, Lcom/crashlytics/android/core/o;->d:Lio/fabric/sdk/android/services/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 992
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 994
    new-instance v1, Lcom/crashlytics/android/core/p;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/p;-><init>(Lcom/crashlytics/android/core/o;)V

    .line 1002
    iget-object v2, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1006
    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/crashlytics/android/core/h;->a(FI)I

    move-result v3

    .line 1008
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1009
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1010
    iget-object v5, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    .line 1055
    const-string v6, "com.crashlytics.CrashSubmissionPromptMessage"

    iget-object v7, v5, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    iget-object v7, v7, Lio/fabric/sdk/android/services/e/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/crashlytics/android/core/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1010
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v5, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1012
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1014
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1016
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/crashlytics/android/core/o;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1017
    const/16 v5, 0xe

    invoke-static {v2, v5}, Lcom/crashlytics/android/core/h;->a(FI)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/crashlytics/android/core/h;->a(FI)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lcom/crashlytics/android/core/h;->a(FI)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {v2, v8}, Lcom/crashlytics/android/core/h;->a(FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1019
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1023
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    .line 2048
    const-string v4, "com.crashlytics.CrashSubmissionPromptTitle"

    iget-object v5, v3, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    iget-object v5, v5, Lio/fabric/sdk/android/services/e/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/core/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    .line 2063
    const-string v4, "com.crashlytics.CrashSubmissionSendTitle"

    iget-object v5, v3, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    iget-object v5, v5, Lio/fabric/sdk/android/services/e/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/core/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    iget-object v1, p0, Lcom/crashlytics/android/core/o;->d:Lio/fabric/sdk/android/services/e/o;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/o;->d:Z

    if-eqz v1, :cond_0

    .line 1027
    new-instance v1, Lcom/crashlytics/android/core/q;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/q;-><init>(Lcom/crashlytics/android/core/o;)V

    .line 1034
    iget-object v2, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    .line 2080
    const-string v3, "com.crashlytics.CrashSubmissionCancelTitle"

    iget-object v4, v2, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    iget-object v4, v4, Lio/fabric/sdk/android/services/e/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/core/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/o;->d:Lio/fabric/sdk/android/services/e/o;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/o;->f:Z

    if-eqz v1, :cond_1

    .line 1039
    new-instance v1, Lcom/crashlytics/android/core/r;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/r;-><init>(Lcom/crashlytics/android/core/o;)V

    .line 1047
    iget-object v2, p0, Lcom/crashlytics/android/core/o;->c:Lcom/crashlytics/android/core/aw;

    .line 3071
    const-string v3, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    iget-object v4, v2, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    iget-object v4, v4, Lio/fabric/sdk/android/services/e/o;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/core/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1051
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1052
    return-void
.end method
