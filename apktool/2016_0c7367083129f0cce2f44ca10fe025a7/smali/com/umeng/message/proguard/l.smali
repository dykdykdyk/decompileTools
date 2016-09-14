.class public final Lcom/umeng/message/proguard/l;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/message/proguard/l;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static final a([B)[B
    .locals 15

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xa

    const/16 v11, 0x9

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 10
    array-length v0, p0

    .line 1014
    if-eqz p0, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 1076
    :goto_0
    return-object v0

    .line 1018
    :cond_1
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    .line 1020
    if-nez v2, :cond_2

    move-object v0, v7

    .line 1021
    goto :goto_0

    .line 1024
    :cond_2
    new-array v9, v2, [B

    move v2, v0

    move v0, v1

    .line 1031
    :goto_1
    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    .line 1033
    if-eq v3, v12, :cond_3

    if-eq v3, v13, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    if-eq v3, v11, :cond_3

    .line 1036
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    .line 1037
    add-int/lit8 v0, v0, 0x1

    .line 1030
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v8, v1

    move v5, v1

    move v6, v1

    move v4, v1

    .line 1050
    :goto_2
    if-ge v8, v2, :cond_a

    .line 1051
    aget-byte v3, p0, v8

    .line 1053
    if-eq v3, v12, :cond_e

    if-eq v3, v13, :cond_e

    const/16 v10, 0x20

    if-eq v3, v10, :cond_e

    if-eq v3, v11, :cond_e

    .line 1056
    const/16 v10, 0x41

    if-lt v3, v10, :cond_5

    const/16 v10, 0x5a

    if-gt v3, v10, :cond_5

    .line 1060
    add-int/lit8 v3, v3, -0x41

    .line 1079
    :goto_3
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v3, v3

    or-int/2addr v5, v3

    .line 1080
    rem-int/lit8 v3, v6, 0x4

    const/4 v10, 0x3

    if-ne v3, v10, :cond_d

    .line 1082
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    aput-byte v10, v9, v4

    .line 1083
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v3

    .line 1084
    add-int/lit8 v3, v4, 0x1

    int-to-byte v10, v5

    aput-byte v10, v9, v4

    .line 1086
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v14, v5

    move v5, v3

    move v3, v14

    .line 1050
    :goto_5
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v4

    move v4, v5

    move v5, v3

    goto :goto_2

    .line 1061
    :cond_5
    const/16 v10, 0x61

    if-lt v3, v10, :cond_6

    const/16 v10, 0x7a

    if-gt v3, v10, :cond_6

    .line 1065
    add-int/lit8 v3, v3, -0x47

    goto :goto_3

    .line 1066
    :cond_6
    const/16 v10, 0x30

    if-lt v3, v10, :cond_7

    const/16 v10, 0x39

    if-gt v3, v10, :cond_7

    .line 1070
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 1071
    :cond_7
    const/16 v10, 0x2b

    if-ne v3, v10, :cond_8

    .line 1072
    const/16 v3, 0x3e

    goto :goto_3

    .line 1073
    :cond_8
    const/16 v10, 0x2f

    if-ne v3, v10, :cond_9

    .line 1074
    const/16 v3, 0x3f

    goto :goto_3

    :cond_9
    move-object v0, v7

    .line 1076
    goto/16 :goto_0

    .line 1088
    :cond_a
    if-lez v0, :cond_b

    .line 1090
    mul-int/lit8 v2, v0, 0x6

    shl-int v3, v5, v2

    .line 1092
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v9, v4

    .line 1093
    const/4 v4, 0x1

    if-ne v0, v4, :cond_c

    .line 1094
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    .line 1098
    :cond_b
    :goto_6
    new-array v0, v4, [B

    .line 1099
    invoke-static {v9, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_c
    move v4, v2

    goto :goto_6

    :cond_d
    move v3, v4

    goto :goto_4

    :cond_e
    move v3, v5

    move v5, v4

    move v4, v6

    goto :goto_5
.end method
