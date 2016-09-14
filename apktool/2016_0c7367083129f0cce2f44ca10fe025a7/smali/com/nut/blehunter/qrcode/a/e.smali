.class final Lcom/nut/blehunter/qrcode/a/e;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 290
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    .line 1293
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    .line 1294
    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    .line 1295
    if-ge v1, v0, :cond_0

    .line 1296
    const/4 v0, -0x1

    .line 1299
    :goto_0
    return v0

    .line 1298
    :cond_0
    if-le v1, v0, :cond_1

    .line 1299
    const/4 v0, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    const/4 v0, 0x0

    .line 290
    goto :goto_0
.end method
