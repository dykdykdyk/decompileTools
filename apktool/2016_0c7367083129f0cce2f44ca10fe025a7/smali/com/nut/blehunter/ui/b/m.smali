.class final Lcom/nut/blehunter/ui/b/m;
.super Landroid/os/Handler;
.source "GoogleFragment.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/j;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/b/j;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/m;->a:Lcom/nut/blehunter/ui/b/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/b/j;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/b/m;-><init>(Lcom/nut/blehunter/ui/b/j;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 103
    const-string v4, "longitude"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/m;->a:Lcom/nut/blehunter/ui/b/j;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/j;->m:Lcom/nut/blehunter/ui/b/q;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/m;->a:Lcom/nut/blehunter/ui/b/j;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/j;->m:Lcom/nut/blehunter/ui/b/q;

    new-instance v6, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
