.class final Lcom/nut/blehunter/ui/gd;
.super Landroid/content/BroadcastReceiver;
.source "SelectWiFiActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SelectWiFiActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/nut/blehunter/ui/gd;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nut/blehunter/ui/gd;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->b(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V

    .line 369
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 370
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 371
    iget-object v1, p0, Lcom/nut/blehunter/ui/gd;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    return-void
.end method
