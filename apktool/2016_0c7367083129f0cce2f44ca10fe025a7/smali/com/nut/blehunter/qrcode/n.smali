.class final Lcom/nut/blehunter/qrcode/n;
.super Ljava/lang/Enum;
.source "IntentSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nut/blehunter/qrcode/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    sput v3, Lcom/nut/blehunter/qrcode/n;->a:I

    .line 22
    sput v4, Lcom/nut/blehunter/qrcode/n;->b:I

    .line 23
    sput v5, Lcom/nut/blehunter/qrcode/n;->c:I

    .line 24
    sput v0, Lcom/nut/blehunter/qrcode/n;->d:I

    .line 19
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nut/blehunter/qrcode/n;->a:I

    aput v2, v0, v1

    sget v1, Lcom/nut/blehunter/qrcode/n;->b:I

    aput v1, v0, v3

    sget v1, Lcom/nut/blehunter/qrcode/n;->c:I

    aput v1, v0, v4

    sget v1, Lcom/nut/blehunter/qrcode/n;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/nut/blehunter/qrcode/n;->e:[I

    return-void
.end method
