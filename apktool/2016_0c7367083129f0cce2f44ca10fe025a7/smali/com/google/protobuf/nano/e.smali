.class public final Lcom/google/protobuf/nano/e;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/e;->a:[I

    .line 76
    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/e;->b:[J

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/e;->c:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/e;->d:[D

    .line 79
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/e;->e:[Z

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/e;->f:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/e;->g:[[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/e;->h:[B

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static a(Lcom/google/protobuf/nano/a;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static final b(Lcom/google/protobuf/nano/a;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 1542
    iget v1, p0, Lcom/google/protobuf/nano/a;->b:I

    iget v2, p0, Lcom/google/protobuf/nano/a;->a:I

    sub-int/2addr v1, v2

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->a(I)Z

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->a(I)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/a;->b:I

    iget v3, p0, Lcom/google/protobuf/nano/a;->a:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 1567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/a;->b:I

    iget v3, p0, Lcom/google/protobuf/nano/a;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_1
    if-gez v1, :cond_2

    .line 1571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/a;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/a;->b:I

    .line 121
    return v0
.end method

.method static c(I)I
    .locals 1

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/lit8 v0, v0, 0x4

    return v0
.end method
