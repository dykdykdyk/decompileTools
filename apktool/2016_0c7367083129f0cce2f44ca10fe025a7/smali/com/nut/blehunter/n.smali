.class public final Lcom/nut/blehunter/n;
.super Ljava/lang/Object;
.source "HomePressedWatcher.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field private c:Landroid/content/IntentFilter;

.field private d:Lcom/nut/blehunter/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nut/blehunter/n;->c:Landroid/content/IntentFilter;

    .line 26
    iput-object p2, p0, Lcom/nut/blehunter/n;->b:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/nut/blehunter/o;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/o;-><init>(Lcom/nut/blehunter/n;)V

    iput-object v0, p0, Lcom/nut/blehunter/n;->d:Lcom/nut/blehunter/o;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nut/blehunter/n;->d:Lcom/nut/blehunter/o;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nut/blehunter/n;->d:Lcom/nut/blehunter/o;

    iget-object v2, p0, Lcom/nut/blehunter/n;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nut/blehunter/n;->d:Lcom/nut/blehunter/o;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nut/blehunter/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nut/blehunter/n;->d:Lcom/nut/blehunter/o;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    :cond_0
    return-void
.end method
