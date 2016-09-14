.class public final Lorg/android/agoo/impl/MtopService;
.super Ljava/lang/Object;
.source "MtopService.java"

# interfaces
.implements Lorg/android/agoo/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getV3(Landroid/content/Context;Lorg/android/agoo/b/h;)Lorg/android/agoo/b/j;
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 87
    :try_start_0
    new-instance v1, Lorg/android/agoo/d/c/d;

    invoke-direct {v1}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 13067
    iget-object v2, p2, Lorg/android/agoo/b/h;->a:Ljava/lang/String;

    .line 13112
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 14075
    iget-object v2, p2, Lorg/android/agoo/b/h;->b:Ljava/lang/String;

    .line 14120
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lorg/android/agoo/b/c;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 15066
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 15083
    iget-object v2, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 92
    invoke-static {v2}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16083
    iget-object v2, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 16128
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 16136
    :cond_0
    invoke-static {p1}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 16148
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->f:Ljava/lang/String;

    .line 16166
    invoke-static {p1}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 17156
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->j:Ljava/lang/String;

    .line 18099
    iget-object v2, p2, Lorg/android/agoo/b/h;->d:Ljava/util/Map;

    .line 97
    invoke-virtual {v1, v2}, Lorg/android/agoo/d/c/d;->b(Ljava/util/Map;)V

    .line 19051
    iget-object v2, p2, Lorg/android/agoo/b/h;->e:Ljava/util/Map;

    .line 98
    invoke-virtual {v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/util/Map;)V

    .line 99
    new-instance v2, Lorg/android/agoo/d/c/h;

    invoke-direct {v2}, Lorg/android/agoo/d/c/h;-><init>()V

    .line 19522
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v2, v3}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 101
    invoke-interface {v2, p1, v1}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Lorg/android/agoo/b/j;

    invoke-direct {v0}, Lorg/android/agoo/b/j;-><init>()V

    .line 20031
    iget-boolean v2, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 21021
    iput-boolean v2, v0, Lorg/android/agoo/b/j;->a:Z

    .line 21046
    iget-object v2, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 22035
    iput-object v2, v0, Lorg/android/agoo/b/j;->b:Ljava/lang/String;

    .line 22061
    iget-object v2, v1, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    .line 23049
    iput-object v2, v0, Lorg/android/agoo/b/j;->c:Ljava/lang/String;

    .line 23076
    iget-object v1, v1, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 24063
    iput-object v1, v0, Lorg/android/agoo/b/j;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 111
    new-instance v0, Lorg/android/agoo/b/j;

    invoke-direct {v0}, Lorg/android/agoo/b/j;-><init>()V

    .line 25021
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/android/agoo/b/j;->a:Z

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 25049
    iput-object v1, v0, Lorg/android/agoo/b/j;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final sendMtop(Landroid/content/Context;Lorg/android/agoo/b/h;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    :try_start_0
    new-instance v0, Lorg/android/agoo/d/c/d;

    invoke-direct {v0}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 7067
    iget-object v1, p2, Lorg/android/agoo/b/h;->a:Ljava/lang/String;

    .line 7112
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 8075
    iget-object v1, p2, Lorg/android/agoo/b/h;->b:Ljava/lang/String;

    .line 8120
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lorg/android/agoo/b/c;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 9066
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 9083
    iget-object v1, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10083
    iget-object v1, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 10128
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 11099
    :cond_0
    iget-object v1, p2, Lorg/android/agoo/b/h;->d:Ljava/util/Map;

    .line 62
    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c/d;->b(Ljava/util/Map;)V

    .line 12051
    iget-object v1, p2, Lorg/android/agoo/b/h;->e:Ljava/util/Map;

    .line 63
    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/util/Map;)V

    .line 64
    new-instance v1, Lorg/android/agoo/d/c/c;

    invoke-direct {v1}, Lorg/android/agoo/d/c/c;-><init>()V

    .line 12136
    invoke-static {p1}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->a(Ljava/lang/String;)V

    .line 12166
    invoke-static {p1}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->b(Ljava/lang/String;)V

    .line 12522
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->c(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lorg/android/agoo/impl/MtopService$2;

    invoke-direct {v2, p0}, Lorg/android/agoo/impl/MtopService$2;-><init>(Lorg/android/agoo/impl/MtopService;)V

    invoke-interface {v1, p1, v0, v2}, Lorg/android/agoo/d/c/a;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;Lorg/android/agoo/d/c/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final sendMtop(Landroid/content/Context;Lorg/android/agoo/b/h;Lorg/android/agoo/b/i;)V
    .locals 3

    .prologue
    .line 19
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 20
    :try_start_0
    new-instance v0, Lorg/android/agoo/d/c/d;

    invoke-direct {v0}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 1067
    iget-object v1, p2, Lorg/android/agoo/b/h;->a:Ljava/lang/String;

    .line 1112
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 2075
    iget-object v1, p2, Lorg/android/agoo/b/h;->b:Ljava/lang/String;

    .line 2120
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lorg/android/agoo/b/c;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3066
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 3083
    iget-object v1, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4083
    iget-object v1, p2, Lorg/android/agoo/b/h;->c:Ljava/lang/String;

    .line 4128
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 5099
    :cond_0
    iget-object v1, p2, Lorg/android/agoo/b/h;->d:Ljava/util/Map;

    .line 29
    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c/d;->b(Ljava/util/Map;)V

    .line 6051
    iget-object v1, p2, Lorg/android/agoo/b/h;->e:Ljava/util/Map;

    .line 30
    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/util/Map;)V

    .line 31
    new-instance v1, Lorg/android/agoo/d/c/c;

    invoke-direct {v1}, Lorg/android/agoo/d/c/c;-><init>()V

    .line 6136
    invoke-static {p1}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->a(Ljava/lang/String;)V

    .line 6166
    invoke-static {p1}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->b(Ljava/lang/String;)V

    .line 6522
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/a;->c(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lorg/android/agoo/impl/MtopService$1;

    invoke-direct {v2, p0, p3}, Lorg/android/agoo/impl/MtopService$1;-><init>(Lorg/android/agoo/impl/MtopService;Lorg/android/agoo/b/i;)V

    invoke-interface {v1, p1, v0, v2}, Lorg/android/agoo/d/c/a;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;Lorg/android/agoo/d/c/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
