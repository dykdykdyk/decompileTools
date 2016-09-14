.class public final Lcom/loc/ck;
.super Ljava/lang/Object;
.source "GeoHash.java"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/loc/ck;->a:[C

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/loc/ck;->b:[I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6ds
        0x6es
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 4
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public static final a(DD)Ljava/lang/String;
    .locals 10

    .prologue
    .line 0
    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    const/4 v5, 0x2

    new-array v5, v5, [D

    fill-array-data v5, :array_1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_5

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpl-double v8, p2, v6

    if-lez v8, :cond_0

    sget-object v8, Lcom/loc/ck;->b:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    :goto_1
    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    const/4 v6, 0x4

    if-ge v1, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    aput-wide v6, v5, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    cmpl-double v8, p0, v6

    if-lez v8, :cond_2

    sget-object v8, Lcom/loc/ck;->b:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    aput-wide v6, v4, v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    aput-wide v6, v4, v8

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/loc/ck;->a:[C

    aget-char v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0

    .line 1000
    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method
