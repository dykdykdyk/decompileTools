.class final Lcom/nut/blehunter/ble/i;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/r;

.field final synthetic b:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/nut/blehunter/ble/i;->b:Lcom/nut/blehunter/ble/BLEService;

    iput-object p2, p0, Lcom/nut/blehunter/ble/i;->a:Lcom/nut/blehunter/ble/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 951
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/i;->a:Lcom/nut/blehunter/ble/r;

    .line 1259
    iget v1, v1, Lcom/nut/blehunter/ble/r;->p:I

    .line 2110
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 2111
    if-nez v0, :cond_1

    const-string v0, ""

    .line 953
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/nut/blehunter/ble/i;->a:Lcom/nut/blehunter/ble/r;

    .line 2959
    invoke-static {v0}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 2960
    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2963
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 2964
    const/16 v3, 0x1a

    aput-byte v3, v2, v5

    .line 2965
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2966
    const-string v0, "set device configs is %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2967
    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ble/r;->a([B)V

    .line 956
    :cond_0
    return-void

    .line 2111
    :cond_1
    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->h:Ljava/lang/String;

    goto :goto_0
.end method
