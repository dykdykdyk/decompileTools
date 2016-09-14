.class final Lcom/nut/blehunter/ble/k;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p1, p0, Lcom/nut/blehunter/ble/k;->a:Landroid/os/Handler;

    .line 860
    iput-object p2, p0, Lcom/nut/blehunter/ble/k;->b:Ljava/lang/String;

    .line 861
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 865
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 866
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/ble/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/nut/blehunter/ble/k;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 868
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 869
    const/16 v0, 0x23

    iput v0, v1, Landroid/os/Message;->what:I

    .line 870
    iget-object v0, p0, Lcom/nut/blehunter/ble/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    return-void
.end method
