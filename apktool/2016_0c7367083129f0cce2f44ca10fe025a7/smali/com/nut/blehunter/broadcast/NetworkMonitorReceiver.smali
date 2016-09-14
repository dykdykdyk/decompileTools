.class public Lcom/nut/blehunter/broadcast/NetworkMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1041
    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1042
    const-string v1, "com.nutspace.action.region.change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p1}, Lcom/nut/blehunter/d/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const-string v1, "com.nutspace.action.sync.server"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    :cond_1
    const-string v0, "NTStatsPhone"

    const-string v1, "NETWORK_CONDITION"

    const-string v2, "NETWORK_CONDITION"

    const-string v3, "WIFI "

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    :goto_0
    return-void

    .line 33
    :cond_3
    const-string v0, "NTStatsPhone"

    const-string v1, "NETWORK_CONDITION"

    const-string v2, "NETWORK_CONDITION"

    const-string v3, "CELLULAR"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
