.class public final Lcom/google/zxing/b/a/s;
.super Lcom/google/zxing/b/a/q;
.source "ProductParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/google/zxing/b/a/r;->c:I

    invoke-direct {p0, v0}, Lcom/google/zxing/b/a/q;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/google/zxing/b/a/s;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/google/zxing/b/a/s;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/b/a/s;->a:Ljava/lang/String;

    return-object v0
.end method
