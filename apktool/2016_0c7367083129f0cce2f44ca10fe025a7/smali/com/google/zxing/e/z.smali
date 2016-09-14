.class public final Lcom/google/zxing/e/z;
.super Lcom/google/zxing/e/x;
.source "UPCEReader.java"


# static fields
.field private static final a:[I

.field private static final f:[[I


# instance fields
.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/e/z;->a:[I

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/e/z;->f:[[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/e/x;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/z;->g:[I

    .line 53
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 122
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    aget-char v2, v0, v7

    .line 126
    packed-switch v2, :pswitch_data_0

    .line 146
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_0
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuilder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v6, p0, Lcom/google/zxing/e/z;->g:[I

    .line 59
    aput v2, v6, v2

    .line 60
    aput v2, v6, v10

    .line 61
    const/4 v0, 0x2

    aput v2, v6, v0

    .line 62
    const/4 v0, 0x3

    aput v2, v6, v0

    .line 1048
    iget v7, p1, Lcom/google/zxing/common/a;->b:I

    .line 64
    aget v4, p2, v10

    move v5, v2

    move v0, v2

    .line 68
    :goto_0
    const/4 v1, 0x6

    if-ge v5, v1, :cond_2

    if-ge v4, v7, :cond_2

    .line 69
    sget-object v1, Lcom/google/zxing/e/z;->e:[[I

    invoke-static {p1, v6, v4, v1}, Lcom/google/zxing/e/z;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v8

    .line 70
    rem-int/lit8 v1, v8, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    array-length v9, v6

    move v1, v2

    move v3, v4

    :goto_1
    if-ge v1, v9, :cond_0

    aget v4, v6, v1

    .line 72
    add-int/2addr v3, v4

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_0
    if-lt v8, v11, :cond_1

    .line 75
    rsub-int/lit8 v1, v5, 0x5

    shl-int v1, v10, v1

    or-int/2addr v0, v1

    .line 68
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1097
    :goto_2
    if-gt v3, v10, :cond_5

    move v1, v2

    .line 1098
    :goto_3
    if-ge v1, v11, :cond_4

    .line 1099
    sget-object v5, Lcom/google/zxing/e/z;->f:[[I

    aget-object v5, v5, v3

    aget v5, v5, v1

    if-ne v0, v5, :cond_3

    .line 1100
    add-int/lit8 v0, v3, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1101
    add-int/lit8 v0, v1, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    return v4

    .line 1098
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1097
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 1106
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/zxing/e/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/e/x;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final a(Lcom/google/zxing/common/a;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/e/z;->a:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/e/z;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/zxing/a;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    return-object v0
.end method
