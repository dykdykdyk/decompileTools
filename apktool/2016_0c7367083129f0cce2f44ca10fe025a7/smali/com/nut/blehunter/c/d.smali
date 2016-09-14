.class final Lcom/nut/blehunter/c/d;
.super Landroid/content/BroadcastReceiver;
.source "SendAuthWeChat.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/c/c;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/nut/blehunter/c/d;->a:Lcom/nut/blehunter/c/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "com.nutspace.action.share_auth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/nut/blehunter/c/d;->a:Lcom/nut/blehunter/c/c;

    .line 1182
    iget-object v1, v0, Lcom/nut/blehunter/c/c;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v0, v0, Lcom/nut/blehunter/c/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    iget-object v0, p0, Lcom/nut/blehunter/c/d;->a:Lcom/nut/blehunter/c/c;

    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2198
    invoke-virtual {v0}, Lcom/nut/blehunter/c/c;->a()V

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    const-string v2, "reqCatchToken start"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    new-instance v2, Lcom/nut/blehunter/c/e;

    invoke-direct {v2, v0}, Lcom/nut/blehunter/c/e;-><init>(Lcom/nut/blehunter/c/c;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
