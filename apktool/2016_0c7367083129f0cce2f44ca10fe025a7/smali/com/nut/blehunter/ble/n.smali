.class final Lcom/nut/blehunter/ble/n;
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
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/nut/blehunter/ble/n;->a:Landroid/os/Handler;

    .line 651
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/nut/blehunter/ble/n;->a:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    return-void
.end method
