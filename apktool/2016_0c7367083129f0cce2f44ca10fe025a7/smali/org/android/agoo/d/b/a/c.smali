.class final Lorg/android/agoo/d/b/a/c;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lorg/android/agoo/d/b/a/b;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/a/b;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/android/agoo/d/b/a/c;->c:Lorg/android/agoo/d/b/a/b;

    iput-object p2, p0, Lorg/android/agoo/d/b/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/android/agoo/d/b/a/c;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/a/c;->c:Lorg/android/agoo/d/b/a/b;

    .line 1083
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/a/b;->a(Z)V

    .line 1084
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1085
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, v0, Lorg/android/agoo/d/b/a/b;->h:I

    .line 141
    iget-object v0, p0, Lorg/android/agoo/d/b/a/c;->c:Lorg/android/agoo/d/b/a/b;

    iget-object v1, p0, Lorg/android/agoo/d/b/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/android/agoo/d/b/a/c;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/b/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
