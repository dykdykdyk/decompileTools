.class public final Lcom/google/zxing/b/a/ah;
.super Lcom/google/zxing/b/a/q;
.source "VINParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:C

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/google/zxing/b/a/r;->l:I

    invoke-direct {p0, v0}, Lcom/google/zxing/b/a/q;-><init>(I)V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/b/a/ah;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/zxing/b/a/ah;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/zxing/b/a/ah;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/zxing/b/a/ah;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/google/zxing/b/a/ah;->e:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/google/zxing/b/a/ah;->f:Ljava/lang/String;

    .line 49
    iput p7, p0, Lcom/google/zxing/b/a/ah;->g:I

    .line 50
    iput-char p8, p0, Lcom/google/zxing/b/a/ah;->h:C

    .line 51
    iput-object p9, p0, Lcom/google/zxing/b/a/ah;->i:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x20

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    iget v1, p0, Lcom/google/zxing/b/a/ah;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-char v1, p0, Lcom/google/zxing/b/a/ah;->h:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/google/zxing/b/a/ah;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
