.class public final Lorg/android/agoo/d/c/c;
.super Lorg/android/agoo/d/a/a;
.source "MtopAsyncClientV3.java"

# interfaces
.implements Lorg/android/agoo/d/c/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/android/agoo/d/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/android/agoo/d/c/d;Lorg/android/agoo/d/c/f;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/c/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/android/agoo/d/c/c;->d:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lorg/android/agoo/d/c/e;->a(Lorg/android/agoo/d/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2}, Lorg/android/agoo/d/c/e;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/a/e;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/android/agoo/d/c/c;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/android/agoo/d/c/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/d/a/e;Lorg/android/agoo/d/a/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "MtopAsyncClientV3"

    const-string v2, "getV3"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p3, v0, v3, v3}, Lorg/android/agoo/d/c/f;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/android/agoo/d/c/c;->c:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lorg/android/agoo/d/c/c;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/android/agoo/d/c/c;->e:Ljava/lang/String;

    .line 52
    return-void
.end method
