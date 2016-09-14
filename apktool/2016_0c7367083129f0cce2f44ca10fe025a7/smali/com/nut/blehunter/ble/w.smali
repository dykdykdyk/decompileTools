.class final Lcom/nut/blehunter/ble/w;
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
    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iput-object p1, p0, Lcom/nut/blehunter/ble/w;->a:Lcom/nut/blehunter/ble/v;

    .line 1047
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/nut/blehunter/ble/w;->a:Lcom/nut/blehunter/ble/v;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/v;->sendEmptyMessage(I)Z

    .line 1052
    return-void
.end method
