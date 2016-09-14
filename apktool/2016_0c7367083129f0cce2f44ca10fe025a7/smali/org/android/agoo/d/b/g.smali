.class public final Lorg/android/agoo/d/b/g;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lorg/android/agoo/d/b/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 102
    new-instance v0, Lorg/android/agoo/d/b/j;

    invoke-direct {v0, p1}, Lorg/android/agoo/d/b/j;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/j;)Lorg/android/agoo/d/b/j;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 106
    invoke-static {p2}, Lorg/android/agoo/d/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-static {p3}, Lorg/android/agoo/d/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/d/b/g;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lorg/android/agoo/d/b/d;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-object p0
.end method

.method public final a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;
    .locals 1

    .prologue
    .line 169
    invoke-static {p1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/i;

    .line 170
    invoke-static {}, Lorg/android/agoo/d/b/d;->h()Lorg/android/agoo/d/b/j;

    move-result-object v0

    .line 1082
    iput-object p1, v0, Lorg/android/agoo/d/b/j;->k:Lorg/android/agoo/d/b/i;

    .line 171
    return-object p0
.end method
