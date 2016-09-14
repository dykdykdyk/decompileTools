.class public final Lorg/android/agoo/d/c/h;
.super Lorg/android/agoo/d/a/f;
.source "MtopSyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/d/c/b;


# instance fields
.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/android/agoo/d/a/f;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;Lorg/android/agoo/d/a/e;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lorg/android/agoo/d/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/c/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/d/c/h;->d:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lorg/android/agoo/d/c/e;->a(Lorg/android/agoo/d/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lorg/android/agoo/d/c/e;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/a/e;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/android/agoo/d/c/h;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/android/agoo/d/c/h;->b(Ljava/lang/String;Lorg/android/agoo/d/a/e;)Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lorg/android/agoo/d/c/h;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lorg/android/agoo/d/c/h;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/d/a/e;)Lorg/android/agoo/d/a/g;

    move-result-object v1

    .line 61
    iget-object v0, v1, Lorg/android/agoo/d/a/g;->c:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Lorg/android/agoo/d/c/i;

    invoke-direct {v0}, Lorg/android/agoo/d/c/i;-><init>()V

    .line 1039
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 65
    const-string v1, "request result is null"

    .line 1069
    iput-object v1, v0, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {v0}, Lorg/android/agoo/d/c/g;->a(Ljava/lang/String;)Lorg/android/agoo/d/c/i;

    move-result-object v0

    .line 69
    iget-object v1, v1, Lorg/android/agoo/d/a/g;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c/i;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 71
    new-instance v0, Lorg/android/agoo/d/c/i;

    invoke-direct {v0}, Lorg/android/agoo/d/c/i;-><init>()V

    .line 2039
    iput-boolean v3, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2069
    iput-object v1, v0, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/android/agoo/d/c/h;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public final b(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Ljava/util/Map;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/c/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/agoo/d/c/h;->d:Ljava/lang/String;

    invoke-static {p2, v0, v3}, Lorg/android/agoo/d/c/e;->a(Lorg/android/agoo/d/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1, p2}, Lorg/android/agoo/d/c/e;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/a/e;

    move-result-object v3

    .line 89
    iget-object v0, p0, Lorg/android/agoo/d/c/h;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/android/agoo/d/c/h;->b(Ljava/lang/String;Lorg/android/agoo/d/a/e;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :try_start_1
    iget-object v1, p0, Lorg/android/agoo/d/c/h;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lorg/android/agoo/d/c/h;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/d/a/e;)Lorg/android/agoo/d/a/g;

    move-result-object v3

    .line 91
    iget-object v1, v3, Lorg/android/agoo/d/a/g;->c:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    new-instance v1, Lorg/android/agoo/d/c/i;

    invoke-direct {v1}, Lorg/android/agoo/d/c/i;-><init>()V

    .line 3039
    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 95
    const-string v3, "request result is null"

    .line 3069
    iput-object v3, v1, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    .line 96
    const-string v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "requestUrl"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 109
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {v1}, Lorg/android/agoo/d/c/g;->a(Ljava/lang/String;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 101
    iget-object v3, v3, Lorg/android/agoo/d/a/g;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lorg/android/agoo/d/c/i;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    const-string v3, "result"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "requestUrl"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 109
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    .line 103
    :goto_2
    new-instance v1, Lorg/android/agoo/d/c/i;

    invoke-direct {v1}, Lorg/android/agoo/d/c/i;-><init>()V

    .line 4039
    iput-boolean v5, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 105
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 4069
    iput-object v3, v1, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    move-object v3, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/android/agoo/d/c/h;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/android/agoo/d/c/h;->e:Ljava/lang/String;

    .line 38
    return-void
.end method
