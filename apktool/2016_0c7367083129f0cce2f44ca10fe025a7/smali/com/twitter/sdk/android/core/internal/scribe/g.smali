.class public Lcom/twitter/sdk/android/core/internal/scribe/g;
.super Ljava/lang/Object;
.source "ScribeEvent.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/scribe/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_namespace"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format_version"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_category_"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/c;J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    .line 43
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    .line 44
    const-string v0, "2"

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 60
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

    .line 62
    :cond_3
    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/g;

    .line 64
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 66
    goto :goto_0

    .line 64
    :cond_5
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 68
    :cond_6
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 70
    goto :goto_0

    .line 68
    :cond_8
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    if-nez v2, :cond_7

    .line 72
    :cond_9
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 74
    goto :goto_0

    .line 72
    :cond_b
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 76
    :cond_c
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 77
    goto :goto_0

    .line 76
    :cond_d
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c;->hashCode()I

    move-result v0

    .line 86
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 87
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 89
    return v0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0

    :cond_2
    move v0, v1

    .line 86
    goto :goto_1

    :cond_3
    move v0, v1

    .line 87
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_namespace="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->a:Lcom/twitter/sdk/android/core/internal/scribe/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _category_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
