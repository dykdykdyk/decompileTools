.class public final Lorg/android/agoo/f/b;
.super Ljava/lang/Object;
.source "UTFactroy.java"


# static fields
.field private static final a:Lorg/android/agoo/f/b;


# instance fields
.field private volatile b:Lorg/android/agoo/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/android/agoo/f/b;

    invoke-direct {v0}, Lorg/android/agoo/f/b;-><init>()V

    sput-object v0, Lorg/android/agoo/f/b;->a:Lorg/android/agoo/f/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    .line 9
    return-void
.end method

.method public static a()Lorg/android/agoo/f/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/android/agoo/f/b;->a:Lorg/android/agoo/f/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lorg/android/agoo/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    if-nez v0, :cond_0

    .line 22
    invoke-static {p1}, Lorg/android/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/f/a;

    iput-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    .line 25
    invoke-static {p1}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p1}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {p1}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    throw v0
.end method

.method public final varargs b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/f/b;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lorg/android/agoo/f/b;->a(Landroid/content/Context;)Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
