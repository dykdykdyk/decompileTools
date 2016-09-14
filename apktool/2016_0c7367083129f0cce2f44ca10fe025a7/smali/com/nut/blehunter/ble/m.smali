.class final Lcom/nut/blehunter/ble/m;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lcom/nut/blehunter/ble/m;->a:Landroid/os/Handler;

    .line 665
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/nut/blehunter/ble/m;->a:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    return-void
.end method
