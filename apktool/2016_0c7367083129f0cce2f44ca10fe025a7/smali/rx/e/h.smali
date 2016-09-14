.class public Lrx/e/h;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final a:Lrx/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lrx/e/h;

    invoke-direct {v0}, Lrx/e/h;-><init>()V

    sput-object v0, Lrx/e/h;->a:Lrx/e/h;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static a(Lrx/b/a;)Lrx/b/a;
    .locals 0

    .prologue
    .line 152
    return-object p0
.end method

.method public static a()Lrx/m;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lrx/c/d/k;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/c/d/k;-><init>(Ljava/lang/String;)V

    .line 1063
    new-instance v1, Lrx/c/c/h;

    invoke-direct {v1, v0}, Lrx/c/c/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 51
    return-object v1
.end method

.method public static b()Lrx/m;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lrx/c/d/k;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/c/d/k;-><init>(Ljava/lang/String;)V

    .line 1084
    new-instance v1, Lrx/c/c/a;

    invoke-direct {v1, v0}, Lrx/c/c/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 72
    return-object v1
.end method

.method public static c()Lrx/m;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lrx/c/d/k;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/c/d/k;-><init>(Ljava/lang/String;)V

    .line 1105
    new-instance v1, Lrx/c/c/r;

    invoke-direct {v1, v0}, Lrx/c/c/r;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 93
    return-object v1
.end method

.method public static d()Lrx/m;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Lrx/m;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Lrx/m;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g()Lrx/e/h;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lrx/e/h;->a:Lrx/e/h;

    return-object v0
.end method
