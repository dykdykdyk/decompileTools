.class public final Lcom/twitter/sdk/android/core/internal/scribe/c;
.super Ljava/lang/Object;
.source "EventNamespace.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "section"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "component"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "element"
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 52
    :cond_3
    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/c;

    .line 54
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 55
    :cond_6
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 56
    :cond_9
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 57
    goto :goto_0

    .line 56
    :cond_b
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 59
    :cond_c
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    .line 60
    goto :goto_0

    .line 59
    :cond_e
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 62
    :cond_f
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 63
    :cond_12
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 64
    goto/16 :goto_0

    .line 63
    :cond_13
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 78
    return v0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_1

    :cond_3
    move v0, v1

    .line 74
    goto :goto_2

    :cond_4
    move v0, v1

    .line 75
    goto :goto_3

    :cond_5
    move v0, v1

    .line 76
    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", section="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", element="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
