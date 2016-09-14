.class public Lcom/nut/blehunter/ble/d;
.super Ljava/lang/Object;
.source "AuthenticationUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 16
    const-class v0, Lcom/nut/blehunter/ble/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    .line 18
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nut/blehunter/ble/d;->b:[B

    .line 22
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nut/blehunter/ble/d;->c:[B

    return-void

    .line 18
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 22
    :array_1
    .array-data 1
        0x12t
        0x34t
        0x56t
        0x78t
        -0x70t
        -0x55t
        -0x33t
        -0x11t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[B
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/nut/blehunter/ble/d;->c:[B

    sget-object v1, Lcom/nut/blehunter/ble/d;->c:[B

    invoke-static {v0, v1}, Lcom/nut/blehunter/ble/d;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    .line 184
    :cond_0
    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 179
    new-array v0, v2, [B

    .line 180
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 181
    mul-int/lit8 v4, v1, 0x2

    .line 182
    aget-char v5, v3, v4

    .line 1163
    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    .line 182
    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v3, v4

    .line 2163
    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    int-to-byte v4, v4

    .line 182
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/nut/blehunter/entity/Nut;[B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v1, p1, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    .line 60
    :goto_0
    invoke-static {p0, p2, v1, v0}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 221
    invoke-static {p1}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 222
    invoke-static {v1, v2}, Lcom/nut/blehunter/ble/d;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v2, "getNewPwValue: Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 5

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v1, "getAuthValue(2): params is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 41
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 43
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Lcom/nut/blehunter/ble/d;->c:[B

    sget-object v2, Lcom/nut/blehunter/ble/d;->c:[B

    invoke-static {v1, p1, v0, v2}, Lcom/nut/blehunter/ble/d;->a([B[B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .locals 5

    .prologue
    const/4 v0, 0x4

    .line 127
    new-array v1, v0, [B

    .line 128
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, p0

    if-gt v4, v0, :cond_0

    array-length v0, p0

    :cond_0
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v1
.end method

.method private static a([B[B)[B
    .locals 7

    .prologue
    const/16 v0, 0x8

    .line 233
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 235
    invoke-static {p0}, Lcom/nut/blehunter/ble/d;->b([B)[B

    move-result-object v3

    .line 236
    invoke-static {p1}, Lcom/nut/blehunter/ble/d;->b([B)[B

    move-result-object v4

    .line 238
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    array-length v1, v4

    if-gt v1, v0, :cond_1

    array-length v1, v4

    :goto_0
    invoke-static {v4, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v1, 0x0

    const/16 v4, 0x8

    array-length v5, v3

    if-gt v5, v0, :cond_0

    array-length v0, v3

    :cond_0
    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    return-object v2

    :cond_1
    move v1, v0

    .line 238
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    sget-object v0, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v1, "toBTEndian: Exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static a([B[B[B[B)[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 104
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lcom/nut/blehunter/ble/d;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 105
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 107
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v6, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 110
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 111
    new-array v0, v6, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v0, v4

    .line 112
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 113
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 116
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    sget-object v5, Lcom/nut/blehunter/ble/d;->b:[B

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 117
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 119
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 120
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 122
    :goto_1
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nut/blehunter/ble/d;->a([B[B)[B

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v0, 0x0

    const-wide/16 v8, 0xff

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v2, "intStringToBytes: param is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const-string v1, "(?i)[a-z]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    sget-object v1, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v2, "intStringToBytes: params contain letters."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 3144
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 3145
    const/4 v4, 0x7

    and-long v6, v2, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3146
    const/4 v4, 0x6

    shr-long v6, v2, v10

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3147
    const/4 v4, 0x5

    const/16 v5, 0x10

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3148
    const/4 v4, 0x4

    const/16 v5, 0x18

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3149
    const/4 v4, 0x3

    const/16 v5, 0x20

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3150
    const/4 v4, 0x2

    const/16 v5, 0x28

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3151
    const/4 v4, 0x1

    const/16 v5, 0x30

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 3152
    const/4 v4, 0x0

    const/16 v5, 0x38

    shr-long/2addr v2, v5

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 201
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nut/blehunter/ble/d;->a:Ljava/lang/String;

    const-string v2, "intStringToBytes: NumberFormatException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x6

    new-array v2, v0, [B

    .line 82
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 84
    aget-object v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 85
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 89
    invoke-static {p2}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 90
    invoke-static {p3}, Lcom/nut/blehunter/ble/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    :goto_2
    invoke-static {v2, p1, v1, v0}, Lcom/nut/blehunter/ble/d;->a([B[B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {p2}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    invoke-static {p3}, Lcom/nut/blehunter/ble/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2
.end method

.method private static b([B)[B
    .locals 4

    .prologue
    .line 133
    array-length v1, p0

    .line 134
    new-array v2, v1, [B

    .line 135
    const/4 v0, 0x0

    .line 136
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 137
    aget-byte v3, p0, v0

    aput-byte v3, v2, v1

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-object v2
.end method
