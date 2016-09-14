.class final Lcom/nut/blehunter/ble/u;
.super Ljava/lang/Object;
.source "NutDeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/nut/blehunter/ble/v;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ble/v;)V
    .locals 0

    .prologue
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lcom/nut/blehunter/ble/u;->a:Lcom/nut/blehunter/ble/v;

    .line 1026
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nut/blehunter/ble/u;->a:Lcom/nut/blehunter/ble/v;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/v;->sendEmptyMessage(I)Z

    .line 1031
    return-void
.end method
