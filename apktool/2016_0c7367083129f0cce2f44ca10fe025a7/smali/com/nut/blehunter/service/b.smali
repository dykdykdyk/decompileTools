.class final Lcom/nut/blehunter/service/b;
.super Landroid/content/BroadcastReceiver;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nut/blehunter/service/b;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "com.nutspace.action.restart.schedule.scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/service/b;->a:Lcom/nut/blehunter/service/NutTrackerService;

    .line 1440
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 161
    :cond_2
    const-string v1, "com.nutspace.action.stop.play.sound"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/service/b;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;)Lcom/nut/blehunter/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->b()V

    goto :goto_0
.end method
