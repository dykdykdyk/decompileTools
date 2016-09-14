.class public final Lcom/google/zxing/b/a/ac;
.super Lcom/google/zxing/b/a/q;
.source "URIParsedResult.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ":/*([^/@]+)@[^/]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/ac;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    sget v0, Lcom/google/zxing/b/a/r;->d:I

    invoke-direct {p0, v0}, Lcom/google/zxing/b/a/q;-><init>(I)V

    .line 1070
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1071
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1072
    if-ltz v0, :cond_1

    .line 1081
    add-int/lit8 v2, v0, 0x1

    .line 1082
    const/16 v0, 0x2f

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1083
    if-gez v0, :cond_0

    .line 1084
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1086
    :cond_0
    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lcom/google/zxing/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 1072
    if-eqz v0, :cond_2

    .line 1075
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/google/zxing/b/a/ac;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/google/zxing/b/a/ac;->c:Ljava/lang/String;

    .line 35
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    iget-object v1, p0, Lcom/google/zxing/b/a/ac;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    iget-object v1, p0, Lcom/google/zxing/b/a/ac;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
