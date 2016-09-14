.class final Lcom/google/zxing/c/a/i;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field final a:I

.field final b:[Lcom/google/zxing/c/a/h;


# direct methods
.method private constructor <init>(ILcom/google/zxing/c/a/h;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/google/zxing/c/a/i;->a:I

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/c/a/h;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/c/a/i;->b:[Lcom/google/zxing/c/a/h;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/c/a/h;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/c/a/i;-><init>(ILcom/google/zxing/c/a/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/c/a/h;Lcom/google/zxing/c/a/h;)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v0, 0x3e

    iput v0, p0, Lcom/google/zxing/c/a/i;->a:I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/c/a/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/c/a/i;->b:[Lcom/google/zxing/c/a/h;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/c/a/h;Lcom/google/zxing/c/a/h;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/c/a/i;-><init>(Lcom/google/zxing/c/a/h;Lcom/google/zxing/c/a/h;)V

    return-void
.end method
