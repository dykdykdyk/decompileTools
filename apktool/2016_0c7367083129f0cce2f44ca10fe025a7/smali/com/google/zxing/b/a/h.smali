.class public final Lcom/google/zxing/b/a/h;
.super Lcom/google/zxing/b/a/q;
.source "EmailAddressParsedResult.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/zxing/b/a/r;->b:I

    invoke-direct {p0, v0}, Lcom/google/zxing/b/a/q;-><init>(I)V

    .line 40
    iput-object p1, p0, Lcom/google/zxing/b/a/h;->a:[Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/zxing/b/a/h;->b:[Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/google/zxing/b/a/h;->c:[Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/google/zxing/b/a/h;->d:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/google/zxing/b/a/h;->e:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    iget-object v1, p0, Lcom/google/zxing/b/a/h;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 89
    iget-object v1, p0, Lcom/google/zxing/b/a/h;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 90
    iget-object v1, p0, Lcom/google/zxing/b/a/h;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 91
    iget-object v1, p0, Lcom/google/zxing/b/a/h;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 92
    iget-object v1, p0, Lcom/google/zxing/b/a/h;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
