.class final Lcom/nut/blehunter/ui/do;
.super Ljava/lang/Object;
.source "MeEditActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/User;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/ui/MeEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/nut/blehunter/ui/do;->c:Lcom/nut/blehunter/ui/MeEditActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/do;->a:Lcom/nut/blehunter/entity/User;

    iput-object p3, p0, Lcom/nut/blehunter/ui/do;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 4

    .prologue
    .line 512
    const-string v0, "NTAccountEvent"

    const-string v1, "LOGOUT_SUCCESSFUL"

    const-string v2, "USER_ID"

    iget-object v3, p0, Lcom/nut/blehunter/ui/do;->a:Lcom/nut/blehunter/entity/User;

    iget-object v3, v3, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/nut/blehunter/ui/do;->c:Lcom/nut/blehunter/ui/MeEditActivity;

    iget-object v0, p0, Lcom/nut/blehunter/ui/do;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logout"

    .line 1281
    :goto_0
    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/nut/blehunter/ui/do;->c:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/MeEditActivity;->a(Lcom/nut/blehunter/ui/MeEditActivity;)V

    .line 517
    return-void

    .line 514
    :cond_0
    const-string v0, "force_logout"

    goto :goto_0
.end method
