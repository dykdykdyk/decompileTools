.class public abstract Lcom/google/zxing/b/a/q;
.super Ljava/lang/Object;
.source "ParsedResult.java"


# instance fields
.field private final a:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/zxing/b/a/q;->a:I

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 50
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 62
    invoke-static {v2, p1}, Lcom/google/zxing/b/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/b/a/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
