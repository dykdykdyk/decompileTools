.class final Lokhttp3/af;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1270
    sput v3, Lokhttp3/af;->a:I

    .line 1271
    sput v4, Lokhttp3/af;->b:I

    .line 1272
    sput v5, Lokhttp3/af;->c:I

    .line 1273
    sput v6, Lokhttp3/af;->d:I

    .line 1274
    sput v0, Lokhttp3/af;->e:I

    .line 1269
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lokhttp3/af;->a:I

    aput v2, v0, v1

    sget v1, Lokhttp3/af;->b:I

    aput v1, v0, v3

    sget v1, Lokhttp3/af;->c:I

    aput v1, v0, v4

    sget v1, Lokhttp3/af;->d:I

    aput v1, v0, v5

    sget v1, Lokhttp3/af;->e:I

    aput v1, v0, v6

    sput-object v0, Lokhttp3/af;->f:[I

    return-void
.end method
