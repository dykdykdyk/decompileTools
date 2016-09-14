.class final Lcom/nut/blehunter/ble/z;
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
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/nut/blehunter/ble/z;->a:Lcom/nut/blehunter/ble/v;

    .line 1061
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/nut/blehunter/ble/z;->a:Lcom/nut/blehunter/ble/v;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/v;->sendEmptyMessage(I)Z

    .line 1066
    return-void
.end method
