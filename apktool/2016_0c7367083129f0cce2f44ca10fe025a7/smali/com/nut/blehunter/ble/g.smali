.class final Lcom/nut/blehunter/ble/g;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Lcom/nut/blehunter/ble/ai;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/nut/blehunter/ble/g;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/ble/r;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nut/blehunter/ble/g;->a:Lcom/nut/blehunter/ble/BLEService;

    const/16 v1, 0x1a

    invoke-static {p1, v1}, Lcom/nut/blehunter/ble/BLEService;->d(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;Landroid/os/Message;)V

    .line 483
    return-void
.end method
